# Copyright 2024 Google LLC
#
# sdv_ivi_arm64_ds adds DriverUI packages and config overlays to sdv_ivi_arm64

# Set cluster display settings
PRODUCT_COPY_FILES += \
    vendor/google/display_safety/service/ivi/files/vendor/etc/display_settings.xml:$(TARGET_COPY_OUT_VENDOR)/etc/display_settings.xml

# TODO: b/380354610
# Set default RRO config
#PRODUCT_COPY_FILES += \
#    vendor/google/display_safety/service/ivi/files/product/overlay/config/config.xml:$(TARGET_COPY_OUT_PRODUCT)/overlay/config/config.xml

# Use sdv_ivi_arm64 image as base
$(call inherit-product, vendor/google/sdv/sdv_ivi_arm64/sdv_ivi_arm64.mk)

# Include DriverUI app and enable it using RROs
$(call inherit-product, packages/services/Car/car_product/driverui/driverui_app_and_rros.mk)

# Include dynamic RROs to set HAR client config for DriverUI
$(call inherit-product, vendor/google/display_safety/service/ivi/driverui_har_client_rros.mk)

# Include SdvCameraPreviewApp, related RROs and configs
$(call inherit-product, vendor/google/display_safety/service/ivi/sdv_camera_preview.mk)

PRODUCT_NAME := sdv_ivi_arm64_ds
PRODUCT_MODEL := sdv_ivi_arm64 + driverui
