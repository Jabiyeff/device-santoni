# ArrowOS
PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/arrow_santoni.mk

COMMON_LUNCH_CHOICES := \
    arrow_santoni-userdebug \
    arrow_santoni-user \
    arrow_santoni-eng

# AEX
PRODUCT_MAKEFILES += \
    $(LOCAL_DIR)/aosp_santoni.mk

COMMON_LUNCH_CHOICES += \
    aosp_santoni-userdebug \
    aosp_santoni-user \
    aosp_santoni-eng
