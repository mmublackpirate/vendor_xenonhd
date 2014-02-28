# Inherit CM device configuration for p880. 
$(call inherit-product, device/lge/p880/cm.mk)

# Inherit common product files.
$(call inherit-product, vendor/xenonhd/products/common.mk)

# Inherit common build.prop overrides
-include vendor/xenonhd/products/common_versions.mk

# Extra toro overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/xenonhd/overlay/toro

# Extra tuna overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/xenonhd/overlay/tuna

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
	vendor/xenonhd/proprietary/hybrid/hybrid_xhdpi.conf:system/etc/beerbong/properties.conf \
    vendor/xenonhd/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/xenonhd/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/xenonhd/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/xenonhd/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit drm blobs
-include vendor/xenonhd/products/common_drm.mk



