#
# Copyright (C) 2015-2016 The CyanogenMod Project
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

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device_f7.mk)

# Device display
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Device identifier
PRODUCT_BRAND := F7
PRODUCT_DEVICE := x6028_dg_a49_5u
PRODUCT_MANUFACTURER := F7
PRODUCT_MODEL := F7
PRODUCT_NAME := lineage_x6028_dg_a49_5u
PRODUCT_RELEASE_NAME := F7

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
