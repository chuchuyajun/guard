# Copyright (C) 2009 The Android Open Source Project
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
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := imagebase
LOCAL_SRC_FILES := image.c
LOCAL_C_INCLUDES := $(LOCAL_PATH)	   
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)	
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := image
LOCAL_SRC_FILES := image_adapter.cpp
   
LOCAL_C_INCLUDES := $(LOCAL_PATH)	   
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

LOCAL_LDLIBS   := -llog -ljnigraphics 

LOCAL_STATIC_LIBRARIES := imagebase loger

LOCAL_EXPORT_LDLIBS := $(LOCAL_LDLIBS) 

include $(BUILD_SHARED_LIBRARY)