THEOS_DEVICE_IP = 192.168.1.11

THEOS_PACKAGE_SCHEME = rootless

TARGET := iphone:clang:latest:15.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = nopagedots

noballz_FILES = Tweak.x
noballz_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk


after-install::
	install.exec "sbreload" 
