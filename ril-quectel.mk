PRODUCT_HAS_RIL := true

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    vendor/quectel/ec2x/libquectel-ril/ql-ril.conf:$(TARGET_COPY_OUT_VENDOR)/etc/ql-ril.conf

PRODUCT_PACKAGES += \
    chat \
    ip-down \
    ip-up \
    libreference-ril-quectel \
    rild-quectel \
    QAndroidLog \
    QFirehose
