# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit common rice configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Other Stuff rice
RICE_MAINTAINER := ryuKizuha
RICE_CHIPSET := sm6150
WITH_GMS := false
SUSHI_BOOTANIMATION := 1080
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_BUILD_GRAPHENEOS_CAMERA := false
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true


PRODUCT_NAME := lineage_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cheetah-user-13-T1B3.221003.003-9173718-release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:13/T1B3.221003.003/9173718:user/release-keys
