rm -rf .repo/local_manifests/

git clone -b lineage-22.1 https://github.com/blaze424/local_manifests .repo/local_manifests
echo "***************"
echo Local Manifest Cloning Successfull
echo "***************"

/opt/crave/resync.sh
echo "***************"
echo Sync Successfull
echo "***************"

source build/envsetup.sh
echo "***************"
echo envsetup.sh done
echo "***************"

echo "***************"
echo Starting Build
echo "***************"

breakfast sweet user
brunch sweet user