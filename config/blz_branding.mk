PRODUCT_BRAND ?= Blaze

# Versioning System
# Blaze version over here.
PRODUCT_VERSION_MAJOR = IsTen
PRODUCT_VERSION_MINOR = niceparse.+_jason_is_dead_+
BLAZE_VERSION_NUMBER := 1.0
BLAZE_SONGCODEURL = https://kutt.it/3nl6wf
BLAZE_EPOCH := $(shell date +%s)
BLAZE_POSTFIX := -$(shell date -d @$(BLAZE_EPOCH) +"%Y%m%d-%H%M%S")

ifndef BLAZE_BUILD_TYPE
    BLAZE_BUILD_TYPE := Unignited
endif

ifdef BLAZE_BUILD_EXTRA
    BLAZE_POSTFIX := -$(BLAZE_BUILD_EXTRA)
    BLAZE_MOD_SHORT := Blaze-AOSP-$(PRODUCT_VERSION_MAJOR)-$(BLAZE_BUILD_TYPE)-$(BLAZE_BUILD)$(BLAZE_POSTFIX)
else
    BLAZE_MOD_SHORT := Blaze-AOSP-$(PRODUCT_VERSION_MAJOR)-$(BLAZE_BUILD_TYPE)-$(BLAZE_BUILD)
endif

BLAZE_VERSION := Blaze-AOSP-$(BLAZE_VERSION_NUMBER)-$(PRODUCT_VERSION_MAJOR)-$(BLAZE_BUILD_TYPE)-$(BLAZE_BUILD)$(BLAZE_POSTFIX)

#PRODUCT_PACKAGES += \
#    bootanimation.zip
#
#ifneq ($(TARGET_USE_SINGLE_BOOTANIMATION),true)
#    PRODUCT_PACKAGES += \
#        bootanimation2.zip \
#        bootanimation3.zip
#endif

# Wallpaper overlay selection for widescreen devices.
ifeq ($(BLAZE_NOTCHED),true)
    DEVICE_PACKAGE_OVERLAYS += \
        vendor/blaze/overlay/wallpaper/widebois
else
    DEVICE_PACKAGE_OVERLAYS += \
        vendor/blaze/overlay/wallpaper/common
endif
