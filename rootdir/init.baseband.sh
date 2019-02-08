#!/vendor/bin/sh

baseband_str=$(strings /vendor/firmware_mnt/image/modem.b12 | grep "MPSS.*_V" | head -1)

if [ ! -z $baseband_str ]; then
    setprop gsm.version.baseband $baseband_str
fi