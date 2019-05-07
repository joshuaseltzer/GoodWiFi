ARCHS=armv7 arm64 arm64e
TARGET = iphone:11.2:8.0
include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = GoodWiFiSettings
GoodWiFiSettings_FILES = GoodWiFiSettingsController.mm
GoodWiFiSettings_INSTALL_PATH = /Library/PreferenceBundles
GoodWiFiSettings_FRAMEWORKS = UIKit QuartzCore CoreGraphics MessageUI Social Twitter
GoodWiFiSettings_PRIVATE_FRAMEWORKS = Preferences
GoodWiFiSettings_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp GoodWiFiSettings.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/GoodWiFiSettings.plist$(ECHO_END)
	$(ECHO_NOTHING)find $(THEOS_STAGING_DIR) -name .DS_Store | xargs rm -rf$(ECHO_END)
