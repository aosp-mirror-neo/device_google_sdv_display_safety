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
