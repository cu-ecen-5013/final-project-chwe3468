
##############################################################
#
# AESD-CAM
#
##############################################################

#TODO: Fill up the contents below in order to reference my camera app
AESD_CAM_VERSION = '3af3be9f6ec54e22f17bc4b25830f3be214fd512'
AESD_CAM_SITE = 'git@github.com:chwe3468/cu-ecen-5013-final-project-shared.git'
AESD_CAM_SITE_METHOD = git


define AESD_CAM_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/Chutao/aesd-cam/ all
endef

#TODO: Add required executables or scripts below
define AESD_CAM_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/Chutao/aesd-cam/capture $(TARGET_DIR)/home
endef


$(eval $(generic-package))
