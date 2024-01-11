# Copyright 2024 Google LLC

# Overrides the init.rc script in the SDV Media BoardConfig.

LOCAL_ANDROIDBOOT_INIT_RC ?= /system/etc/init/hw/init.sdv_har.rc

include device/google/sdv/sdv_media_cf/BoardConfig.mk
