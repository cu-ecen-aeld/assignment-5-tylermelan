
##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = 4b8c86daf7eab86f91de8bd5110a5535ffb429c7
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-tylermelan.git
LDD_SITE_METHOD = git

LDD_MODULE_SUBDIRS = misc-modules
LDD_MODULE_SUBDIRS += scull

define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
