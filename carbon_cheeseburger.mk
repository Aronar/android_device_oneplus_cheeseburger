#
# Copyright (C) 2017 The LineageOS Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from cheeseburger device
$(call inherit-product, device/oneplus/cheeseburger/device.mk)

# Inherit some common Carbon stuff.
$(call inherit-product, vendor/carbon/config/common.mk)
$(call inherit-product, vendor/carbon/config/gsm.mk)

PRODUCT_NAME := carbon_cheeseburger
PRODUCT_DEVICE := cheeseburger
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := ONEPLUS A5000

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

TARGET_VENDOR_PRODUCT_NAME := OnePlus5
TARGET_VENDOR_DEVICE_NAME := OnePlus5

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=OnePlus5 PRODUCT_NAME=OnePlus5

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus5-user 10 QKQ1.191014.012 2010292059 release-keys"

BUILD_FINGERPRINT := OnePlus/OnePlus5/OnePlus5:10/QKQ1.191014.012/2010292059:user/release-keys

TARGET_VENDOR := oneplus
