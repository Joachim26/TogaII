LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := Fruit
LOCAL_C_INCLUDES := 
LOCAL_SRC_FILES := $(wildcard ../src/*.cpp)
LOCAL_CFLAGS += -DNDEBUG -O3 -flto -fexperimental-new-pass-manager -Wfatal-errors -Wall -Wextra -Wshadow
LOCAL_CPPFLAGS += 
LOCAL_CPP_FEATURES := 

ifeq ($(TARGET_ARCH_ABI), arm64-v8a)
  LOCAL_CFLAGS += 
else
  ifeq ($(TARGET_ARCH_ABI), armeabi-v7a)
    LOCAL_CFLAGS += 
  else
    ifeq ($(TARGET_ARCH_ABI), x86)
      LOCAL_CFLAGS += -mssse3 -mfpmath=sse -m32
    else
      ifeq ($(TARGET_ARCH_ABI), x86_64)
        LOCAL_CFLAGS += -msse4.2 -mpopcnt -m64
      endif
    endif
  endif
endif

LOCAL_LDFLAGS += 
include $(BUILD_EXECUTABLE)