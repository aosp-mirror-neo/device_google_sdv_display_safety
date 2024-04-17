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

# This contains the setup required to run Harry on SDV media.
# In this configuration Harry is the only app drawing on the display.

# Check if the home dir was defined.
ifeq ($(DISPLAY_SAFETY_HOME),)
$(error DISPLAY_SAFETY_HOME must be defined.)
endif #DISPLAY_SAFETY_HOME

BOARD_VENDOR_SEPOLICY_DIRS += \
    $(DISPLAY_SAFETY_HOME)/sepolicy \

PRODUCT_PROPERTY_OVERRIDES += \
    vendor.harplatform.grpc.started=false

# Add Harry and SDV libraries
PRODUCT_PACKAGES += \
    harry \
    com.google.display_safety.har.init_data_folder.sh \
    fake_vehicledata_publisher_service \
    har_sdv_service \
    null_platform_test \

# Resources
PRODUCT_PACKAGES += \
        harry_res_config \
        harry_res_doc_default \
        harry_res_doc_galaxy \
        harry_res_doc_shiny \
        harry_res_font_inter_black \
        harry_res_font_inter_bold \
        harry_res_font_inter_regular \
        harry_res_font_notosans_black \
        harry_res_font_notosans_bold \
        harry_res_font_notosans_extrabold \
        harry_res_font_notosans_extralight \
        harry_res_font_notosans_light \
        harry_res_font_notosans_medium \
        harry_res_font_notosans_regular \
        harry_res_font_notosans_semibold \
        harry_res_font_notosans_thin \
        harry_res_font_pt_sans_narrow_bold \
        harry_res_font_pt_sans_narrow_regular \
        harry_res_audio_config \
        harry_res_chimes_config \
        harry_res_audio_chime_tick \
        harry_res_audio_chime_tock \
        harry_res_audio_chime_welcome \
        harry_res_audio_chime_welcome_mono \
        harry_res_audio_chime_wilhelm \
        harry_res_audio_chime_wilhelm_mono \
        harry_res_camera_config \
        harry_res_camera_emulation_source \

# The following packages need to be added to the repo from a custom build
# A not-existing package will not cause an error.
PRODUCT_PACKAGES += \
    v4l2-ctl \
    ffmpeg

PRODUCT_COPY_FILES += \
    device/google/sdv_display_safety/sdv_har_core/init.sdv_har.rc:/system/etc/init/hw/init.sdv_har.rc \
