# name
PRODUCT_RELEASE_NAME := GS4

# device
$(call inherit-product, device/samsung/jfltexx/full_jfltexx.mk)

# gsm
$(call inherit-product, vendor/ukg/config/common_gsm.mk)

# phone
$(call inherit-product, vendor/ukg/config/common_phone.mk)

# products
PRODUCT_DEVICE := jfltexx
PRODUCT_NAME := ukg_jfltexx

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=573038 \
    PRODUCT_NAME=jfltexx \
    TARGET_DEVICE=jflte \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="jfltexx-user 4.2.2 JDQ39 I9505XXUAMDE release-keys" \
    BUILD_FINGERPRINT="samsung/jfltexx/jflte:4.2.2/JDQ39/I9505XXUAMDE:user/release-keys"

# vendorfiles
PRODUCT_COPY_FILES +=  \
    vendor/ukg/prebuilt/hybrid_m7_no_nav.conf:system/etc/beerbong/properties.conf \
    vendor/ukg/prebuilt/bootanimation/bootanimation_1280_768.zip:system/media/bootanimation.zip
