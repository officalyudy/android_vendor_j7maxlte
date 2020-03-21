# Copyright (C) 2016 The LineageOS Project
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

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),j7maxlte)
ifeq ($(MTKPATH),)

# Proprietary Modules go here

#include $(CLEAR_VARS)
#LOCAL_MODULE := MTKThermalManager
#LOCAL_MODULE_OWNER := Mediatek
#LOCAL_SRC_FILES := proprietary/vendor/app/MTKThermalManager/MTKThermalManager.apk
#LOCAL_MODULE_TAGS := optional
#LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
#LOCAL_MODULE_CLASS := APPS
#LOCAL_CERTIFICATE := platform
#include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libdpframework
LOCAL_MODULE_OWNER := samsung
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MULTILIB := 32
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libdpframework.so
include $(BUILD_PREBUILT)

endif
endif
