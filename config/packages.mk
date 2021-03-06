# Our Blaze apps
PRODUCT_PACKAGES += \
    QPGallery \
    ViaBrowser \
    LatinIME \
    RetroMusicPlayer \

# Themes
PRODUCT_PACKAGES += \
    BlazeThemesStub \
    ThemePicker

ifeq ($(BLAZE_BUILD_TYPE),OFFICIAL)
    PRODUCT_PACKAGES += \
        BlazeOTA
endif

# Launcher Selection just in case
# Please, prepare for reports
ifeq ($(BLAZE_SITDOWN),true)
    PRODUCT_PACKAGES += \
        Lawnchair

PRODUCT_COPY_FILES += \
    vendor/blaze/prebuilt/lawnchair/etc/permissions/privapp-permissions-lawnchair.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-lawnchair.xml \
    vendor/blaze/prebuilt/lawnchair/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml

    DEVICE_PACKAGE_OVERLAYS += \
        vendor/blaze/overlay/lawnchair
else
    PRODUCT_PACKAGES += \
        Launcher3QuickStep
endif
