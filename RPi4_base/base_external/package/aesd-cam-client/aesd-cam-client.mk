
##############################################################
#
# AESD-CAM-CLIENT
#
##############################################################

#TODO: Fill up the contents below in order to reference my camera app
AESD_CAM_CLIENT_VERSION = '8c9c917aab5d2094295a6860a668006d9b6d97d5'
AESD_CAM_CLIENT_SITE = 'git@github.com:chwe3468/cu-ecen-5013-final-project-shared.git'
AESD_CAM_CLIENT_SITE_METHOD = git


define AESD_CAM_CLIENT_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/Chutao/aesd-cam-client/ all
endef

#TODO: Add required executables or scripts below
define AESD_CAM_CLIENT_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/Chutao/aesd-cam-client/aesd_cam_client $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/Chutao/aesd-cam-client/aesd_cam_client $(TARGET_DIR)/home
endef


$(eval $(generic-package))
