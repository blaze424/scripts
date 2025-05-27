rm -rf device/motorola
rm -rf vendor/motorola
rm -rf kernel/motorola
rm -rf hardware/motorola
rm -rf system/qcom

repo init --no-repo-verify --git-lfs -u https://github.com/ProjectInfinity-X/manifest -b 15 -g default,-mips,-darwin,-notdefault

git clone https://github.com/Infinity-X-Devices/android_device_motorola_dubai.git -b 14-gapps device/motorola/dubai

git clone https://github.com/Infinity-X-Devices/android_device_motorola_sm7325-common.git -b 14 device/motorola/sm7325-common

git clone https://github.com/Infinity-X-Devices/android_kernel_motorola_sm7325.git -b 14 kernel/motorola/sm7325

git clone https://github.com/Infinity-X-Devices/android_vendor_motorola_dubai.git -b 14 vendor/motorola/dubai

git clone https://github.com/Infinity-X-Devices/android_vendor_motorola_sm7325-common.git -b 14 vendor/motorola/sm7325-common

git clone https://github.com/LineageOS/android_hardware_motorola.git -b lineage-22.2 hardware/motorola

git clone https://github.com/LineageOS/android_system_qcom.git -b lineage-22.2 system/qcom


repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

source build/envsetup.sh

lunch infinity_dubai-userdebug

mka bacon

