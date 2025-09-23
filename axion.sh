rm -rf .repo/local_manifests/
rm -rf prebuilts/clang/host/linux-x86
rm -rf packages/apps/Updater/

rm -rf hardware/qcom/sm8150
rm -rf hardware/qcom/sdm845
rm -rf hardware/qcom/sm7250

git clone -b mido https://github.com/blaze424/local_manifests .repo/local_manifests
echo "***************"
echo Local Manifest Cloning Successfull
echo "***************"

repo init -u https://github.com/AxionAOSP/android.git -b lineage-22.2 --git-lfs

/opt/crave/resync.sh
echo "***************"
echo Sync Successfull
echo "***************"

rm -rf packages/apps/Updater/
git clone -b lineage-22.2 https://github.com/blaze424/android_packages_apps_Updater.git packages/apps/Updater/

source build/envsetup.sh
echo "***************"
echo envsetup.sh done
echo "***************"

echo "***************"
echo Starting Build
echo "***************"

axion mido gms pico
ax -br
