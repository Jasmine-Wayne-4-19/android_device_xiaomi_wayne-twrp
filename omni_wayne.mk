#
# Copyright 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := wayne

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=sdm660 \
    sys.usb.controller=a800000.dwc3 \
    sys.usb.rndis.func.name=rndis_bam \
    sys.usb.rmnet.func.name=rmnet_bam

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := wayne
PRODUCT_NAME := omni_wayne
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 6X
PRODUCT_MANUFACTURER := Xiaomi

TARGET_VENDOR_PRODUCT_NAME := wayne
TARGET_VENDOR_DEVICE_NAME := wayne
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=wayne PRODUCT_NAME=wayne
