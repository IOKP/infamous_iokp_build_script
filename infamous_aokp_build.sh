echo "Making AOKP dir"
sleep 2
mkdir -p ~/android/aokp_jb
cd ~/android/aokp_jb
echo "Done"
echo "Initialize the AOKP repo and download the manifest"
sleep 2
repo init -u https://github.com/AOKP/platform_manifest.git -b jb-mr2
echo "Done"
echo "Sync AOKP source"
echo "Sit and wait for a long time. Nearing 10GB of source code now."
sleep 5
repo sync
echo "Done"
echo "Download the kernel source"
echo "Sit and wait for a long time again."
sleep 5
. ./platform_manifest/manual_add_kernel_manifest.sh
echo "Done"
echo "Start the build"
echo "This is probably the EASIEST part of all, simply copy/paste this command and walk away!"
echo ". build/envsetup.sh && brunch jfltetmo"
echo "Syncing the repo is dependent upon your Internet connection. It can take anywhere from 30 minutes to several hours to fully sync. Same thing goes for build times. Don’t expect this to be short. If you have patience and have no build errors, you’ll end up with a flashable zip in ~/aokp_jb/out/target/product/jfltetmo!"
sleep 2
echo "Done"
