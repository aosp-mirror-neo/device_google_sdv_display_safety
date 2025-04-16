#
# Copyright (C) 2025 The Android Open Source Project
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

TARGET_BOARD_INFO_FILE := device/google/sdv_display_safety/auto_ds/android-info.txt

# Include Display Safety packages and configs
$(call inherit-product, vendor/google/display_safety/service/ivi/ds_common.mk)

# Load base AOSP target.
$(call inherit-product, device/google/cuttlefish/vsoc_x86_64_only/auto/aosp_cf.mk)

# Load IVI packages and configs
LOCAL_VHAL_PRODUCT_PACKAGE := android.hardware.automotive.vehicle@V1-sdv-emulator-service
include device/google/sdv/sdv_ivi_cf/sdv_ivi_cf.mk

PRODUCT_PACKAGES += \
    vvmconfig.example

# Include the`launch_cvd --config auto_ds` option.
$(call soong_config_append,cvd,launch_configs,cvd_config_auto_ds.json)

PRODUCT_NAME := aosp_cf_x86_64_auto_ds
PRODUCT_DEVICE := sdv_ivi_cf
PRODUCT_BRAND := Google
PRODUCT_MODEL := Cuttlefish x86_64 auto with Display Safety
