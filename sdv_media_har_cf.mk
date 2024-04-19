#
# Copyright (C) 2024 The Android Open Source Project
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

# An SDV Media system with HAR preinstalled.

# This parameter is expected to be set by sdv_harry.mk
DISPLAY_SAFETY_HOME := vendor/google/display_safety/service

# Sets the name of the product.
PRODUCT_NAME := sdv_media_har_cf

# Sets the device, that selects the BoardConfig.mk in sdv_har_cf
PRODUCT_DEVICE := sdv_har_cf

# Set HAR_USE_APEX to false to install Harry without using an APEX
HAR_USE_APEX := true

$(call inherit-product, device/google/sdv/sdv_media_cf/sdv_media_cf.mk)
$(call inherit-product, device/google/sdv_display_safety/sdv_harry_common.mk)
