/*
   Copyright (c) 2016, The CyanogenMod Project
   Copyright (C) 2019 The LineageOS Project.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.
   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdlib.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>
#include <sys/sysinfo.h>

#include <android-base/properties.h>
#include "vendor_init.h"
#include "property_service.h"
#include "android/log.h"

char const *heapstartsize;
char const *heapgrowthlimit;
char const *heapsize;
char const *heapminfree;
char const *heapmaxfree;

void check_device()
{
    struct sysinfo sys;

    sysinfo(&sys);

    if (sys.totalram > 2048ull * 1024 * 1024) {
        // from - phone-xxhdpi-3072-dalvik-heap.mk
        heapstartsize = "8m";
        heapgrowthlimit = "288m";
        heapsize = "768m";
        heapminfree = "2m";
        heapmaxfree = "8m";
    } else {
        // from - phone-xxhdpi-2048-dalvik-heap.mk
        heapstartsize = "8m";
        heapgrowthlimit = "192m";
        heapsize = "512m";
        heapminfree = "512k";
        heapmaxfree = "8m";
   }
}

void set_zram_size(void)
{
    FILE *f = fopen("/sys/block/zram0/disksize", "wb");
    int MB = 1024 * 1024;
    std::string zram_disksize;
    struct sysinfo si;

    // Check if zram exist
    if (f == NULL) {
        return;
    }

    // Initialize system info
    sysinfo(&si);

    // Set zram disksize (divide RAM size by 3)
    zram_disksize = std::to_string(si.totalram / MB / 3);

    // Write disksize to sysfs
    fprintf(f, "%sM", zram_disksize.c_str());

    // Close opened file
    fclose(f);
}

void property_override(char const prop[], char const value[])
{
    prop_info *pi;

    pi = (prop_info*) __system_property_find(prop);
    if (pi)
        __system_property_update(pi, value, strlen(value));
    else
        __system_property_add(prop, strlen(prop), value, strlen(value));
}

void property_override_dual(char const system_prop[], char const vendor_prop[],
    char const value[])
{
    property_override(system_prop, value);
    property_override(vendor_prop, value);
}

void vendor_load_properties()
{
    check_device();
    set_zram_size();

    property_override("dalvik.vm.heapstartsize", heapstartsize);
    property_override("dalvik.vm.heapgrowthlimit", heapgrowthlimit);
    property_override("dalvik.vm.heapsize", heapsize);
    property_override("dalvik.vm.heaptargetutilization", "0.75");
    property_override("dalvik.vm.heapminfree", heapminfree);
    property_override("dalvik.vm.heapmaxfree", heapmaxfree);

}
