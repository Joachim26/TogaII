LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := Fruit
LOCAL_C_INCLUDES := 
LOCAL_SRC_FILES := $(wildcard ../src/*.cpp)
LOCAL_CFLAGS += -DNDEBUG -O3 -flto -Wfatal-errors
LOCAL_CPPFLAGS += 
LOCAL_CPP_FEATURES := 
LOCAL_CFLAGS += 
LOCAL_LDFLAGS += 
include $(BUILD_EXECUTABLE)
