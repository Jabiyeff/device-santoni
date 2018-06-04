# Adreno
PRODUCT_PROPERTY_OVERRIDES += \
ro.qcom.adreno.qgl.ShaderStorageImageExtendedFormats=0

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
af.fast_track_multiplier=1 \
audio.deep_buffer.media=true \
audio.offload.disable=1 \
audio.offload.min.duration.secs=30 \
audio.offload.video=false \
persist.audio.dirac.speaker=true \
persist.audio.fluence.speaker=false \
persist.vendor.audio.fluence.speaker=false \
persist.vendor.audio.fluence.voicecall=true \
persist.vendor.audio.fluence.voicerec=false \
persist.vendor.audio.speaker.prot.enable=false \
persist.vendor.bt.enable.splita2dp=false \
ro.qc.sdk.audio.fluencetype=fluence \
ro.vendor.audio.sdk.fluencetype=fluence \
ro.vendor.audio.sdk.ssr=false \
vendor.audio.dolby.ds2.enabled=true \
vendor.audio.dolby.ds2.hardbypass=true \
vendor.audio.flac.sw.decoder.24bit=true \
vendor.audio.hw.aac.encoder=true \
vendor.audio.offload.buffer.size.kb=64 \
vendor.audio.offload.gapless.enabled=true \
vendor.audio.offload.multiaac.enable=true \
vendor.audio.offload.multiple.enabled=false \
vendor.audio.offload.passthrough=false \
vendor.audio.offload.track.enable=true \
vendor.audio.parser.ip.buffer.size=0 \
vendor.audio.playback.mch.downsample=true \
vendor.audio.pp.asphere.enabled=false \
vendor.audio.safx.pbe.enabled=true \
vendor.audio_hal.period_size=192 \
vendor.audio.tunnel.encode=false \
vendor.audio.use.sw.alac.decoder=true \
vendor.audio.use.sw.ape.decoder=true \
vendor.voice.conc.fallbackpath=deep-buffer \
vendor.voice.playback.conc.disabled=true \
vendor.voice.record.conc.disabled=false \
vendor.voice.voip.conc.disabled=true

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
bluetooth.hfp.client=1 \
ro.qualcomm.bt.hci_transport=smd \
ro.bluetooth.hfp.ver=1.7 \
qcom.bluetooth.soc=smd

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
persist.camera.isp.clock.optmz=0 \
vidc.enc.dcvs.extra-buff-count=2 \
media.camera.ts.monotonic=1 \
persist.vendor.camera.display.umax=1920x1080 \
persist.vendor.camera.display.lmax=1280x720 \
persist.camera.stats.test=5 \
persist.camera.feature.cac=1 \
persist.camera.HAL3.enabled=1 \
persist.camera.imglib.cac3=2 \
camera.lowpower.record.enable=1 \
persist.camera.gyro.disable=0 \
camera.hal1.packagelist=com.skype.raider,com.google.android.talk

# CNE/DPM
PRODUCT_PROPERTY_OVERRIDES += \
persist.cne.feature=1

# Coresight
PRODUCT_PROPERTY_OVERRIDES += \
persist.debug.coresight.config=stm-events

# Display
PRODUCT_PROPERTY_OVERRIDES += \
persist.debug.wfd.enable=1 \
persist.hwc.enable_vds=1 \
debug.sf.hw=0 \
debug.egl.hw=0 \
persist.hwc.mdpcomp.enable=true \
dalvik.vm.heapsize=36m \
debug.mdpcomp.logs=0 \
dev.pm.dyn_samplingrate=1 \
persist.demo.hdmirotationlock=false \
debug.enable.sglscale=1 \
debug.gralloc.enable_fb_ubwc=1 \
ro.opengles.version=196610 \
ro.qualcomm.cabl=0 \
ro.qualcomm.svi=0 \
ro.sf.lcd_density=320 \
sys.display-size=3840x2160

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
drm.service.enabled=true

#Enable B service adj transition by default
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.qti.sys.fw.bservice_enable=true \
ro.vendor.qti.sys.fw.bservice_limit=5 \
ro.vendor.qti.sys.fw.bservice_age=5000

# Fingerprint
PRODUCT_PROPERTY_OVERRIDES += \
persist.qfp=false

# Fm
PRODUCT_PROPERTY_OVERRIDES += \
ro.fm.transmitter=false

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
persist.gps.qc_nlp_in_use=1 \
persist.loc.nlp_name=com.qualcomm.location \
ro.gps.agps_provider=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
media.msm8956hw=0 \
mm.enable.smoothstreaming=true \
mmp.enable.3g2=true \
media.aac_51_output_enabled=true \
media.stagefright.audio.sink=280 \
av.debug.disable.pers.cache=1 \
mm.enable.qcom_parser=1048575 \
vendor.vidc.enc.disable_bframes=1 \
vendor.vidc.dec.downscalar_width=1920 \
vendor.vidc.dec.downscalar_height=1088 \
vendor.vidc.disable.split.mode=1 \
vendor.vidc.enc.disable.pq=true

