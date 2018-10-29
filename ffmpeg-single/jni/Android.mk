LOCAL_PATH := $(call my-dir)

# FFmpeg库
include $(CLEAR_VARS)
LOCAL_MODULE := ffmpeg
LOCAL_SRC_FILES := libffmpeg.so
include $(PREBUILT_SHARED_LIBRARY)

# hello-ffmpeg
include $(CLEAR_VARS)
LOCAL_MODULE := hello-ffmpeg
LOCAL_SRC_FILES := hello_ffmpeg.c
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_LDLIBS := -llog -lz
LOCAL_SHARED_LIBRARIES := ffmpeg
include $(BUILD_SHARED_LIBRARY)

# now-streamer
include $(CLEAR_VARS)
LOCAL_MODULE := now-streamer
LOCAL_SRC_FILES := now_streamer.c
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_LDLIBS := -llog -lz
LOCAL_SHARED_LIBRARIES := ffmpeg
include $(BUILD_SHARED_LIBRARY)
