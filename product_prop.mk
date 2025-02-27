# Adb and rescue party
ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
# /vendor/default.prop is force-setting ro.adb.secure=1
# Get rid of that by overriding it in /product on eng builds
# Disable Rescue Party on userdebug & eng build
PRODUCT_PRODUCT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    persist.sys.disable_rescue=true
endif

# Media
PRODUCT_PRODUCT_PROPERTIES += \
    debug.stagefright.omx_default_rank.sw-audio=16 \
    persist.vendor.audio.fluence.voicerec=true

# Priv-app permission
PRODUCT_PRODUCT_PROPERTIES += \
    ro.control_privapp_permissions=log

# Override Display Density
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.lcd_density=480

# Power-saving props
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.use_data_netmgrd=true \
    ro.vold.umsdirtyratio=20 \
    ro.ril.disable.power.collapse=0 \
    power.saving.mode=1 \
    pm.sleep_mode=1
