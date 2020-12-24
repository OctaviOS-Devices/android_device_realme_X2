#
# Copyright (C) 2020 Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/realme/X2/device.mk)


# Some octavi specific flags
OCTAVI_BUILD_TYPE := Official
OCTAVI_DEVICE_MAINTAINER := CannedShroud
$(call inherit-product, vendor/octavi/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := octavi_X2
PRODUCT_DEVICE := X2
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme X2
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-oppo
