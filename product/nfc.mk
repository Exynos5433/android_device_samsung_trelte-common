LOCAL_PATH := device/samsung/trelte-common

# Configs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/nfc/nfcee_access.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/nfcee_access.xml \
	$(LOCAL_PATH)/configs/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf \
	$(LOCAL_PATH)/configs/nfc/libnfc-sec.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-sec.conf \
	$(LOCAL_PATH)/configs/nfc/libnfc-sec-hal.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-sec-hal.conf

## Packages
PRODUCT_PACKAGES += \
	libnfc-nci \
	libnfc_nci_jni \
	NfcNci \
	Tag \
	com.android.nfc_extras \
	android.hardware.nfc@1.0-impl

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.nfc.hce.xml \
	frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.nfc.xml \
	frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.android.nfc_extras.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.nfc.fw_dl_on_boot=false \
	ro.nfc.port="I2C"
