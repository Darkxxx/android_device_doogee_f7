echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="external/sepolicy frameworks/av frameworks/base frameworks/opt/telephony frameworks/opt/net/ims packages/services/Telecomm packages/services/Telephony system/netd system/core system/bt"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	#git am $rootdirectory/device/doogee/f7/patches/$dir/*.patch
	git apply $rootdirectory/device/doogee/f7/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
