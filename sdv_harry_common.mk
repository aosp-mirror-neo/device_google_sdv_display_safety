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

# Main makefile to include in a system with Display Safety with HAR.

# Add common sepolicies
BOARD_VENDOR_SEPOLICY_DIRS += \
    vendor/google/display_safety/service/product/sepolicy \

# Property set by harry once the GRPC server is running.
# This is used as a property trigger to start other services.
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.harplatform.grpc.started=false

$(call inherit-product, vendor/google/display_safety/service/product/harry_apex/product.mk)

# Copy the main init rc.
PRODUCT_COPY_FILES += \
    device/google/sdv_display_safety/sdv_har_core/init.sdv_har.rc:/system/etc/init/hw/init.sdv_har.rc \

# Add common packages included in both APEX and standalone modes.
PRODUCT_PACKAGES += \
    null_platform_test \

# Backup camera dependencies.
# The following packages need to be added to the repo from a custom build
# A not-existing package will not cause an error, but also will not be available.
PRODUCT_PACKAGES += \
    v4l2-ctl \
    ffmpeg

# Additional utility for Audio Mixer Control.
PRODUCT_PACKAGES += \
   tinymix2 \
