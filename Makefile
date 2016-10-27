THEOS_DEVICE_IP = 192.168.3.240
ARCHS = armv7 arm64
TARGET = iphone:latest:8.0

include theos/makefiles/common.mk

TWEAK_NAME = iosMitmDetect
iosMitmDetect_FILES = hook/NSUIWebViewHook.xm hook/NSURLConnectionHook.xm hook/NSURLSessionHook.xm hook/SocketClass.m hook/SSLWriteHook.xm hook/AppDelegateHook.xm 

iosMitmDetect_FRAMEWORKS = UIKit Security
include $(THEOS_MAKE_PATH)/tweak.mk


