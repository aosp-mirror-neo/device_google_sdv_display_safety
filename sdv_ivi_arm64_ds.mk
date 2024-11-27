# Copyright 2024 Google LLC
#
# sdv_ivi_arm64_ds adds DriverUI packages and config overlays to sdv_ivi_arm64

# Include Display Safety packages and configs
$(call inherit-product, vendor/google/display_safety/service/ivi/ds_common.mk)

# Use sdv_ivi_arm64 image as base
$(call inherit-product, vendor/google/sdv/sdv_ivi_arm64/sdv_ivi_arm64.mk)

PRODUCT_NAME := sdv_ivi_arm64_ds
PRODUCT_MODEL := sdv_ivi_arm64 + driverui
