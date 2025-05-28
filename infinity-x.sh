rm -rf device/motorola
rm -rf vendor/motorola
rm -rf kernel/motorola
rm -rf hardware/motorola
rm -rf system/qcom

repo init --no-repo-verify --git-lfs -u https://github.com/ProjectInfinity-X/manifest -b 15 -g default,-mips,-darwin,-notdefault

git clone -b infinity-x https://github.com/blaze424/local_manifests .repo/local_manifests

/opt/crave/resync.sh

source build/envsetup.sh

lunch infinity_dubai-userdebug

mka bacon
