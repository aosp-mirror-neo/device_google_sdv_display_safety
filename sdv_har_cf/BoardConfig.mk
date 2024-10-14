# Copyright 2024 Google LLC

# Overrides the init.rc script in the SDV Media BoardConfig.

LOCAL_ANDROIDBOOT_INIT_RC ?= /system/etc/init/hw/init.sdv_har.rc

include device/google/sdv/sdv_media_cf/BoardConfig.mk

# The sdv media har system consumes more space, this line increases the reserved space for dynamic
# partition metadata by 256MiB
BOARD_GOOGLE_SYSTEM_DYNAMIC_PARTITIONS_SIZE := \
    $(shell expr $(BOARD_GOOGLE_SYSTEM_DYNAMIC_PARTITIONS_SIZE) + 268435456)

# The BOARD_SUPER_PARTITION_SIZE must be increased two times as much to account for the A/B slots
# for updates.
BOARD_SUPER_PARTITION_SIZE := $(shell expr $(BOARD_SUPER_PARTITION_SIZE) + 536870912)
