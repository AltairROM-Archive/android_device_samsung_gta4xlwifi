$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# Product API level
#$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_q.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/gta4xlwifi/device.mk)

### BOOTANIMATION
# vendor/altair/config/common_full_phone.mk
TARGET_SCREEN_HEIGHT := 2000
TARGET_SCREEN_WIDTH := 1200
# vendor/altair/config/common.mk
TARGET_BOOTANIMATION_HALF_RES := true

### LINEAGE
$(call inherit-product, vendor/altair/config/common_full_tablet_wifionly.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := altair_gta4xlwifi
PRODUCT_DEVICE := gta4xlwifi
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy Tab S6 Lite
PRODUCT_MANUFACTURER := Samsung
PRODUCT_PDA_MODEL := P610
PRODUCT_PDA_MODEL_VERSION := XXU2BTJ5
PRODUCT_PDA_VERSION := $(PRODUCT_PDA_MODEL)$(PRODUCT_PDA_MODEL_VERSION)
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=gta4xlwifixx \
    PRODUCT_DEVICE=gta4xlwifi \
    PRIVATE_BUILD_DESC="gta4xlwifixx-user 10 QP1A.190711.020 $(PRODUCT_PDA_VERSION) release-keys"

BUILD_FINGERPRINT := samsung/gta4xlwifixx/gta4xlwifi:10/QP1A.190711.020/$(PRODUCT_PDA_VERSION):user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.PDA=$(PRODUCT_PDA_VERSION)

ifneq ($(LINEAGE_DEV_CERTIFICATE),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(LINEAGE_DEV_CERTIFICATE)
endif