# Perf \
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.gt_library=libqti-gt.so \
ro.vendor.at_library=libqti-at.so \
ro.vendor.extension_library=libqti-perfd-client.so \
ro.vendor.qti.am.reschedule_service=true \
ro.vendor.qti.core_ctl_min_cpu=2 \
ro.vendor.qti.core_ctl_max_cpu=4 \
ro.sys.fw.dex2oat_thread_count=4 \

# Netmgrd \
PRODUCT_PROPERTY_OVERRIDES += \
ro.use_data_netmgrd=true \
persist.data.netmgrd.qos.enable=true \
persist.data.mode=concurrent

# Nitz
PRODUCT_PROPERTY_OVERRIDES += \
persist.rild.nitz_plmn="" \
persist.rild.nitz_long_ons_0="" \
persist.rild.nitz_long_ons_1="" \
persist.rild.nitz_long_ons_2="" \
persist.rild.nitz_long_ons_3="" \
persist.rild.nitz_short_ons_0="" \
persist.rild.nitz_short_ons_1="" \
persist.rild.nitz_short_ons_2="" \
persist.rild.nitz_short_ons_3=""

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
rild.libargs=-d /dev/smd0 \
ril.subscription.types=NV,RUIM \
DEVICE_PROVISIONED=1 \
ro.telephony.default_network=22,20 \
ro.telephony.call_ring.multiple=false \
persist.radio.multisim.config=dsds \
persist.vendor.radio.sib16_support=1 \
persist.vendor.radio.custom_ecc=1 \
persist.radio.calls.on.ims=0 \
persist.radio.jbims=0 \
persist.radio.csvt.enabled=false \
persist.vendor.radio.rat_on=combine \
persist.radio.mt_sms_ack=20 \
persist.radio.apm_sim_not_pwdn=1 \
persist.dbg.volte_avail_ovr=1 \
persist.dbg.vt_avail_ovr=1 \
persist.dbg.ims_volte_enable=1 \
persist.dbg.volte_avail_ovr=1 \
persist.dbg.vt_avail_ovr=1 \
persist.radio.aosp_usr_pref_sel=true \
persist.radio.apm_sim_not_pwdn=1 \
persist.radio.calls.on.ims=true \
persist.radio.csvt.enabled=false \
persist.radio.custom_ecc=1 \
persist.radio.flexmap_type=nw_mode \
persist.radio.hw_mbn_update=0 \
persist.radio.ims.cmcc=true \
persist.radio.jbims=1 \
persist.radio.mt_sms_ack=20 \
persist.radio.multisim.config=dsds \
persist.radio.oem_socket=true \
persist.radio.schd.cache=3500 \
persist.radio.sw_mbn_update=0 \
persist.radio.videopause.mode=1 \
persist.vendor.qti.telephony.vt_cam_interface=1 \
persist.vendor.radio.csg_info_avlbl=1 \
persist.vendor.radio.custom_ecc=1 \
persist.vendor.radio.force_on_dc=true \
persist.vendor.radio.lte_vrte_ltd=1 \
persist.vendor.radio.manual_nw_rej_ct=1 \
persist.vendor.radio.rat_on=combine \
persist.vendor.radio.sib16_support=1 \
service.qti.ims.enabled=1 \
telephony.lteOnCdmaDevice=1

# RescueParty
PRODUCT_PROPERTY_OVERRIDES += \
persist.sys.disable_rescue=true

#SdcardFs
PRODUCT_PROPERTY_OVERRIDES += \
ro.sys.sdcardfs=true

# Time Services \
PRODUCT_PROPERTY_OVERRIDES += \
persist.timed.enable=true

# Tcp
PRODUCT_PROPERTY_OVERRIDES += \
net.tcp.2g_init_rwnd=10

# Trim properties
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.qti.sys.fw.use_trim_settings=true \
ro.vendor.qti.sys.fw.empty_app_percent=50 \
ro.vendor.qti.sys.fw.trim_empty_percent=100 \
ro.vendor.qti.sys.fw.trim_cache_percent=100 \
ro.vendor.qti.sys.fw.trim_enable_memory=2147483648

# Usb
PRODUCT_PROPERTY_OVERRIDES += \
persist.sys.usb.config.extra=none

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
wifi.interface=wlan0

# Create zram disk
PRODUCT_PROPERTY_OVERRIDES += \
ro.config.zram=true

# Create Swap disk, if below sys-prop enabled & also if device has lower (< 1 GB) RAM
PRODUCT_PROPERTY_OVERRIDES += \
ro.config.swap=true

# ADB
PRODUCT_PROPERTY_OVERRIDES += \
ro.adb.secure=0 \
persist.service.debuggable=1 \
persist.service.adb.enable=1 \
persist.sys.usb.config=mtp,adb
