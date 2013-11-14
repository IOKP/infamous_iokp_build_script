INTRO
=====

Infamous Open Kang Project (IOKP) is an AOKP enhanced rom.
Big credits go to AOKP team and their contributors!!!
We'll try to follow AOKP's guidelines and add a little special from our side.


INITIALIZING REPOSITORY
=======================

Init core trees without any device/kernel/vendor :

    $ repo init -u https://github.com/IOKP/platform_manifest.git -b jb-mr2

Init repo with all devices, kernels and vendors supported by IOKP :

    $ repo init -u https://github.com/IOKP/platform_manifest.git -b jb-mr2 -g all,kernel,device,vendor

Init repo only for a particular device :

    $ repo init -u https://github.com/IOKP/platform_manifest.git -b jb-mr2 -g all,-notdefault,<devicename>,<vendorname>

for example, to init only trees needed to build mako :

    $ repo init -u https://github.com/IOKP/platform_manifest.git -b jb-mr2 -g all,-notdefault,mako,lge

Init repo for multiple devices :

    $ repo init -u https://github.com/IOKP/platform_manifest.git -b jb-mr2 -g all,-notdefault,<devicename1>,<devicename2>,<devicename3>,<vendorname1>,<vendorname2>,<vendorname3>

for example, to init trees needed to build mako and grouper :

    $ repo init -u https://github.com/IOKP/platform_manifest.git -b jb-mr2 -g all,-notdefault,mako,grouper,lge,asus


sync repo :

    $ repo sync
    
    
Building
--------

After the sync is finished, please read the [instructions from the Android site](http://s.android.com/source/building.html) on how to build.

    . build/envsetup.sh && time brunch jfltetmo


You can also build (and see how long it took) for specific devices like this:
    
    chmod 755 build.sh
    ./build.sh jfltetmo

Remember to `make clobber` every now and then!

