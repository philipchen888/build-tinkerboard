SUMMARY = "Basic desktop image for tinker boards"

IMAGE_FEATURES += "splash x11 package-management ssh-server-openssh hwcodecs"

LICENSE = "MIT"

inherit core-image features_check extrausers

# let's make sure we have a good image..
REQUIRED_DISTRO_FEATURES = "pam systemd"

EXTRA_USERS_PARAMS = "usermod -P rock root;"
EXTRA_USERS_PARAMS += "useradd -P rock rock;"

# make sure we boot to desktop
# by default and without x11-base in IMAGE_FEATURES we default to multi-user.target
SYSTEMD_DEFAULT_TARGET = "graphical.target"

CORE_IMAGE_BASE_INSTALL += " \
    kernel-modules \
    packagegroup-tinker-console \
    openbox \
    packagegroup-xfce-extended \
    lxdm \
"
