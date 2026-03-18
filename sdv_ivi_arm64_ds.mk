# Copyright (C) 2026 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# sdv_ivi_arm64_ds adds DriverUI packages and config overlays to sdv_ivi_arm64

# Include Display Safety packages and configs
$(call inherit-product, packages/services/display_safety/service/ivi/ds_common.mk)

# Use sdv_ivi_arm64 image as base
$(call inherit-product, device/google/sdv/sdv_ivi_arm64/sdv_ivi_arm64.mk)

ENABLE_CLUSTER_OS_DOUBLE := true

PRODUCT_NAME := sdv_ivi_arm64_ds
PRODUCT_MODEL := SDV-IVI_arm64 Display Safety
