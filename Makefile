include $(THEOS)/makefiles/common.mk

SUBPROJECTS += goodwifihook
SUBPROJECTS += goodwifisettings

THEOS_PACKAGE_BASE_VERSION = 0.0~beta6
_THEOS_INTERNAL_PACKAGE_VERSION = 0.0~beta6

include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "killall -9 SpringBoard"