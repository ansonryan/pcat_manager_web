include $(TOPDIR)/rules.mk

PKG_NAME:=pcat-manager-web
PKG_VERSION:=2.2.1
PKG_RELEASE:=116

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/ansonryan/pcat_manager_web.git
PKG_SOURCE_VERSION:=d36f38cdd46e73f4e62530b62d6c6f7b04db0fb6

PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=

include $(INCLUDE_DIR)/package.mk

define Package/pcat-manager-web
 SECTION:=net
 CATEGORY:=Network
 TITLE:=PCat Manager Web Interface 2.2.1
 DEPENDS:=+python3 +python3-flask +pcat-manager
endef

define Package/pcat-manager-web/description
 Official PCat Manager Web UI 2.2.1-116
endef

define Build/Compile
endef

define Package/pcat-manager-web/install
 $(INSTALL_DIR) $(1)/usr/share/pcat-manager-web
 $(CP) $(PKG_BUILD_DIR)/* $(1)/usr/share/pcat-manager-web/
 $(INSTALL_DIR) $(1)/etc/init.d
 $(INSTALL_BIN) $(PKG_BUILD_DIR)/pcat-manager-web $(1)/etc/init.d/
endef

$(eval $(call BuildPackage,pcat-manager-web))
