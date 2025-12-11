# Copyright 2025 Google LLC
#
# sdv_ivi_arm64_ds adds DriverUI packages and config overlays to sdv_ivi_arm64

# Include Display Safety packages and configs
$(call inherit-product, packages/services/display_safety/service/ivi/ds_common.mk)

# Use sdv_ivi_arm64 image as base
$(call inherit-product, vendor/google/sdv/sdv_ivi_arm64/sdv_ivi_arm64.mk)

ENABLE_CLUSTER_OS_DOUBLE := true

PRODUCT_NAME := sdv_ivi_ds_arm64
PRODUCT_MODEL := SDV-IVI_arm64 Display Safety
