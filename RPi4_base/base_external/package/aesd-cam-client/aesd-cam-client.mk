
##############################################################
#
# AESD-CAM-CLIENT
#
##############################################################

#TODO: Fill up the contents below in order to reference my camera app
AESD_CAM_CLIENT_VERSION = 'c7436816825771c0bb9605dd2500905db1c4c771'
AESD_CAM_CLIENT_SITE = 'git@github.com:chwe3468/cu-ecen-5013-final-project-shared.git'
AESD_CAM_CLIENT_SITE_METHOD = git
AESD_CAM_CLIENT_LDFLAGS = $(LDFLAGS_FOR_BUILD) -pthread -lrt

define AESD_CAM_CLIENT_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/Chutao/aesd-cam-client/ LDFLAGS="$(AESD_CAM_CLIENT_LDFLAGS)" all
endef

#TODO: Add required executables or scripts below
define AESD_CAM_CLIENT_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/Chutao/aesd-cam-client/aesd_cam_client $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/Chutao/aesd-cam-client/aesd_cam_client $(TARGET_DIR)/home
endef


$(eval $(generic-package))
