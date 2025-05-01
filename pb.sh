#rm -rf .repo/local_manifests/
#repo init -u https://github.com/PixelBuildsROM/android_manifest -b infinity

#git clone -b pb-temp --depth 1 https://github.com/blaze424/local_manifests .repo/local_manifests

#echo "***************"
#echo Local Manifest Cloning Successfull
#echo "***************"

#/opt/crave/resync.sh
#echo "***************"
#echo Sync Successfull
#echo "***************"

#source build/envsetup.sh
#echo "***************"
#echo envsetup.sh done
#echo "***************"
 
#echo "***************"
#echo Starting Build
#echo "***************"

./pb-build.sh dubai
