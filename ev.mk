# Specify phone tech before including full_phone
$(call inherit-product, vendor/ev/config/gsm.mk)

PRODUCT_RELEASE_NAME := Explorer

# Inherit some common Evervolv stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
DEVICE_PACKAGE_OVERLAYS += device/htc/pico/overlay

# Inherit device configuration.
$(call inherit-product, device/htc/pico/pico.mk)

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += vendor/ev/overlay/hot_reboot

# Extra Packages
PRODUCT_PACKAGES += \
    DSPManager \
    FileManager \
    Camera

PRODUCT_NAME := ev_pico
PRODUCT_DEVICE := pico
PRODUCT_BRAND := htc_europe
PRODUCT_MODEL := HTC Explorer A310e
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=pico BUILD_ID=IMM76L BUILD_FINGERPRINT=htc_asia_india/htc_pico/pico:2.3.5/GRJ90/171430.1:user/release-keys PRIVATE_BUILD_DESC="1.12.720.1 CL171430 release-keys"

