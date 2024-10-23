# logcat2
--------- beginning of system
2024-01-01 09:00:01.540     0-170   DrmService              kernel                               E  ----------------running drmservice---------------
--------- beginning of crash
2024-01-01 09:00:01.841     0-170   DrmService              kernel                               E  ----------serianno =40AI8SN8C1
2024-01-01 09:00:01.852   171-171   libc                    pid-171                              A  Fatal signal 11 (SIGSEGV), code 1, fault addr 0xffffffff in tid 171 (akmd)
2024-01-01 09:00:01.921   160-160   Vold                    pid-160                              I  Vold 2.1 (the revenge) firing up
2024-01-01 09:00:01.922   160-160   Vold                    pid-160                              D  Volume internal_sd state changing -1 (Initializing) -> 0 (No-Media)
2024-01-01 09:00:01.922   160-160   Vold                    pid-160                              E  label internal_sd addPath /devices/ff0f0000.rksdmmc/mmc_host/mmc
2024-01-01 09:00:01.922   160-160   Vold                    pid-160                              I  Error(call No.1) opening /sys/sd-sdio/rescan in the file of Volume.cpp
2024-01-01 09:00:01.922   160-160   Vold                    pid-160                              D  Volume external_sd state changing -1 (Initializing) -> 0 (No-Media)
2024-01-01 09:00:01.922   160-160   Vold                    pid-160                              E  label external_sd addPath /devices/ff0c0000.rksdmmc/mmc_host/mmc
2024-01-01 09:00:01.922   160-160   Vold                    pid-160                              D  Volume usb_storage state changing -1 (Initializing) -> 0 (No-Media)
2024-01-01 09:00:01.922   160-160   Vold                    pid-160                              E  label usb_storage addPath /devices/ff580000.usb
2024-01-01 09:00:01.922   160-160   Vold                    pid-160                              E  Start Misc devices Manager...
2024-01-01 09:00:01.922   160-160   Vold                    pid-160                              D  Vendor path: /sys/bus/usb/devices/1-1/idVendor
2024-01-01 09:00:01.923   160-160   Vold                    pid-160                              D  === config_file is: 05e3_0608
2024-01-01 09:00:01.928   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop0.
2024-01-01 09:00:01.928   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop0.
2024-01-01 09:00:01.928   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop0.
2024-01-01 09:00:01.928   160-191   Vold                    pid-160                              W  No volumes handled block event for '/devices/virtual/block/loop0'
2024-01-01 09:00:01.928   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop1.
2024-01-01 09:00:01.928   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop1.
2024-01-01 09:00:01.928   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop1.
2024-01-01 09:00:01.928   160-191   Vold                    pid-160                              W  No volumes handled block event for '/devices/virtual/block/loop1'
2024-01-01 09:00:01.929   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop2.
2024-01-01 09:00:01.929   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop2.
2024-01-01 09:00:01.929   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop2.
2024-01-01 09:00:01.929   160-191   Vold                    pid-160                              W  No volumes handled block event for '/devices/virtual/block/loop2'
2024-01-01 09:00:01.930   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop3.
2024-01-01 09:00:01.930   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop3.
2024-01-01 09:00:01.930   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop3.
2024-01-01 09:00:01.930   160-191   Vold                    pid-160                              W  No volumes handled block event for '/devices/virtual/block/loop3'
2024-01-01 09:00:01.930   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop4.
2024-01-01 09:00:01.930   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop4.
2024-01-01 09:00:01.930   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop4.
2024-01-01 09:00:01.930   160-191   Vold                    pid-160                              W  No volumes handled block event for '/devices/virtual/block/loop4'
2024-01-01 09:00:01.931   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop5.
2024-01-01 09:00:01.931   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop5.
2024-01-01 09:00:01.931   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop5.
2024-01-01 09:00:01.931   160-191   Vold                    pid-160                              W  No volumes handled block event for '/devices/virtual/block/loop5'
2024-01-01 09:00:01.932   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop6.
2024-01-01 09:00:01.932   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop6.
2024-01-01 09:00:01.932   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop6.
2024-01-01 09:00:01.932   160-191   Vold                    pid-160                              W  No volumes handled block event for '/devices/virtual/block/loop6'
2024-01-01 09:00:01.932   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop7.
2024-01-01 09:00:01.932   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop7.
2024-01-01 09:00:01.932   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop7.
2024-01-01 09:00:01.932   160-191   Vold                    pid-160                              W  No volumes handled block event for '/devices/virtual/block/loop7'
2024-01-01 09:00:01.933   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/zram0.
2024-01-01 09:00:01.933   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/zram0.
2024-01-01 09:00:01.933   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/zram0.
2024-01-01 09:00:01.933   160-191   Vold                    pid-160                              W  No volumes handled block event for '/devices/virtual/block/zram0'
2024-01-01 09:00:01.934   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0.
2024-01-01 09:00:01.934   160-191   DirectVolume            pid-160                              W  Deprecated implied prefix pattern detected, please use '/devices/ff0f0000.rksdmmc/mmc_host/mmc*' instead
2024-01-01 09:00:01.934   160-191   DirectVolume            pid-160                              D  DEVTYPE = disk.
2024-01-01 09:00:01.934   160-191   DirectVolume            pid-160                              D  ----handleDiskAdded,mDiskNumParts =14,mDiskMajor=179,mDiskMinor=0
2024-01-01 09:00:01.934   160-191   DirectVolume            pid-160                              D  Dv::diskIns - waiting for 14 pending partitions
2024-01-01 09:00:01.934   160-191   Vold                    pid-160                              D  Volume internal_sd state changing 0 (No-Media) -> 2 (Pending)
2024-01-01 09:00:01.934   160-191   Vold                    pid-160                              D  Device '/devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0' event handled by volume internal_sd
2024-01-01 09:00:01.935   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p1.
2024-01-01 09:00:01.935   160-191   DirectVolume            pid-160                              D  DEVTYPE = partition.
2024-01-01 09:00:01.935   160-191   DirectVolume            pid-160                              D  ---handlePartitionAdded,part_num=1,major=179,minor=1,mDiskMajor=179
2024-01-01 09:00:01.935   160-191   DirectVolume            pid-160                              D  Dv:partAdd: part_num = 1, minor = 1
2024-01-01 09:00:01.935   160-191   DirectVolume            pid-160                              D  Dv:partAdd: pending 13 disk
2024-01-01 09:00:01.935   160-191   Vold                    pid-160                              D  Device '/devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p1' event handled by volume internal_sd
2024-01-01 09:00:01.936   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p2.
2024-01-01 09:00:01.936   160-191   DirectVolume            pid-160                              D  DEVTYPE = partition.
2024-01-01 09:00:01.936   160-191   DirectVolume            pid-160                              D  ---handlePartitionAdded,part_num=2,major=179,minor=2,mDiskMajor=179
2024-01-01 09:00:01.936   160-191   DirectVolume            pid-160                              D  Dv:partAdd: part_num = 2, minor = 2
2024-01-01 09:00:01.936   160-191   DirectVolume            pid-160                              D  Dv:partAdd: pending 12 disk
2024-01-01 09:00:01.936   160-191   Vold                    pid-160                              D  Device '/devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p2' event handled by volume internal_sd
2024-01-01 09:00:01.937   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p3.
2024-01-01 09:00:01.937   160-191   DirectVolume            pid-160                              D  DEVTYPE = partition.
2024-01-01 09:00:01.937   160-191   DirectVolume            pid-160                              D  ---handlePartitionAdded,part_num=3,major=179,minor=3,mDiskMajor=179
2024-01-01 09:00:01.937   160-191   DirectVolume            pid-160                              D  Dv:partAdd: part_num = 3, minor = 3
2024-01-01 09:00:01.937   160-191   DirectVolume            pid-160                              D  Dv:partAdd: pending 11 disk
2024-01-01 09:00:01.937   160-191   Vold                    pid-160                              D  Device '/devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p3' event handled by volume internal_sd
2024-01-01 09:00:01.939   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p4.
2024-01-01 09:00:01.940   160-191   DirectVolume            pid-160                              D  DEVTYPE = partition.
2024-01-01 09:00:01.940   160-191   DirectVolume            pid-160                              D  ---handlePartitionAdded,part_num=4,major=179,minor=4,mDiskMajor=179
2024-01-01 09:00:01.940   160-191   DirectVolume            pid-160                              D  Dv:partAdd: part_num = 4, minor = 4
2024-01-01 09:00:01.940   160-191   DirectVolume            pid-160                              D  Dv:partAdd: pending 10 disk
2024-01-01 09:00:01.940   160-191   Vold                    pid-160                              D  Device '/devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p4' event handled by volume internal_sd
2024-01-01 09:00:01.941   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p5.
2024-01-01 09:00:01.941   160-191   DirectVolume            pid-160                              D  DEVTYPE = partition.
2024-01-01 09:00:01.941   160-191   DirectVolume            pid-160                              D  ---handlePartitionAdded,part_num=5,major=179,minor=5,mDiskMajor=179
2024-01-01 09:00:01.941   160-191   DirectVolume            pid-160                              D  Dv:partAdd: part_num = 5, minor = 5
2024-01-01 09:00:01.941   160-191   DirectVolume            pid-160                              D  Dv:partAdd: pending 9 disk
2024-01-01 09:00:01.941   160-191   Vold                    pid-160                              D  Device '/devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p5' event handled by volume internal_sd
2024-01-01 09:00:01.941   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p6.
2024-01-01 09:00:01.941   160-191   DirectVolume            pid-160                              D  DEVTYPE = partition.
2024-01-01 09:00:01.941   160-191   DirectVolume            pid-160                              D  ---handlePartitionAdded,part_num=6,major=179,minor=6,mDiskMajor=179
2024-01-01 09:00:01.941   160-191   DirectVolume            pid-160                              D  Dv:partAdd: part_num = 6, minor = 6
2024-01-01 09:00:01.941   160-191   DirectVolume            pid-160                              D  Dv:partAdd: pending 8 disk
2024-01-01 09:00:01.941   160-191   Vold                    pid-160                              D  Device '/devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p6' event handled by volume internal_sd
2024-01-01 09:00:01.942   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p7.
2024-01-01 09:00:01.942   160-191   DirectVolume            pid-160                              D  DEVTYPE = partition.
2024-01-01 09:00:01.942   160-191   DirectVolume            pid-160                              D  ---handlePartitionAdded,part_num=7,major=179,minor=7,mDiskMajor=179
2024-01-01 09:00:01.942   160-191   DirectVolume            pid-160                              D  Dv:partAdd: part_num = 7, minor = 7
2024-01-01 09:00:01.942   160-191   DirectVolume            pid-160                              D  Dv:partAdd: pending 7 disk
2024-01-01 09:00:01.942   160-191   Vold                    pid-160                              D  Device '/devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p7' event handled by volume internal_sd
2024-01-01 09:00:01.943   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p8.
2024-01-01 09:00:01.943   160-191   DirectVolume            pid-160                              D  DEVTYPE = partition.
2024-01-01 09:00:01.943   160-191   DirectVolume            pid-160                              D  ---handlePartitionAdded,part_num=8,major=179,minor=8,mDiskMajor=179
2024-01-01 09:00:01.943   160-191   DirectVolume            pid-160                              D  Dv:partAdd: part_num = 8, minor = 8
2024-01-01 09:00:01.943   160-191   DirectVolume            pid-160                              D  Dv:partAdd: pending 6 disk
2024-01-01 09:00:01.943   160-191   Vold                    pid-160                              D  Device '/devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p8' event handled by volume internal_sd
2024-01-01 09:00:01.944   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p9.
2024-01-01 09:00:01.944   160-191   DirectVolume            pid-160                              D  DEVTYPE = partition.
2024-01-01 09:00:01.945   160-191   DirectVolume            pid-160                              D  ---handlePartitionAdded,part_num=9,major=179,minor=9,mDiskMajor=179
2024-01-01 09:00:01.945   160-191   DirectVolume            pid-160                              D  Dv:partAdd: part_num = 9, minor = 9
2024-01-01 09:00:01.945   160-191   DirectVolume            pid-160                              D  Dv:partAdd: pending 5 disk
2024-01-01 09:00:01.945   160-191   Vold                    pid-160                              D  Device '/devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p9' event handled by volume internal_sd
2024-01-01 09:00:01.945   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p10.
2024-01-01 09:00:01.945   160-191   DirectVolume            pid-160                              D  DEVTYPE = partition.
2024-01-01 09:00:01.945   160-191   DirectVolume            pid-160                              D  ---handlePartitionAdded,part_num=10,major=179,minor=10,mDiskMajor=179
2024-01-01 09:00:01.945   160-191   DirectVolume            pid-160                              D  Dv:partAdd: part_num = 10, minor = 10
2024-01-01 09:00:01.945   160-191   DirectVolume            pid-160                              D  Dv:partAdd: pending 4 disk
2024-01-01 09:00:01.945   160-191   Vold                    pid-160                              D  Device '/devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p10' event handled by volume internal_sd
2024-01-01 09:00:01.945   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p11.
2024-01-01 09:00:01.945   160-191   DirectVolume            pid-160                              D  DEVTYPE = partition.
2024-01-01 09:00:01.945   160-191   DirectVolume            pid-160                              D  ---handlePartitionAdded,part_num=11,major=179,minor=11,mDiskMajor=179
2024-01-01 09:00:01.945   160-191   DirectVolume            pid-160                              D  Dv:partAdd: part_num = 11, minor = 11
2024-01-01 09:00:01.945   160-191   DirectVolume            pid-160                              D  Dv:partAdd: pending 3 disk
2024-01-01 09:00:01.945   160-191   Vold                    pid-160                              D  Device '/devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p11' event handled by volume internal_sd
2024-01-01 09:00:01.945   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p12.
2024-01-01 09:00:01.945   160-191   DirectVolume            pid-160                              D  DEVTYPE = partition.
2024-01-01 09:00:01.945   160-191   DirectVolume            pid-160                              D  ---handlePartitionAdded,part_num=12,major=179,minor=12,mDiskMajor=179
2024-01-01 09:00:01.945   160-191   DirectVolume            pid-160                              D  Dv:partAdd: part_num = 12, minor = 12
2024-01-01 09:00:01.945   160-191   DirectVolume            pid-160                              D  Dv:partAdd: pending 2 disk
2024-01-01 09:00:01.946   160-191   Vold                    pid-160                              D  Device '/devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p12' event handled by volume internal_sd
2024-01-01 09:00:01.946   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p13.
2024-01-01 09:00:01.946   160-191   DirectVolume            pid-160                              D  DEVTYPE = partition.
2024-01-01 09:00:01.946   160-191   DirectVolume            pid-160                              D  ---handlePartitionAdded,part_num=13,major=179,minor=13,mDiskMajor=179
2024-01-01 09:00:01.946   160-191   DirectVolume            pid-160                              D  Dv:partAdd: part_num = 13, minor = 13
2024-01-01 09:00:01.946   160-191   DirectVolume            pid-160                              D  Dv:partAdd: pending 1 disk
2024-01-01 09:00:01.946   160-191   Vold                    pid-160                              D  Device '/devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p13' event handled by volume internal_sd
2024-01-01 09:00:01.946   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p14.
2024-01-01 09:00:01.946   160-191   DirectVolume            pid-160                              D  DEVTYPE = partition.
2024-01-01 09:00:01.946   160-191   DirectVolume            pid-160                              D  ---handlePartitionAdded,part_num=14,major=179,minor=14,mDiskMajor=179
2024-01-01 09:00:01.946   160-191   DirectVolume            pid-160                              D  Dv:partAdd: part_num = 14, minor = 14
2024-01-01 09:00:01.946   160-191   DirectVolume            pid-160                              D  Dv:partAdd: Got all partitions - ready to rock!
2024-01-01 09:00:01.946   160-191   Vold                    pid-160                              D  Volume internal_sd state changing 2 (Pending) -> 1 (Idle-Unmounted)
2024-01-01 09:00:01.946   160-191   Vold                    pid-160                              D  Device '/devices/ff0f0000.rksdmmc/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p14' event handled by volume internal_sd
2024-01-01 09:00:01.966   164-164   DEBUG                   pid-164                              I  *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***
2024-01-01 09:00:01.966   164-164   DEBUG                   pid-164                              I  Build fingerprint: 'Android/rk3288/rk3288:5.1.1/LMY49F/xyh10201552:userdebug/test-keys'
2024-01-01 09:00:01.966   164-164   DEBUG                   pid-164                              I  Revision: '0'
2024-01-01 09:00:01.966   164-164   DEBUG                   pid-164                              I  ABI: 'arm'
2024-01-01 09:00:01.966   164-164   DEBUG                   pid-164                              I  pid: 171, tid: 171, name: akmd  >>> /system/bin/akmd <<<
2024-01-01 09:00:01.966   164-164   DEBUG                   pid-164                              I  signal 11 (SIGSEGV), code 1 (SEGV_MAPERR), fault addr 0xffffffff
2024-01-01 09:00:01.969   164-164   DEBUG                   pid-164                              I      r0 ffffffff  r1 5d95b946  r2 5d95b946  r3 5d95b946
2024-01-01 09:00:01.969   164-164   DEBUG                   pid-164                              I      r4 ffffffff  r5 b6febf8c  r6 bef26924  r7 00000001
2024-01-01 09:00:01.969   164-164   DEBUG                   pid-164                              I      r8 b6fea8ad  r9 00000001  sl b6fc4dd4  fp 00000001
2024-01-01 09:00:01.969   164-164   DEBUG                   pid-164                              I      ip b6febff4  sp bef264c0  lr b6fe730d  pc b6f7f010  cpsr a0070030
2024-01-01 09:00:01.969   164-164   DEBUG                   pid-164                              I  
                                                                                                    backtrace:
2024-01-01 09:00:01.969   164-164   DEBUG                   pid-164                              I      #00 pc 00016010  /system/lib/libc.so (timer_delete+3)
2024-01-01 09:00:01.969   164-164   DEBUG                   pid-164                              I      #01 pc 00002309  /system/bin/akmd
2024-01-01 09:00:01.969   164-164   DEBUG                   pid-164                              I      #02 pc 00000a1f  /system/bin/akmd
2024-01-01 09:00:01.969   164-164   DEBUG                   pid-164                              I      #03 pc 0001239d  /system/lib/libc.so (__libc_init+44)
2024-01-01 09:00:01.969   164-164   DEBUG                   pid-164                              I      #04 pc 00000b08  /system/bin/akmd
2024-01-01 09:00:02.092   170-170   DrmService              pid-170                              E  auto generate serialno,serialno = 40AI8SN8C1
2024-01-01 09:00:02.092   170-170   DrmService              pid-170                              E  rknand_sys_storage open fail
2024-01-01 09:00:02.320   170-170   DrmService              pid-170                              E  detect keybox disabled
2024-01-01 09:00:05.024   464-464   InstallerConnection     system_process                       I  disconnecting...
2024-01-01 09:00:05.294   464-464   SystemServer            system_process                       I  Entered the Android system server!
2024-01-01 09:00:06.215   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.pm.Installer
2024-01-01 09:00:06.295   464-464   Installer               system_process                       I  Waiting for installd to be ready.
2024-01-01 09:00:06.295   464-464   InstallerConnection     system_process                       I  connecting...
2024-01-01 09:00:06.296   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.am.ActivityManagerService$Lifecycle
2024-01-01 09:00:06.359   464-464   ActivityManagerService  system_process                       I  Memory class: 192
2024-01-01 09:00:06.360   464-488   ServiceThread           system_process                       I  Enabled StrictMode logging for ActivityManagerService looper.
2024-01-01 09:00:06.676   464-464   IntentFirewall          system_process                       I  Read new rules (A:0 B:0 S:0)
2024-01-01 09:00:06.680   464-491   ServiceThread           system_process                       I  Enabled StrictMode logging for android.ui looper.
2024-01-01 09:00:06.682   464-493   ServiceThread           system_process                       I  Enabled StrictMode logging for android.display looper.
2024-01-01 09:00:06.719   464-464   AppOps                  system_process                       D  AppOpsService published
2024-01-01 09:00:06.720   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.display.DisplayManagerService
2024-01-01 09:00:06.754   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.power.PowerManagerService
2024-01-01 09:00:06.755   464-495   ServiceThread           system_process                       I  Enabled StrictMode logging for PowerManagerService looper.
2024-01-01 09:00:06.757   464-493   DisplayManagerService   system_process                       I  Display device added: DisplayDeviceInfo{"Built-in Screen": uniqueId="local:0", 1536 x 2048, 61.495003 fps, supportedRefreshRates [61.495003], density 320, 159.89508 x 160.05908 dpi, appVsyncOff 0, presDeadline 17261484, touch INTERNAL, rotation 0, type BUILT_IN, state UNKNOWN, FLAG_DEFAULT_DISPLAY, FLAG_ROTATES_WITH_CONTENT, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-01-01 09:00:06.760   464-464   SystemServiceManager    system_process                       I  Starting phase 100
2024-01-01 09:00:06.760   464-464   SystemServer            system_process                       I  Package Manager
2024-01-01 09:00:06.809   464-464   SystemConfig            system_process                       W  No directory /system/etc/sysconfig, skipping
2024-01-01 09:00:06.883   464-464   SELinuxMMAC             system_process                       D  Using policy file /system/etc/security/mac_permissions.xml
2024-01-01 09:00:07.308   464-464   PackageParser           system_process                       W  No actions in intent filter at /system/priv-app/Contacts/Contacts.apk Binary XML file line #356
2024-01-01 09:00:08.000   464-464   PackageParser           system_process                       W  No actions in intent filter at /system/priv-app/StressTest/StressTest.apk Binary XML file line #42
2024-01-01 09:00:08.356   464-464   PackageParser           system_process                       W  Unknown element under <intent-filter>: android at /system/priv-app/Telecom/Telecom.apk Binary XML file line #232
2024-01-01 09:00:08.522   464-464   PackageParser           system_process                       W  No actions in intent filter at /system/app/Bluetooth/Bluetooth.apk Binary XML file line #209
2024-01-01 09:00:09.063   464-464   PackageParser           system_process                       W  Unknown element under <application>: permission at /system/app/Gallery2/Gallery2.apk Binary XML file line #243
2024-01-01 09:00:09.063   464-464   PackageParser           system_process                       W  Unknown element under <application>: permission at /system/app/Gallery2/Gallery2.apk Binary XML file line #246
2024-01-01 09:00:12.163   464-464   PackageManager          system_process                       W  Package com.android.gallery3d desires unavailable shared library com.google.android.media.effects; ignoring!
2024-01-01 09:00:12.163   464-464   PackageManager          system_process                       W  Package com.android.gallery3d desires unavailable shared library com.google.android.media.effects; ignoring!
2024-01-01 09:00:12.163   464-464   PackageManager          system_process                       I  Adjusting ABI for : com.android.winstart to armeabi-v7a
2024-01-01 09:00:12.163   464-464   PackageManager          system_process                       I  Adjusting ABI for : com.android.providers.settings to armeabi-v7a
2024-01-01 09:00:12.164   464-464   PackageManager          system_process                       I  Adjusting ABI for : com.cghs.stresstest to armeabi-v7a
2024-01-01 09:00:12.164   464-464   PackageManager          system_process                       I  Adjusting ABI for : com.android.settings to armeabi-v7a
2024-01-01 09:00:12.164   464-464   PackageManager          system_process                       I  Adjusting ABI for : com.android.server.telecom to armeabi-v7a
2024-01-01 09:00:12.164   464-464   PackageManager          system_process                       I  Adjusting ABI for : com.android.keychain to armeabi-v7a
2024-01-01 09:00:12.164   464-464   PackageManager          system_process                       I  Adjusting ABI for : com.android.inputdevices to armeabi-v7a
2024-01-01 09:00:12.164   464-464   PackageManager          system_process                       I  Adjusting ABI for : com.android.location.fused to armeabi-v7a
2024-01-01 09:00:12.166   464-464   PackageManager          system_process                       I  Time to scan packages: 5.249 seconds
2024-01-01 09:00:12.166   464-464   PackageManager          system_process                       W  Unknown permission com.google.android.googleapps.permission.GOOGLE_AUTH in package com.android.providers.calendar
2024-01-01 09:00:12.166   464-464   PackageManager          system_process                       W  Unknown permission com.google.android.googleapps.permission.GOOGLE_AUTH.cl in package com.android.providers.calendar
2024-01-01 09:00:12.166   464-464   PackageManager          system_process                       W  Not granting permission android.permission.MOUNT_UNMOUNT_FILESYSTEMS to package com.ubtechinc.alphaenglishchat (protectionLevel=18 flags=0x8be44)
2024-01-01 09:00:12.166   464-464   PackageManager          system_process                       W  Not granting permission android.permission.INSTALL_PACKAGES to package com.ubtechinc.alphaenglishchat (protectionLevel=18 flags=0x8be44)
2024-01-01 09:00:12.166   464-464   PackageManager          system_process                       W  Not granting permission android.permission.GLOBAL_SEARCH to package com.android.quicksearchbox (protectionLevel=18 flags=0x8be45)
2024-01-01 09:00:12.166   464-464   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.READ_SETTINGS in package com.android.winstart
2024-01-01 09:00:12.166   464-464   PackageManager          system_process                       W  Not granting permission android.permission.ACCESS_DOWNLOAD_MANAGER to package com.android.browser (protectionLevel=18 flags=0x9be45)
2024-01-01 09:00:12.166   464-464   PackageManager          system_process                       W  Not granting permission android.permission.SEND_DOWNLOAD_COMPLETED_INTENTS to package com.android.browser (protectionLevel=2 flags=0x9be45)
2024-01-01 09:00:12.166   464-464   PackageManager          system_process                       W  Not granting permission android.permission.SET_TIME to package com.ubtechinc.alpha2services (protectionLevel=18 flags=0x8be46)
2024-01-01 09:00:12.166   464-464   PackageManager          system_process                       W  Not granting permission android.permission.REBOOT to package com.ubtechinc.alpha2services (protectionLevel=18 flags=0x8be46)
2024-01-01 09:00:12.166   464-464   PackageManager          system_process                       W  Not granting permission android.permission.INSTALL_PACKAGES to package com.ubtechinc.alpha2services (protectionLevel=18 flags=0x8be46)
2024-01-01 09:00:12.166   464-464   PackageManager          system_process                       W  Not granting permission android.permission.DELETE_PACKAGES to package com.ubtechinc.alpha2services (protectionLevel=18 flags=0x8be46)
2024-01-01 09:00:12.167   464-464   PackageManager          system_process                       W  Not granting permission android.permission.MOUNT_UNMOUNT_FILESYSTEMS to package com.ubtechinc.alpha2services (protectionLevel=18 flags=0x8be46)
2024-01-01 09:00:12.167   464-464   PackageManager          system_process                       W  Unknown permission android.permission.ACCESS_SUPERUSER in package com.rockchip.projectx
2024-01-01 09:00:12.167   464-464   PackageManager          system_process                       W  Not granting permission android.permission.BIND_WALLPAPER to package com.android.camera2 (protectionLevel=18 flags=0x58bc45)
2024-01-01 09:00:12.167   464-464   PackageManager          system_process                       W  Not granting permission android.permission.BIND_APPWIDGET to package com.android.launcher3 (protectionLevel=18 flags=0x583e45)
2024-01-01 09:00:12.167   464-464   PackageManager          system_process                       W  Unknown permission android.permission.READ_SETTINGS in package com.android.launcher3
2024-01-01 09:00:12.167   464-464   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.READ_SETTINGS in package com.android.launcher3
2024-01-01 09:00:12.167   464-464   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.WRITE_SETTINGS in package com.android.launcher3
2024-01-01 09:00:12.167   464-464   PackageManager          system_process                       W  Unknown permission com.google.android.googleapps.permission.GOOGLE_AUTH.mail in package com.android.calendar
2024-01-01 09:00:12.167   464-464   PackageManager          system_process                       W  Unknown permission android.permission.FOREGROUND_SERVICE in package com.koushikdutta.vysor
2024-01-01 09:00:12.167   464-464   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.READ_SETTINGS in package com.android.onetimeinitializer
2024-01-01 09:00:12.167   464-464   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.WRITE_SETTINGS in package com.android.onetimeinitializer
2024-01-01 09:00:12.167   464-464   PackageManager          system_process                       W  Unknown permission android.permission.READ_MEDIA_STORAGE in package com.android.packageinstaller
2024-01-01 09:00:12.167   464-464   PackageManager          system_process                       W  Not granting permission android.permission.DELETE_PACKAGES to package com.svox.pico (protectionLevel=18 flags=0x8be45)
2024-01-01 09:00:12.167   464-464   PackageManager          system_process                       W  Unknown permission com.google.android.gallery3d.permission.PICASA_STORE in package com.android.dreams.phototable
2024-01-01 09:00:12.167   464-464   PackageManager          system_process                       W  Unknown permission com.google.android.googleapps.permission.GOOGLE_AUTH in package com.android.settings
2024-01-01 09:00:12.167   464-464   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.READ_SETTINGS in package com.android.settings
2024-01-01 09:00:12.167   464-464   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.WRITE_SETTINGS in package com.android.settings
2024-01-01 09:00:12.168   464-464   PackageManager          system_process                       W  Not granting permission android.permission.DEVICE_POWER to package com.android.deskclock (protectionLevel=2 flags=0x48be45)
2024-01-01 09:00:12.168   464-464   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.READ_SETTINGS in package com.android.systemui
2024-01-01 09:00:12.168   464-464   PackageManager          system_process                       W  Unknown permission com.android.email.permission.READ_ATTACHMENT in package com.android.exchange
2024-01-01 09:00:12.168   464-464   PackageManager          system_process                       W  Unknown permission com.android.email.permission.ACCESS_PROVIDER in package com.android.exchange
2024-01-01 09:00:12.168   464-464   PackageManager          system_process                       W  Unknown permission com.google.android.gallery3d.permission.GALLERY_PROVIDER in package com.android.bluetooth
2024-01-01 09:00:12.168   464-464   PackageManager          system_process                       W  Unknown permission android.permission.MMS_SEND_OUTBOX_MSG in package com.android.bluetooth
2024-01-01 09:00:12.168   464-464   PackageManager          system_process                       W  Unknown permission rockchip.permission.FULL_SCREEN in package android.rk.RockVideoPlayer
2024-01-01 09:00:12.168   464-464   PackageManager          system_process                       W  Unknown permission android.permission.RAISED_THREAD_PRIORITY in package android.rk.RockVideoPlayer
2024-01-01 09:00:12.168   464-464   PackageManager          system_process                       W  Unknown permission android.permission.FULL_SCREEN in package android.rk.RockVideoPlayer
2024-01-01 09:00:12.168   464-464   PackageManager          system_process                       W  Unknown permission archos.permission.FULL_SCREEN in package android.rk.RockVideoPlayer
2024-01-01 09:00:12.191   464-464   PackageSettings         system_process                       W  Skipping PackageSetting{1abe6064 ru.iiec.pydroid3/10063} due to missing metadata
2024-01-01 09:00:12.221   464-464   SystemServer            system_process                       I  User Service
2024-01-01 09:00:12.323   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.lights.LightsService
2024-01-01 09:00:12.326   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.BatteryService
2024-01-01 09:00:12.329   464-481   BatteryStatsImpl        system_process                       I  Resetting battery stats: level=100 status=4 dischargeLevel=100 lowAmount=0 highAmount=0
2024-01-01 09:00:12.330   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.usage.UsageStatsService
2024-01-01 09:00:12.338   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.webkit.WebViewUpdateService
2024-01-01 09:00:12.339   464-464   SystemServer            system_process                       I  Reading configuration...
2024-01-01 09:00:12.339   464-464   SystemServer            system_process                       I  Scheduling Policy
2024-01-01 09:00:12.340   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.telecom.TelecomLoaderService
2024-01-01 09:00:12.340   464-464   SystemServer            system_process                       I  Telephony Registry
2024-01-01 09:00:12.347   464-464   SystemServer            system_process                       I  Entropy Mixer
2024-01-01 09:00:12.349   464-464   EntropyMixer            system_process                       I  Writing entropy...
2024-01-01 09:00:12.361   464-464   SystemServer            system_process                       I  Account Manager
2024-01-01 09:00:12.366   464-464   SystemServer            system_process                       I  Start SimStateChange Service
2024-01-01 09:00:12.367   464-464   ActivityManagerService  system_process                       W  Unable to start service Intent { cmp=com.android.contacts/.SimStateChangedService } U=0: not found
2024-01-01 09:00:12.367   464-464   SystemServer            system_process                       I  Content Manager
2024-01-01 09:00:12.368   464-464   SystemServer            system_process                       I  System Content Providers
2024-01-01 09:00:12.396   464-464   SystemServer            system_process                       I  Vibrator Service
2024-01-01 09:00:12.397   464-464   SystemServer            system_process                       I  Consumer IR Service
2024-01-01 09:00:12.398   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.AlarmManagerService
2024-01-01 09:00:12.401   464-464   AlarmManager            system_process                       D   Failed while trying resolve alarm filter file, not exists
2024-01-01 09:00:12.402   464-464   SystemServer            system_process                       I  Init Watchdog
2024-01-01 09:00:12.402   464-464   SystemServer            system_process                       I  Input Manager
2024-01-01 09:00:12.403   464-464   InputManager            system_process                       I  Initializing input manager, mUseDevInputEventForAudioJack=false
2024-01-01 09:00:12.404   464-464   SystemServer            system_process                       I  Window Manager
2024-01-01 09:00:12.417   464-493   WindowManagerService    system_process                       I  No existing display settings /data/system/display_settings.xml; starting empty
2024-01-01 09:00:12.447   464-464   InputManager            system_process                       I  Starting input manager
2024-01-01 09:00:12.449   464-464   SystemServer            system_process                       I  Bluetooth Manager Service
2024-01-01 09:00:12.452   464-464   SystemServer            system_process                       I  Input Method Service
2024-01-01 09:00:12.458   464-464   InputMetho...gerService system_process                       W  Couldn't create dir.: /data/system/inputmethod
2024-01-01 09:00:12.473   464-464   SystemServer            system_process                       I  Accessibility Manager
2024-01-01 09:00:12.477   464-464   ActivityManagerService  system_process                       I  Config changes=80009df8 {1.0 multiwindowflag=DISABLE dualscreenflag=DISABLE ?mcc?mnc en_US ?layoutDir sw768dp w768dp h1024dp 320dpi xlrg port ?uimode ?night -touch -keyb/v/h -nav/h s.2}
2024-01-01 09:00:12.482   464-487   UsageStatsService       system_process                       I  User[0] Rollover scheduled @ 2011-01-01 21:00:00(1293926400000)
2024-01-01 09:00:12.493   464-464   ActivityManagerService  system_process                       D  ---------clean the all task
2024-01-01 09:00:12.493   464-464   ActivityManagerService  system_process                       D  ---------Move Home To Top & CLEAN THE ALL TASK
2024-01-01 09:00:12.495   464-464   ActivityManagerService  system_process                       I  Config changes=400 {1.0 multiwindowflag=DISABLE dualscreenflag=DISABLE ?mcc?mnc en_US ?layoutDir sw768dp w768dp h951dp 320dpi xlrg port ?uimode ?night -touch -keyb/v/h -nav/h s.3}
2024-01-01 09:00:12.496   464-464   SystemServer            system_process                       I  Mount Service
2024-01-01 09:00:12.498   464-464   MountService            system_process                       D  got storage path: /storage/sdcard0 description: Internal storage primary: true removable: true emulated: true mtpReserve: 100 allowMassStorage: false maxFileSize: 0
2024-01-01 09:00:12.498   464-464   MountService            system_process                       D  ---getMaxSupportedUsers,we has UMS,ignore emulated storage---
2024-01-01 09:00:12.499   464-464   MountService            system_process                       D  got storage path: /mnt/internal_sd description: NAND FLASH primary: false removable: true emulated: false mtpReserve: 100 allowMassStorage: true maxFileSize: 0
2024-01-01 09:00:12.499   464-464   MountService            system_process                       D  ---getMaxSupportedUsers,we has UMS,force NAND FLASH to primary storage---
2024-01-01 09:00:12.499   464-464   MountService            system_process                       D  addVolumeLocked() StorageVolume:
                                                                                                        mStorageId=0 mPath=/mnt/internal_sd mDescriptionId=17041221 mPrimary=true 
                                                                                                        mRemovable=true mEmulated=false mMtpReserveSpace=100 
                                                                                                        mAllowMassStorage=true mMaxFileSize=0 mOwner=null mUuid=null 
                                                                                                        mUserLabel=null mState=null 
2024-01-01 09:00:12.499   464-464   MountService            system_process                       D  got storage path: /mnt/external_sd description: SD card primary: false removable: true emulated: false mtpReserve: 100 allowMassStorage: true maxFileSize: 0
2024-01-01 09:00:12.499   464-464   MountService            system_process                       D  addVolumeLocked() StorageVolume:
                                                                                                        mStorageId=0 mPath=/mnt/external_sd mDescriptionId=17040808 mPrimary=false 
                                                                                                        mRemovable=true mEmulated=false mMtpReserveSpace=100 
                                                                                                        mAllowMassStorage=true mMaxFileSize=0 mOwner=null mUuid=null 
                                                                                                        mUserLabel=null mState=null 
2024-01-01 09:00:12.499   464-464   MountService            system_process                       D  got storage path: /mnt/usb_storage description: USB storage primary: false removable: true emulated: false mtpReserve: 100 allowMassStorage: false maxFileSize: 0
2024-01-01 09:00:12.499   464-464   MountService            system_process                       D  addVolumeLocked() StorageVolume:
                                                                                                        mStorageId=0 mPath=/mnt/usb_storage mDescriptionId=17040809 mPrimary=false 
                                                                                                        mRemovable=true mEmulated=false mMtpReserveSpace=100 
                                                                                                        mAllowMassStorage=false mMaxFileSize=0 mOwner=null mUuid=null 
                                                                                                        mUserLabel=null mState=null 
2024-01-01 09:00:12.504   160-192   VoldCmdListener         pid-160                              D  volume list broadcast
2024-01-01 09:00:12.504   160-192   Vold                    pid-160                              D  listVolumes :internal_sd /mnt/internal_sd 1
2024-01-01 09:00:12.504   160-192   Vold                    pid-160                              D  listVolumes :external_sd /mnt/external_sd 0
2024-01-01 09:00:12.504   160-192   Vold                    pid-160                              D  listVolumes :usb_storage /mnt/usb_storage 0
2024-01-01 09:00:12.505   464-523   MountService            system_process                       I  /mnt/internal_sdUpdating valid state unmounted   st 1
2024-01-01 09:00:12.505   464-464   SystemServer            system_process                       I  LockSettingsService
2024-01-01 09:00:12.505   464-523   MountService            system_process                       D  volume state changed for /mnt/internal_sd (mounted -> unmounted)
2024-01-01 09:00:12.505   464-523   MountService            system_process                       I  /mnt/external_sdUpdating valid state removed   st 0
2024-01-01 09:00:12.505   464-523   MountService            system_process                       D  volume state changed for /mnt/external_sd (unmounted -> removed)
2024-01-01 09:00:12.505   464-523   MountService            system_process                       I  /mnt/usb_storageUpdating valid state removed   st 0
2024-01-01 09:00:12.505   464-523   MountService            system_process                       D  volume state changed for /mnt/usb_storage (unmounted -> removed)
2024-01-01 09:00:12.505   160-192   VoldCmdListener         pid-160                              D  cryptfs getfield SystemLocale
2024-01-01 09:00:12.506   464-523   MountService            system_process                       W  getSecureContainerList() called when storage not mounted
2024-01-01 09:00:12.506   160-192   VoldCmdListener         pid-160                              D  asec list
2024-01-01 09:00:12.509   464-523   PackageManager          system_process                       W  Unknown permission com.google.android.googleapps.permission.GOOGLE_AUTH in package com.android.providers.calendar
2024-01-01 09:00:12.509   464-523   PackageManager          system_process                       W  Unknown permission com.google.android.googleapps.permission.GOOGLE_AUTH.cl in package com.android.providers.calendar
2024-01-01 09:00:12.509   464-523   PackageManager          system_process                       W  Not granting permission android.permission.MOUNT_UNMOUNT_FILESYSTEMS to package com.ubtechinc.alphaenglishchat (protectionLevel=18 flags=0x8be44)
2024-01-01 09:00:12.509   464-523   PackageManager          system_process                       W  Not granting permission android.permission.INSTALL_PACKAGES to package com.ubtechinc.alphaenglishchat (protectionLevel=18 flags=0x8be44)
2024-01-01 09:00:12.509   464-523   PackageManager          system_process                       W  Not granting permission android.permission.GLOBAL_SEARCH to package com.android.quicksearchbox (protectionLevel=18 flags=0x8be45)
2024-01-01 09:00:12.509   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.devicepolicy.DevicePolicyManagerService$Lifecycle
2024-01-01 09:00:12.509   464-523   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.READ_SETTINGS in package com.android.winstart
2024-01-01 09:00:12.509   464-523   PackageManager          system_process                       W  Not granting permission android.permission.ACCESS_DOWNLOAD_MANAGER to package com.android.browser (protectionLevel=18 flags=0x9be45)
2024-01-01 09:00:12.509   464-523   PackageManager          system_process                       W  Not granting permission android.permission.SEND_DOWNLOAD_COMPLETED_INTENTS to package com.android.browser (protectionLevel=2 flags=0x9be45)
2024-01-01 09:00:12.509   464-523   PackageManager          system_process                       W  Not granting permission android.permission.SET_TIME to package com.ubtechinc.alpha2services (protectionLevel=18 flags=0x8be46)
2024-01-01 09:00:12.510   464-523   PackageManager          system_process                       W  Not granting permission android.permission.REBOOT to package com.ubtechinc.alpha2services (protectionLevel=18 flags=0x8be46)
2024-01-01 09:00:12.510   464-523   PackageManager          system_process                       W  Not granting permission android.permission.INSTALL_PACKAGES to package com.ubtechinc.alpha2services (protectionLevel=18 flags=0x8be46)
2024-01-01 09:00:12.510   464-523   PackageManager          system_process                       W  Not granting permission android.permission.DELETE_PACKAGES to package com.ubtechinc.alpha2services (protectionLevel=18 flags=0x8be46)
2024-01-01 09:00:12.510   464-523   PackageManager          system_process                       W  Not granting permission android.permission.MOUNT_UNMOUNT_FILESYSTEMS to package com.ubtechinc.alpha2services (protectionLevel=18 flags=0x8be46)
2024-01-01 09:00:12.510   464-523   PackageManager          system_process                       W  Unknown permission android.permission.ACCESS_SUPERUSER in package com.rockchip.projectx
2024-01-01 09:00:12.510   464-523   PackageManager          system_process                       W  Not granting permission android.permission.BIND_WALLPAPER to package com.android.camera2 (protectionLevel=18 flags=0x58bc45)
2024-01-01 09:00:12.510   464-523   PackageManager          system_process                       W  Not granting permission android.permission.BIND_APPWIDGET to package com.android.launcher3 (protectionLevel=18 flags=0x583e45)
2024-01-01 09:00:12.510   464-523   PackageManager          system_process                       W  Unknown permission android.permission.READ_SETTINGS in package com.android.launcher3
2024-01-01 09:00:12.510   464-523   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.READ_SETTINGS in package com.android.launcher3
2024-01-01 09:00:12.510   464-523   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.WRITE_SETTINGS in package com.android.launcher3
2024-01-01 09:00:12.510   464-523   PackageManager          system_process                       W  Unknown permission com.google.android.googleapps.permission.GOOGLE_AUTH.mail in package com.android.calendar
2024-01-01 09:00:12.510   464-523   PackageManager          system_process                       W  Unknown permission android.permission.FOREGROUND_SERVICE in package com.koushikdutta.vysor
2024-01-01 09:00:12.510   464-523   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.READ_SETTINGS in package com.android.onetimeinitializer
2024-01-01 09:00:12.510   464-523   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.WRITE_SETTINGS in package com.android.onetimeinitializer
2024-01-01 09:00:12.510   464-523   PackageManager          system_process                       W  Unknown permission android.permission.READ_MEDIA_STORAGE in package com.android.packageinstaller
2024-01-01 09:00:12.510   464-523   PackageManager          system_process                       W  Not granting permission android.permission.DELETE_PACKAGES to package com.svox.pico (protectionLevel=18 flags=0x8be45)
2024-01-01 09:00:12.510   464-523   PackageManager          system_process                       W  Unknown permission com.google.android.gallery3d.permission.PICASA_STORE in package com.android.dreams.phototable
2024-01-01 09:00:12.510   464-523   PackageManager          system_process                       W  Unknown permission com.google.android.googleapps.permission.GOOGLE_AUTH in package com.android.settings
2024-01-01 09:00:12.510   464-523   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.READ_SETTINGS in package com.android.settings
2024-01-01 09:00:12.510   464-523   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.WRITE_SETTINGS in package com.android.settings
2024-01-01 09:00:12.511   464-523   PackageManager          system_process                       W  Not granting permission android.permission.DEVICE_POWER to package com.android.deskclock (protectionLevel=2 flags=0x48be45)
2024-01-01 09:00:12.511   464-523   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.READ_SETTINGS in package com.android.systemui
2024-01-01 09:00:12.511   464-523   PackageManager          system_process                       W  Unknown permission com.android.email.permission.READ_ATTACHMENT in package com.android.exchange
2024-01-01 09:00:12.511   464-523   PackageManager          system_process                       W  Unknown permission com.android.email.permission.ACCESS_PROVIDER in package com.android.exchange
2024-01-01 09:00:12.511   464-523   PackageManager          system_process                       W  Unknown permission com.google.android.gallery3d.permission.GALLERY_PROVIDER in package com.android.bluetooth
2024-01-01 09:00:12.511   464-523   PackageManager          system_process                       W  Unknown permission android.permission.MMS_SEND_OUTBOX_MSG in package com.android.bluetooth
2024-01-01 09:00:12.511   464-523   PackageManager          system_process                       W  Unknown permission rockchip.permission.FULL_SCREEN in package android.rk.RockVideoPlayer
2024-01-01 09:00:12.511   464-523   PackageManager          system_process                       W  Unknown permission android.permission.RAISED_THREAD_PRIORITY in package android.rk.RockVideoPlayer
2024-01-01 09:00:12.511   464-523   PackageManager          system_process                       W  Unknown permission android.permission.FULL_SCREEN in package android.rk.RockVideoPlayer
2024-01-01 09:00:12.512   464-523   PackageManager          system_process                       W  Unknown permission archos.permission.FULL_SCREEN in package android.rk.RockVideoPlayer
2024-01-01 09:00:12.547   464-523   PackageSettings         system_process                       W  Skipping PackageSetting{1abe6064 ru.iiec.pydroid3/10063} due to missing metadata
2024-01-01 09:00:12.566   464-523   MountService            system_process                       W  getSecureContainerList() called when storage not mounted
2024-01-01 09:00:12.567   160-192   VoldCmdListener         pid-160                              D  asec list
2024-01-01 09:00:12.567   464-464   SystemServer            system_process                       I  Status Bar
2024-01-01 09:00:12.569   464-464   SystemServer            system_process                       I  Clipboard Service
2024-01-01 09:00:12.571   464-464   SystemServer            system_process                       I  NetworkManagement Service
2024-01-01 09:00:12.576   464-464   SystemServer            system_process                       I  Text Service Manager Service
2024-01-01 09:00:12.583   464-464   SystemServer            system_process                       I  Network Score Service
2024-01-01 09:00:12.584   464-464   SystemServer            system_process                       I  NetworkStats Service
2024-01-01 09:00:12.590   464-464   SystemServer            system_process                       I  NetworkPolicy Service
2024-01-01 09:00:12.597   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.wifi.p2p.WifiP2pService
2024-01-01 09:00:12.622   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.wifi.WifiService
2024-01-01 09:00:12.741   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.wifi.WifiScanningService
2024-01-01 09:00:12.742   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.wifi.RttService
2024-01-01 09:00:12.743   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.ethernet.EthernetService
2024-01-01 09:00:12.747   464-464   SystemServer            system_process                       I  PppoeService
2024-01-01 09:00:12.748   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.pppoe.PppoeService
2024-01-01 09:00:12.752   464-464   SystemServer            system_process                       I  Connectivity Service
2024-01-01 09:00:12.755   464-464   ConnectivityService     system_process                       D  ConnectivityService starting up
2024-01-01 09:00:12.757   464-464   ConnectivityService     system_process                       D  wifiOnly=false
2024-01-01 09:00:12.757   464-464   ConnectivityService     system_process                       E  Ignoring protectedNetwork 14
2024-01-01 09:00:12.764   464-464   SystemServer            system_process                       I  Network Service Discovery Service
2024-01-01 09:00:12.766   464-464   NsdService              system_process                       D  Network service discovery enabled true
2024-01-01 09:00:12.767   464-464   SystemServer            system_process                       I  UpdateLock Service
2024-01-01 09:00:12.813   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.notification.NotificationManagerService
2024-01-01 09:00:12.827   464-464   ZenLog                  system_process                       D  set_zen_mode: off,setting
2024-01-01 09:00:12.829   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.storage.DeviceStorageMonitorService
2024-01-01 09:00:12.831   464-464   SystemServer            system_process                       I  Location Manager
2024-01-01 09:00:12.833   464-464   SystemServer            system_process                       I  Country Detector
2024-01-01 09:00:12.834   464-464   SystemServer            system_process                       I  Search Service
2024-01-01 09:00:12.837   464-464   SystemServer            system_process                       I  DropBox Service
2024-01-01 09:00:12.839   464-464   SystemServer            system_process                       I  Wallpaper Service
2024-01-01 09:00:12.843   464-464   SystemServer            system_process                       I  Audio Service
2024-01-01 09:00:12.873   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.DockObserver
2024-01-01 09:00:12.873   464-464   DockObserver            system_process                       W  This kernel does not have dock station support
2024-01-01 09:00:12.874   464-464   SystemServer            system_process                       I  Wired Accessory Manager
2024-01-01 09:00:12.876   464-464   WiredAccessoryManager   system_process                       W  This kernel does not have wired headset support
2024-01-01 09:00:12.877   464-464   WiredAccessoryManager   system_process                       W  This kernel does not have HDMI audio support
2024-01-01 09:00:12.877   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.usb.UsbService$Lifecycle
2024-01-01 09:00:12.883   464-464   SystemServer            system_process                       I  Serial Service
2024-01-01 09:00:12.883   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.twilight.TwilightService
2024-01-01 09:00:12.887   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.UiModeManagerService
2024-01-01 09:00:12.890   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.job.JobSchedulerService
2024-01-01 09:00:12.896   464-464   JobStore                system_process                       D  job-info
2024-01-01 09:00:12.898   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.backup.BackupManagerService$Lifecycle
2024-01-01 09:00:12.900   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.appwidget.AppWidgetService
2024-01-01 09:00:12.903   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.voiceinteraction.VoiceInteractionManagerService
2024-01-01 09:00:12.906   464-464   SoundTriggerHelper      system_process                       W  listModules status=0, # of modules=0
2024-01-01 09:00:12.906   464-464   SystemServer            system_process                       I  DiskStats Service
2024-01-01 09:00:12.906   464-464   SystemServer            system_process                       I  SamplingProfiler Service
2024-01-01 09:00:12.917   464-464   SystemServer            system_process                       I  NetworkTimeUpdateService
2024-01-01 09:00:12.918   464-464   SystemServer            system_process                       I  CommonTimeManagementService
2024-01-01 09:00:12.919   464-464   SystemServer            system_process                       I  CertBlacklister
2024-01-01 09:00:12.920   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.dreams.DreamManagerService
2024-01-01 09:00:12.922   464-464   SystemServer            system_process                       I  Assets Atlas Service
2024-01-01 09:00:12.923   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.print.PrintManagerService
2024-01-01 09:00:12.927   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.restrictions.RestrictionsManagerService
2024-01-01 09:00:12.928   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.media.MediaSessionService
2024-01-01 09:00:12.933   464-464   SystemServer            system_process                       I  Media Router Service
2024-01-01 09:00:12.934   464-464   SystemServer            system_process                       I  DisplayDeviceManagementService Service
2024-01-01 09:00:12.936   464-464   DisplayDev...entService system_process                       D  DisplayDeviceManagementService start
2024-01-01 09:00:12.937   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.trust.TrustManagerService
2024-01-01 09:00:12.939   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.fingerprint.FingerprintService
2024-01-01 09:00:12.941   464-464   SystemServer            system_process                       I  BackgroundDexOptService
2024-01-01 09:00:12.942   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.pm.LauncherAppsService
2024-01-01 09:00:12.944   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.media.projection.MediaProjectionManagerService
2024-01-01 09:00:13.955   464-464   WindowManagerService    system_process                       W  Devices still not ready after waiting 1000 milliseconds before attempting to detect safe mode.
2024-01-01 09:00:13.956   464-464   SystemServiceManager    system_process                       I  Starting com.android.server.MmsServiceBroker
2024-01-01 09:00:13.968   464-464   LockSettingsStorage     system_process                       E  Cannot read file java.io.FileNotFoundException: /data/system/password.key: open failed: ENOENT (No such file or directory)
2024-01-01 09:00:13.968   464-464   LockSettingsStorage     system_process                       E  Cannot read file java.io.FileNotFoundException: /data/system/gesture.key: open failed: ENOENT (No such file or directory)
2024-01-01 09:00:13.968   464-464   SystemServiceManager    system_process                       I  Starting phase 480
2024-01-01 09:00:13.972   464-464   SystemServiceManager    system_process                       I  Starting phase 500
2024-01-01 09:00:13.972   464-464   WifiService             system_process                       I  WifiService starting up with Wi-Fi enabled
2024-01-01 09:00:13.973   464-464   WifiService             system_process                       D  setWifiEnabled: true pid=464, uid=1000
2024-01-01 09:00:13.973   464-464   WifiService             system_process                       E  Invoking mWifiStateMachine.setWifiEnabled
2024-01-01 09:00:13.981   464-529   WifiService             system_process                       D  New client listening to asynchronous messages
2024-01-01 09:00:13.986   464-464   WifiScanningService     system_process                       D  New client, channel: null messenger: null
2024-01-01 09:00:13.990   464-530   ConnectivityService     system_process                       D  Got NetworkFactory Messenger for Ethernet
2024-01-01 09:00:13.993   464-530   ConnectivityService     system_process                       D  Got NetworkFactory Messenger for PPPOE
2024-01-01 09:00:13.994   464-464   ActivityManagerService  system_process                       I  Config changes=200 {1.0 multiwindowflag=DISABLE dualscreenflag=DISABLE ?mcc?mnc en_US ?layoutDir sw768dp w768dp h951dp 320dpi xlrg port -touch -keyb/v/h -nav/h s.4}
2024-01-01 09:00:13.998   464-464   BackupManagerService    system_process                       V  No ancestral data
2024-01-01 09:00:14.000   464-464   BackupManagerService    system_process                       D  Now staging backup of com.android.browser
2024-01-01 09:00:14.008   464-464   BackupManagerService    system_process                       D  Now staging backup of android
2024-01-01 09:00:14.009   464-464   BackupManagerService    system_process                       D  Now staging backup of com.android.calendar
2024-01-01 09:00:14.011   464-464   BackupManagerService    system_process                       D  Now staging backup of com.android.providers.settings
2024-01-01 09:00:14.012   464-464   BackupManagerService    system_process                       D  Now staging backup of com.android.sharedstoragebackup
2024-01-01 09:00:14.014   464-464   BackupManagerService    system_process                       D  Now staging backup of com.android.providers.userdictionary
2024-01-01 09:00:14.016   464-464   BackupManagerService    system_process                       V  Starting with transport android/com.android.internal.backup.LocalTransport
2024-01-01 09:00:14.016   464-464   BackupManagerService    system_process                       V  Found transports: 1
2024-01-01 09:00:14.016   464-464   BackupManagerService    system_process                       I  Binding to transport host ComponentInfo{android/com.android.internal.backup.LocalTransportService}
2024-01-01 09:00:14.018   464-464   BackupManagerService    system_process                       I  Found stale backup journal, scheduling
2024-01-01 09:00:14.047   464-495   DisplayPowerController  system_process                       D  button lights toggle
2024-01-01 09:00:14.047   464-495   DisplayPowerController  system_process                       D  send timeout msg after 1500
2024-01-01 09:00:14.049   464-495   DisplayPowerController  system_process                       D  button lights toggle
2024-01-01 09:00:14.049   464-495   DisplayPowerController  system_process                       D  send timeout msg after 1500
2024-01-01 09:00:14.054   464-495   DisplayPowerController  system_process                       D  button lights toggle
2024-01-01 09:00:14.054   464-495   DisplayPowerController  system_process                       D  send timeout msg after 1500
2024-01-01 09:00:14.055   464-495   DisplayPowerController  system_process                       D  send timeout msg after 1500
2024-01-01 09:00:14.057   464-464   ActivityManagerService  system_process                       W  Removing no longer valid recent: TaskRecord{31917692 #41 A=ru.iiec.pydroid3 U=0 sz=0}
2024-01-01 09:00:14.061   464-464   AppOps                  system_process                       I  Pruning old package media/1013: new uid=-1
2024-01-01 09:00:14.061   464-464   AppOps                  system_process                       I  Pruning old package ru.iiec.pydroid3/10063: new uid=-1
2024-01-01 09:00:14.061   464-464   ActivityManagerService  system_process                       D  OK, system ready!
2024-01-01 09:00:14.062   464-464   ActivityManagerService  system_process                       I  System now ready
2024-01-01 09:00:14.062   464-564   TaskPersister           system_process                       D  removeObsoleteFile: deleting file=41_task.xml
2024-01-01 09:00:14.062   464-564   TaskPersister           system_process                       D  removeObsoleteFile: deleting file=41_task_thumbnail.png
2024-01-01 09:00:14.063   464-493   DisplayManagerService   system_process                       I  Display device changed: DisplayDeviceInfo{"Built-in Screen": uniqueId="local:0", 1536 x 2048, 61.495003 fps, supportedRefreshRates [61.495003], density 320, 159.89508 x 160.05908 dpi, appVsyncOff 0, presDeadline 17261484, touch INTERNAL, rotation 0, type BUILT_IN, state ON, FLAG_DEFAULT_DISPLAY, FLAG_ROTATES_WITH_CONTENT, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-01-01 09:00:14.063   464-464   ActivityManagerService  system_process                       I  Config changes=40000000 {1.3 multiwindowflag=DISABLE dualscreenflag=DISABLE ?mcc?mnc en_US ?layoutDir sw768dp w768dp h951dp 320dpi xlrg port -touch -keyb/v/h -nav/h s.5}
2024-01-01 09:00:14.066   464-493   WifiDisplayAdapter      system_process                       D  getWifiDisplayStatusLocked: result=WifiDisplayStatus{featureState=1, scanState=0, activeDisplayState=0, activeDisplay=null, displays=[], sessionInfo=WifiDisplaySessionInfo:
                                                                                                        Client/Owner: Client
                                                                                                        GroupId: 
                                                                                                        Passphrase: 
                                                                                                        SessionId: 0
                                                                                                        IP Address: }
2024-01-01 09:00:14.066   464-464   SystemServer            system_process                       I  Making services ready
2024-01-01 09:00:14.066   464-464   SystemServiceManager    system_process                       I  Starting phase 550
2024-01-01 09:00:14.070   464-464   SystemServer            system_process                       I  WebViewFactory preparation
2024-01-01 09:00:14.089   464-464   ActivityManagerService  system_process                       I  Start proc 567:WebViewLoader-armeabi-v7a/1037 [android.webkit.WebViewFactory$RelroFileCreator] for 
2024-01-01 09:00:14.090   464-490   UsbDeviceManager        system_process                       D  Usb state is true true false
2024-01-01 09:00:14.116   464-464   ActivityManagerService  system_process                       I  Start proc 585:com.android.systemui/u0a12 for service com.android.systemui/.SystemUIService
2024-01-01 09:00:14.116   464-521   MountService            system_process                       I  doMountVolume: Mouting /mnt/internal_sd
2024-01-01 09:00:14.117   464-464   NetworkMan...entService system_process                       D  enabling bandwidth control
2024-01-01 09:00:14.117   160-192   VoldCmdListener         pid-160                              D  volume mount /mnt/internal_sd
2024-01-01 09:00:14.117   160-192   Vold                    pid-160                              D   volume status = 1----------------------
2024-01-01 09:00:14.117   160-192   DirectVolume            pid-160                              D  getDeviceNodes mPartIdx = 14, mDiskNumParts = 14.
2024-01-01 09:00:14.117   160-192   Vold                    pid-160                              E  deviceNodes[0]= 0x0000b30e,[1]= 0x00000000,[2]= 0x00000000,[3]= 0x00000000
2024-01-01 09:00:14.117   160-192   Vold                    pid-160                              I  /dev/block/vold/179:14 being considered for volume internal_sd,1
                                                                                                     
2024-01-01 09:00:14.117   160-192   Vold                    pid-160                              D  Volume internal_sd state changing 1 (Idle-Unmounted) -> 3 (Checking)
2024-01-01 09:00:14.119   464-490   MountService            system_process                       I  onEvent:: raw= 605 Volume internal_sd /mnt/internal_sd state changed from 1 (Idle-Unmounted) to 3 (Checking) cooked =  605 Volume internal_sd /mnt/internal_sd state changed from 1 (Idle-Unmounted) to 3 (Checking)
2024-01-01 09:00:14.119   464-490   MountService            system_process                       I  notifyVolumeStateChange::unmounted
2024-01-01 09:00:14.119   464-490   MountService            system_process                       I  updating volume state checking
2024-01-01 09:00:14.119   464-490   MountService            system_process                       D  volume state changed for /mnt/internal_sd (unmounted -> checking)
2024-01-01 09:00:14.119   464-490   MountService            system_process                       D  sendStorageIntent Intent { act=android.intent.action.MEDIA_CHECKING dat=file:///mnt/internal_sd flg=0x4000000 (has extras) } to UserHandle{-1}
2024-01-01 09:00:14.145   464-488   ActivityManagerService  system_process                       I  Start proc 610:android.process.media/u0a4 for broadcast com.android.providers.media/.MtpReceiver
2024-01-01 09:00:14.181   464-565   UsbHostManager          system_process                       D  Added device UsbDevice[mName=/dev/bus/usb/001/003,mVendorId=3468,mProductId=18,mClass=0,mSubclass=0,mProtocol=0,mManufacturerName=C-Media,mProductName=USB Audio92evice,mSerialNumber=20160926,mConfigurations=[
                                                                                                    UsbConfiguration[mId=1,mName=null,mAttributes=128,mMaxPower=50,mInterfaces=[
                                                                                                    UsbInterface[mId=0,mAlternateSetting=0,mName=null,mClass=1,mSubclass=1,mProtocol=0,mEndpoints=[]
                                                                                                    UsbInterface[mId=1,mAlternateSetting=0,mName=null,mClass=1,mSubclass=2,mProtocol=0,mEndpoints=[]
                                                                                                    UsbInterface[mId=1,mAlternateSetting=1,mName=null,mClass=1,mSubclass=2,mProtocol=0,mEndpoints=[
                                                                                                    UsbEndpoint[mAddress=1,mAttributes=9,mMaxPacketSize=200,mInterval=1]]
                                                                                                    UsbInterface[mId=2,mAlternateSetting=0,mName=null,mClass=1,mSubclass=2,mProtocol=0,mEndpoints=[]
                                                                                                    UsbInterface[mId=2,mAlternateSetting=1,mName=null,mClass=1,mSubclass=2,mProtocol=0,mEndpoints=[
                                                                                                    UsbEndpoint[mAddress=130,mAttributes=9,mMaxPacketSize=100,mInterval=1]]
                                                                                                    UsbInterface[mId=3,mAlternateSetting=0,mName=null,mClass=3,mSubclass=0,mProtocol=0,mEndpoints=[
                                                                                                    UsbEndpoint[mAddress=135,mAttributes=3,mMaxPacketSize=4,mInterval=2]]]]
2024-01-01 09:00:14.184   464-565   ContextImpl             system_process                       W  Calling a method in the system process without a qualified user: android.app.ContextImpl.sendBroadcast:1344 com.android.server.usb.UsbSettingsManager.deviceAttached:741 com.android.server.usb.UsbHostManager.endUsbDeviceAdded:224 com.android.server.usb.UsbHostManager.monitorUsbHostBus:-2 com.android.server.usb.UsbHostManager.access$000:42 
2024-01-01 09:00:14.362   464-480   ActivityManagerService  system_process                       I  Start proc 657:android.rockchip.update.service/u0a46 for broadcast android.rockchip.update.service/.RKUpdateReceiver
2024-01-01 09:00:14.480   464-530   ConnectivityService     system_process                       D  Got NetworkFactory Messenger for WIFI
2024-01-01 09:00:14.480   464-530   ConnectivityService     system_process                       D  Got NetworkFactory Messenger for WIFI_UT
2024-01-01 09:00:14.762   464-464   SystemServiceManager    system_process                       I  Starting phase 600
2024-01-01 09:00:14.765   464-464   BackupManagerService    system_process                       I  Backup enabled => false
2024-01-01 09:00:14.765   464-464   BackupManagerService    system_process                       I  Opting out of backup
2024-01-01 09:00:14.770   464-464   InputMetho...gerService system_process                       E  Ignoring setImeWindowStatus due to an invalid token. uid:1000 token:null
2024-01-01 09:00:14.792   464-464   ActivityManagerService  system_process                       I  Start proc 695:com.android.inputmethod.latin/u0a30 for service com.android.inputmethod.latin/.LatinIME
2024-01-01 09:00:14.792   464-464   InputMetho...gerService system_process                       V  Adding window token: android.os.Binder@18533c36
2024-01-01 09:00:14.903   464-464   LocationManagerService  system_process                       W  no network location provider found
2024-01-01 09:00:14.904   464-464   LocationManagerService  system_process                       E  no geocoder provider found
2024-01-01 09:00:14.904   464-464   LocationManagerService  system_process                       E  FLP HAL not supported
2024-01-01 09:00:14.906   464-464   LocationManagerService  system_process                       E  Unable to bind FLP Geofence proxy.
2024-01-01 09:00:14.906   464-464   LocationManagerService  system_process                       E  Hardware Activity-Recognition not supported.
2024-01-01 09:00:14.913   464-464   MmsServiceBroker        system_process                       I  Delay connecting to MmsService until an API is called
2024-01-01 09:00:14.914   464-464   VoiceInter...gerService system_process                       W  no available voice interaction services found for user 0
2024-01-01 09:00:14.914   464-464   VoiceInter...gerService system_process                       W  no available voice recognition services found for user 0
2024-01-01 09:00:14.942   464-464   ActivityManagerService  system_process                       I  Start proc 777:com.cghs.stresstest/1000 for added application com.cghs.stresstest
2024-01-01 09:00:14.971   464-464   ActivityManagerService  system_process                       I  Start proc 804:com.android.phone/1001 for added application com.android.phone
2024-01-01 09:00:14.972   464-464   ActivityStackSupervisor system_process                       I  START u0 {act=android.intent.action.MAIN cat=[android.intent.category.HOME] flg=0x10000000 cmp=com.android.launcher3/.Launcher} from uid 0 on display 0
2024-01-01 09:00:15.013   464-464   ActivityManagerService  system_process                       I  Start proc 823:com.android.launcher3/u0a31 for activity com.android.launcher3/.Launcher
2024-01-01 09:00:15.015   464-464   SystemServer            system_process                       I  Enabled StrictMode for system server main thread.
2024-01-01 09:00:15.016   464-464   ActivityStackSupervisor system_process                       V  Display changed displayId=0
2024-01-01 09:00:15.016   464-464   ActivityStackSupervisor system_process                       V  Display changed displayId=0
2024-01-01 09:00:15.049   160-192   Vold                    pid-160                              I  Filesystem check completed OK
2024-01-01 09:00:15.051   160-192   Vold                    pid-160                              E  ---------set mSkipAsec to enable app2sd because mount Vfat succeed for internal_sd, mountpoint =/mnt/internal_sd
2024-01-01 09:00:15.112   464-487   ActivityManagerService  system_process                       I  Start proc 855:com.android.printspooler/u0a43 for service com.android.printspooler/.model.PrintSpoolerService
2024-01-01 09:00:15.117   464-490   MountService            system_process                       I  onEvent:: raw= 613 internal_sd /mnt/internal_sd "0F63-13DB" cooked =  613 internal_sd /mnt/internal_sd 0F63-13DB
2024-01-01 09:00:15.118   464-490   MountService            system_process                       I  onEvent:: raw= 614 internal_sd /mnt/internal_sd "ALPHA2" cooked =  614 internal_sd /mnt/internal_sd ALPHA2
2024-01-01 09:00:15.128   160-192   Vold                    pid-160                              D  Volume internal_sd state changing 3 (Checking) -> 4 (Mounted)
2024-01-01 09:00:15.136   464-490   MountService            system_process                       I  onEvent:: raw= 605 Volume internal_sd /mnt/internal_sd state changed from 3 (Checking) to 4 (Mounted) cooked =  605 Volume internal_sd /mnt/internal_sd state changed from 3 (Checking) to 4 (Mounted)
2024-01-01 09:00:15.136   464-490   MountService            system_process                       I  notifyVolumeStateChange::checking
2024-01-01 09:00:15.136   464-490   MountService            system_process                       I  updating volume state mounted
2024-01-01 09:00:15.136   464-490   MountService            system_process                       D  volume state changed for /mnt/internal_sd (checking -> mounted)
2024-01-01 09:00:15.136   464-521   VoldConnector           system_process                       E  NDC Command {5 volume mount /mnt/internal_sd} took too long (1020ms)
2024-01-01 09:00:15.137   464-464   ActivityStackSupervisor system_process                       V  Display changed displayId=0
2024-01-01 09:00:15.139   464-490   MountService            system_process                       D  sendStorageIntent Intent { act=android.intent.action.MEDIA_MOUNTED dat=file:///mnt/internal_sd flg=0x4000000 (has extras) } to UserHandle{-1}
2024-01-01 09:00:15.140   464-521   MountService            system_process                       D  sharedvolumeNum: 0 ;avail: false
2024-01-01 09:00:15.145   464-464   ActivityStackSupervisor system_process                       V  Display changed displayId=0
2024-01-01 09:00:15.152   464-464   Telecom                 system_process                       I  TelecomGlobals: TelecomGlobals initializing
2024-01-01 09:00:15.153   160-192   VoldCmdListener         pid-160                              D  asec list
2024-01-01 09:00:15.188   464-883   ActivityManagerService  system_process                       I  Start proc 887:android.process.acore/u0a2 for content provider com.android.providers.contacts/.CallLogProvider
2024-01-01 09:00:15.195   464-481   WifiDisplayAdapter      system_process                       D  getWifiDisplayStatusLocked: result=WifiDisplayStatus{featureState=1, scanState=0, activeDisplayState=0, activeDisplay=null, displays=[], sessionInfo=WifiDisplaySessionInfo:
                                                                                                        Client/Owner: Client
                                                                                                        GroupId: 
                                                                                                        Passphrase: 
                                                                                                        SessionId: 0
                                                                                                        IP Address: }
2024-01-01 09:00:15.207   464-831   WifiDisplayAdapter      system_process                       D  getWifiDisplayStatusLocked: result=WifiDisplayStatus{featureState=1, scanState=0, activeDisplayState=0, activeDisplay=null, displays=[], sessionInfo=WifiDisplaySessionInfo:
                                                                                                        Client/Owner: Client
                                                                                                        GroupId: 
                                                                                                        Passphrase: 
                                                                                                        SessionId: 0
                                                                                                        IP Address: }
2024-01-01 09:00:15.220   464-464   Telecom                 system_process                       I  TelecomGlobals: CallsManager initialized
2024-01-01 09:00:15.221   464-464   ContextImpl             system_process                       W  Calling a method in the system process without a qualified user: android.app.ContextImpl.startService:1709 android.content.ContextWrapper.startService:516 com.android.server.telecom.BluetoothPhoneService.start:440 com.android.server.telecom.TelecomGlobals.initialize:93 com.android.server.telecom.TelecomService.onCreate:164 
2024-01-01 09:00:15.226   464-464   ValidateNoPeople        system_process                       I  skipping global notification
2024-01-01 09:00:15.227   464-464   ValidateNoPeople        system_process                       I  skipping global notification
2024-01-01 09:00:15.229   464-464   ZenLog                  system_process                       D  downtime: Autotrigger skipped: not in downtime
2024-01-01 09:00:15.240   464-464   ResourcesManager        system_process                       W  Asset path '/system/framework/com.android.location.provider.jar' does not exist or contains no resources.
2024-01-01 09:00:15.245   464-464   WiredAccessoryManager   system_process                       V  init()
2024-01-01 09:00:15.258   464-464   WiredAccessoryManager   system_process                       V  newName=usb_audio newState=4 headsetState=4 prev headsetState=0
2024-01-01 09:00:15.263   464-464   WiredAccessoryManager   system_process                       V  cardDeviceName: card=3;device=0
2024-01-01 09:00:15.266   464-464   WiredAccessoryManager   system_process                       V  cardDeviceName: card=3;device=0
2024-01-01 09:00:15.279   464-480   FingerprintService      system_process                       V  startListening(android.service.fingerprint.IFingerprintServiceReceiver$Stub$Proxy@2cc13db5)
2024-01-01 09:00:15.440   464-464   ActivityStackSupervisor system_process                       V  Display changed displayId=0
2024-01-01 09:00:15.441   464-464   BackupManagerService    system_process                       V  Connected to transport ComponentInfo{android/com.android.internal.backup.LocalTransportService}
2024-01-01 09:00:15.441   464-464   BackupManagerService    system_process                       V  Registering transport android/com.android.internal.backup.LocalTransportService::android/com.android.internal.backup.LocalTransport = android.app.backup.BackupTransport$TransportImpl@26c6c052
2024-01-01 09:00:15.485   464-464   WiredAccessoryManager   system_process                       E  setDeviceState() invalid headset type: 4
2024-01-01 09:00:15.528   160-192   VoldCmdListener         pid-160                              D  AsecCmd id:ru.iiec.pydroid3-2
2024-01-01 09:00:15.555   464-495   DisplayPowerController  system_process                       D  MSG_BUTTON_LIGHTS_TIME_OUT
2024-01-01 09:00:15.563   160-192   VoldCmdListener         pid-160                              D  asec fspath ru.iiec.pydroid3-2
2024-01-01 09:00:15.564   160-192   VoldCmdListener         pid-160                              D  asec path ru.iiec.pydroid3-2
2024-01-01 09:00:15.605   160-192   VoldCmdListener         pid-160                              D  asec mount ru.iiec.pydroid3-2 {} 1000 ro
2024-01-01 09:00:15.678   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop0.
2024-01-01 09:00:15.678   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop0.
2024-01-01 09:00:15.678   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/loop0.
2024-01-01 09:00:15.678   160-191   Vold                    pid-160                              W  No volumes handled block event for '/devices/virtual/block/loop0'
2024-01-01 09:00:15.698   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/dm-0.
2024-01-01 09:00:15.698   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/dm-0.
2024-01-01 09:00:15.698   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/dm-0.
2024-01-01 09:00:15.698   160-191   Vold                    pid-160                              W  No volumes handled block event for '/devices/virtual/block/dm-0'
2024-01-01 09:00:15.772   464-480   ActivityManagerService  system_process                       I  Start proc 1011:com.android.smspush/u0a52 for service com.android.smspush/.WapPushManager
2024-01-01 09:00:15.774   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/dm-0.
2024-01-01 09:00:15.774   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/dm-0.
2024-01-01 09:00:15.774   160-191   DirectVolume            pid-160                              D  directvolume DEVPATH = /devices/virtual/block/dm-0.
2024-01-01 09:00:15.774   160-191   Vold                    pid-160                              W  No volumes handled block event for '/devices/virtual/block/dm-0'
2024-01-01 09:00:15.865   464-530   ConnectivityService     system_process                       E  Failed to find Messenger in unregisterNetworkFactory
2024-01-01 09:00:15.867   464-530   ConnectivityService     system_process                       D  Got NetworkFactory Messenger for Telephony
2024-01-01 09:00:16.263   160-192   VoldCmdListener         pid-160                              D  asec path ru.iiec.pydroid3-2
2024-01-01 09:00:16.479   464-527   WifiP2pService          system_process                       E  Unable to change interface settings: java.lang.IllegalStateException: command '22 interface setcfg p2p0 0.0.0.0 0 up' failed with '400 22 Failed to set address (No such device)'
2024-01-01 09:00:16.481   464-493   WifiDisplayController   system_process                       D  Received WIFI_P2P_STATE_CHANGED_ACTION: enabled=true
2024-01-01 09:00:16.481   464-493   WifiDisplayController   system_process                       D  Received WIFI_P2P_CONNECTION_CHANGED_ACTION: networkInfo=[type: WIFI_P2P[], state: UNKNOWN/IDLE, reason: (unspecified), extra: (none), roaming: false, failover: false, isAvailable: true, isConnectedToProvisioningNetwork: false]
2024-01-01 09:00:16.481   464-493   WifiDisplayController   system_process                       D  mDesiredDevice == NULL, So it is a sink device
2024-01-01 09:00:16.481   464-493   WifiDisplayController   system_process                       D  ####onConnectionInfoAvailable(), mWfdEnabled networkInfo.isConnected() false, networkInfo.isConnected() false
2024-01-01 09:00:16.481   464-493   WifiDisplayController   system_process                       D  ######mWifiWFDServicerOn =mWfdEnabled networkInfo.isConnected()falsefalsefalse
2024-01-01 09:00:16.481   464-493   WifiDisplayAdapter      system_process                       D  getWifiDisplayStatusLocked: result=WifiDisplayStatus{featureState=2, scanState=0, activeDisplayState=0, activeDisplay=null, displays=[], sessionInfo=WifiDisplaySessionInfo:
                                                                                                        Client/Owner: Client
                                                                                                        GroupId: 
                                                                                                        Passphrase: 
                                                                                                        SessionId: 0
                                                                                                        IP Address: }
2024-01-01 09:00:16.488   464-493   WifiDisplayController   system_process                       D  Received WIFI_P2P_THIS_DEVICE_CHANGED_ACTION: mThisDevice= Device: Android_abe6
                                                                                                     deviceAddress: 96:a1:a2:37:0a:69
                                                                                                     primary type: 10-0050F204-5
                                                                                                     secondary type: null
                                                                                                     wps: 0
                                                                                                     grpcapab: 0
                                                                                                     devcapab: 0
                                                                                                     status: 3
                                                                                                     wfdInfo: WFD enabled: falseWFD DeviceInfo: 0
                                                                                                     WFD CtrlPort: 0
                                                                                                     WFD MaxThroughput: 0
2024-01-01 09:00:16.728   464-879   WindowManagerService    system_process                       V  Based on layer: Adding window Window{10287864 u0 com.android.launcher3/com.android.launcher3.Launcher} at 0 of 1
2024-01-01 09:00:16.731   464-844   StatusBarManagerService system_process                       I  registerStatusBar bar=com.android.internal.statusbar.IStatusBar$Stub$Proxy@3741eacd
2024-01-01 09:00:17.033   464-488   KeyguardServiceDelegate system_process                       W  onScreenTurnedOn(): no keyguard service!
2024-01-01 09:00:17.093   160-192   VoldCmdListener         pid-160                              D  asec fixperms ru.iiec.pydroid3-2 -1 null
2024-01-01 09:00:17.115   464-831   ActivityManagerService  system_process                       I  Start proc 1233:com.android.externalstorage/u0a5 for broadcast com.android.externalstorage/.MountReceiver
2024-01-01 09:00:17.118   464-499   PackageManager          system_process                       W  Unknown permission com.google.android.googleapps.permission.GOOGLE_AUTH in package com.android.providers.calendar
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Unknown permission com.google.android.googleapps.permission.GOOGLE_AUTH.cl in package com.android.providers.calendar
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Not granting permission android.permission.MOUNT_UNMOUNT_FILESYSTEMS to package com.ubtechinc.alphaenglishchat (protectionLevel=18 flags=0x88be44)
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Not granting permission android.permission.INSTALL_PACKAGES to package com.ubtechinc.alphaenglishchat (protectionLevel=18 flags=0x88be44)
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Not granting permission android.permission.GLOBAL_SEARCH to package com.android.quicksearchbox (protectionLevel=18 flags=0x88be45)
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.READ_SETTINGS in package com.android.winstart
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Not granting permission android.permission.ACCESS_DOWNLOAD_MANAGER to package com.android.browser (protectionLevel=18 flags=0x89be45)
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Not granting permission android.permission.SEND_DOWNLOAD_COMPLETED_INTENTS to package com.android.browser (protectionLevel=2 flags=0x89be45)
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Not granting permission android.permission.SET_TIME to package com.ubtechinc.alpha2services (protectionLevel=18 flags=0x88be46)
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Not granting permission android.permission.REBOOT to package com.ubtechinc.alpha2services (protectionLevel=18 flags=0x88be46)
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Not granting permission android.permission.INSTALL_PACKAGES to package com.ubtechinc.alpha2services (protectionLevel=18 flags=0x88be46)
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Not granting permission android.permission.DELETE_PACKAGES to package com.ubtechinc.alpha2services (protectionLevel=18 flags=0x88be46)
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Not granting permission android.permission.MOUNT_UNMOUNT_FILESYSTEMS to package com.ubtechinc.alpha2services (protectionLevel=18 flags=0x88be46)
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Unknown permission android.permission.ACCESS_SUPERUSER in package com.rockchip.projectx
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Not granting permission android.permission.BIND_WALLPAPER to package com.android.camera2 (protectionLevel=18 flags=0xd8bc45)
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Not granting permission android.permission.BIND_APPWIDGET to package com.android.launcher3 (protectionLevel=18 flags=0xd83e45)
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Unknown permission android.permission.READ_SETTINGS in package com.android.launcher3
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.READ_SETTINGS in package com.android.launcher3
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.WRITE_SETTINGS in package com.android.launcher3
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Unknown permission com.google.android.googleapps.permission.GOOGLE_AUTH.mail in package com.android.calendar
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Unknown permission android.permission.FOREGROUND_SERVICE in package com.koushikdutta.vysor
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.READ_SETTINGS in package com.android.onetimeinitializer
2024-01-01 09:00:17.119   464-499   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.WRITE_SETTINGS in package com.android.onetimeinitializer
2024-01-01 09:00:17.120   464-499   PackageManager          system_process                       W  Unknown permission com.android.vending.BILLING in package ru.iiec.pydroid3
2024-01-01 09:00:17.120   464-499   PackageManager          system_process                       W  Unknown permission com.android.vending.CHECK_LICENSE in package ru.iiec.pydroid3
2024-01-01 09:00:17.120   464-499   PackageManager          system_process                       W  Unknown permission android.permission.ACCESS_SUPERUSER in package ru.iiec.pydroid3
2024-01-01 09:00:17.120   464-499   PackageManager          system_process                       W  Unknown permission android.permission.FOREGROUND_SERVICE in package ru.iiec.pydroid3
2024-01-01 09:00:17.120   464-499   PackageManager          system_process                       W  Unknown permission com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE in package ru.iiec.pydroid3
2024-01-01 09:00:17.120   464-499   PackageManager          system_process                       W  Unknown permission com.google.android.c2dm.permission.RECEIVE in package ru.iiec.pydroid3
2024-01-01 09:00:17.120   464-499   PackageManager          system_process                       W  Unknown permission android.permission.READ_MEDIA_STORAGE in package com.android.packageinstaller
2024-01-01 09:00:17.120   464-499   PackageManager          system_process                       W  Not granting permission android.permission.DELETE_PACKAGES to package com.svox.pico (protectionLevel=18 flags=0x88be45)
2024-01-01 09:00:17.120   464-499   PackageManager          system_process                       W  Unknown permission com.google.android.gallery3d.permission.PICASA_STORE in package com.android.dreams.phototable
2024-01-01 09:00:17.120   464-499   PackageManager          system_process                       W  Unknown permission com.google.android.googleapps.permission.GOOGLE_AUTH in package com.android.settings
2024-01-01 09:00:17.120   464-499   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.READ_SETTINGS in package com.android.settings
2024-01-01 09:00:17.120   464-499   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.WRITE_SETTINGS in package com.android.settings
2024-01-01 09:00:17.137   464-499   PackageManager          system_process                       W  Not granting permission android.permission.DEVICE_POWER to package com.android.deskclock (protectionLevel=2 flags=0xc8be45)
2024-01-01 09:00:17.137   464-499   PackageManager          system_process                       W  Unknown permission com.android.launcher.permission.READ_SETTINGS in package com.android.systemui
2024-01-01 09:00:17.137   464-499   PackageManager          system_process                       W  Unknown permission com.android.email.permission.READ_ATTACHMENT in package com.android.exchange
2024-01-01 09:00:17.137   464-499   PackageManager          system_process                       W  Unknown permission com.android.email.permission.ACCESS_PROVIDER in package com.android.exchange
2024-01-01 09:00:17.138   464-499   PackageManager          system_process                       W  Unknown permission com.google.android.gallery3d.permission.GALLERY_PROVIDER in package com.android.bluetooth
2024-01-01 09:00:17.138   464-499   PackageManager          system_process                       W  Unknown permission android.permission.MMS_SEND_OUTBOX_MSG in package com.android.bluetooth
2024-01-01 09:00:17.138   464-499   PackageManager          system_process                       W  Unknown permission rockchip.permission.FULL_SCREEN in package android.rk.RockVideoPlayer
2024-01-01 09:00:17.138   464-499   PackageManager          system_process                       W  Unknown permission android.permission.RAISED_THREAD_PRIORITY in package android.rk.RockVideoPlayer
2024-01-01 09:00:17.138   464-499   PackageManager          system_process                       W  Unknown permission android.permission.FULL_SCREEN in package android.rk.RockVideoPlayer
2024-01-01 09:00:17.138   464-499   PackageManager          system_process                       W  Unknown permission archos.permission.FULL_SCREEN in package android.rk.RockVideoPlayer
2024-01-01 09:00:17.316   464-464   BackupManagerService    system_process                       D  Received broadcast Intent { act=android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE flg=0x4000010 (has extras) }
2024-01-01 09:00:17.317   464-464   BackupManagerService    system_process                       W  Removing schedule queue dupe of ru.iiec.pydroid3
2024-01-01 09:00:17.320   160-192   VoldCmdListener         pid-160                              D  asec list
2024-01-01 09:00:17.320   160-192   VoldCmdListener         pid-160                              D  AsecCmd id:ru.iiec.pydroid3-2
2024-01-01 09:00:17.345   464-487   VoiceInter...gerService system_process                       W  no available voice recognition services found for user 0
2024-01-01 09:00:17.422   464-480   ActivityManagerService  system_process                       I  Start proc 1263:com.android.music/u0a35 for broadcast com.android.music/.MediaButtonIntentReceiver
2024-01-01 09:00:17.630   464-831   ActivityManagerService  system_process                       I  Start proc 1284:com.ubtechinc.alpha2services/u0a69 for broadcast com.ubtechinc.alpha2services/com.ubtechinc.broadcasts.BootReceiver
2024-01-01 09:00:18.034   464-491   PhoneWindowManager      system_process                       W  Keyguard drawn timeout. Setting mKeyguardDrawComplete
2024-01-01 09:00:18.111   464-529   WifiService             system_process                       D  New client listening to asynchronous messages
2024-01-01 09:00:18.170   464-481   ConnectivityService     system_process                       D  listenForNetwork for NetworkRequest [ id=2, legacyType=-1, [] ]
2024-01-01 09:00:18.826   464-529   WifiService             system_process                       D  New client listening to asynchronous messages
2024-01-01 09:00:18.874   464-528   ConnectivityService     system_process                       D  registerNetworkAgent NetworkAgentInfo{ ni{[type: WIFI[], state: CONNECTING/CONNECTING, reason: (unspecified), extra: "Office2g", roaming: false, failover: false, isAvailable: true, isConnectedToProvisioningNetwork: false]}  network{null}  lp{{LinkAddresses: []  Routes: [] DnsAddresses: [] Domains: null MTU: 0 TcpBufferSizes: 524288,1048576,2097152,262144,524288,1048576}}  nc{[ Transports: WIFI Capabilities: INTERNET&NOT_RESTRICTED&TRUSTED&NOT_VPN LinkUpBandwidth>=1048576Kbps LinkDnBandwidth>=1048576Kbps]}  Score{20}  everValidated{false}  lastValidated{false}  created{false}  explicitlySelected{false} }
2024-01-01 09:00:18.875   464-530   ConnectivityService     system_process                       D  NetworkAgentInfo [WIFI () - 100] EVENT_NETWORK_INFO_CHANGED, going from null to CONNECTING
2024-01-01 09:00:18.918   464-530   ConnectivityService     system_process                       D  updateNetworkScore for NetworkAgentInfo [WIFI () - 100] to 60
2024-01-01 09:00:19.042   464-493   SystemServiceManager    system_process                       I  Starting phase 1000
2024-01-01 09:00:19.631   464-530   ConnectivityService     system_process                       D  NetworkAgentInfo [WIFI () - 100] EVENT_NETWORK_INFO_CHANGED, going from CONNECTING to CONNECTED
2024-01-01 09:00:19.632   464-530   ConnectivityService     system_process                       D  Adding iface wlan0 to network 100
2024-01-01 09:00:19.652   464-530   ConnectivityService     system_process                       E  Unexpected mtu value: 0, wlan0
2024-01-01 09:00:19.652   464-530   ConnectivityService     system_process                       D  Adding Route [fe80::/64 -> :: wlan0] to network 100
2024-01-01 09:00:19.655   464-530   ConnectivityService     system_process                       D  Adding Route [192.168.1.0/24 -> 0.0.0.0 wlan0] to network 100
2024-01-01 09:00:19.657   464-530   ConnectivityService     system_process                       D  Adding Route [0.0.0.0/0 -> 192.168.1.1 wlan0] to network 100
2024-01-01 09:00:19.658   464-530   ConnectivityService     system_process                       D  Setting Dns servers for network 100 to [/192.168.1.1]
2024-01-01 09:00:19.666   464-530   ConnectivityService     system_process                       D  notifyType IP_CHANGED for NetworkAgentInfo [WIFI () - 100]
2024-01-01 09:00:19.671   464-530   ConnectivityService     system_process                       D  notifyType PRECHECK for NetworkAgentInfo [WIFI () - 100]
2024-01-01 09:00:19.671   464-530   ConnectivityService     system_process                       D  rematching NetworkAgentInfo [WIFI () - 100]
2024-01-01 09:00:19.672   464-530   ConnectivityService     system_process                       D  currentScore = 0, newScore = 20
2024-01-01 09:00:19.672   464-530   ConnectivityService     system_process                       D     accepting network in place of null
2024-01-01 09:00:19.672   464-530   ConnectivityService     system_process                       D  Switching to new default network: NetworkAgentInfo{ ni{[type: WIFI[], state: CONNECTED/CONNECTED, reason: (unspecified), extra: "Office2g", roaming: false, failover: false, isAvailable: true, isConnectedToProvisioningNetwork: false]}  network{100}  lp{{InterfaceName: wlan0 LinkAddresses: [fe80::96a1:a2ff:fe37:a69/64,192.168.1.115/24,]  Routes: [fe80::/64 -> :: wlan0,192.168.1.0/24 -> 0.0.0.0 wlan0,0.0.0.0/0 -> 192.168.1.1 wlan0,] DnsAddresses: [192.168.1.1,] Domains: fibertel.com.ar MTU: 0 TcpBufferSizes: 524288,1048576,2097152,262144,524288,1048576}}  nc{[ Transports: WIFI Capabilities: INTERNET&NOT_RESTRICTED&TRUSTED&NOT_VPN LinkUpBandwidth>=1048576Kbps LinkDnBandwidth>=1048576Kbps]}  Score{20}  everValidated{false}  lastValidated{false}  created{true}  explicitlySelected{false} }
2024-01-01 09:00:19.674   464-530   ConnectivityService     system_process                       D  Setting tx/rx TCP buffers to 524288,1048576,2097152,262144,524288,1048576
2024-01-01 09:00:19.677   464-530   ConnectivityService     system_process                       D  notifyType AVAILABLE for NetworkAgentInfo [WIFI () - 100]
2024-01-01 09:00:19.677   464-530   CSLegacyTypeTracker     system_process                       D  Sending connected broadcast for type 1 NetworkAgentInfo [WIFI () - 100] isDefaultNetwork=true
2024-01-01 09:00:19.677   464-530   ConnectivityService     system_process                       D  sendStickyBroadcast: action=android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE
2024-01-01 09:00:19.679   464-530   ConnectivityService     system_process                       D  sendStickyBroadcast: action=android.net.conn.CONNECTIVITY_CHANGE
2024-01-01 09:00:19.685   464-530   ConnectivityService     system_process                       D  setProvNotificationVisibleIntent: E visible=false networkType=0 extraInfo=null
2024-01-01 09:00:19.686   464-530   ConnectivityService     system_process                       D  Validated NetworkAgentInfo [WIFI () - 100]
2024-01-01 09:00:19.686   464-530   ConnectivityService     system_process                       D  rematching NetworkAgentInfo [WIFI () - 100]
2024-01-01 09:00:19.686   464-530   ConnectivityService     system_process                       D  Network NetworkAgentInfo [WIFI () - 100] was already satisfying request 1. No change.
2024-01-01 09:00:19.686   464-530   ConnectivityService     system_process                       D  notifyType AVAILABLE for NetworkAgentInfo [WIFI () - 100]
2024-01-01 09:00:19.690   464-530   ConnectivityService     system_process                       D  sendStickyBroadcast: action=android.net.conn.INET_CONDITION_ACTION
2024-10-23 01:51:25.397   464-488   ActivityManagerService  system_process                       I  Waited long enough for: ServiceRecord{31a805bf u0 com.android.music/.MediaPlaybackService}
2024-10-23 01:51:30.115   464-529   WifiService             system_process                       D  New client listening to asynchronous messages
2024-10-23 01:51:30.188   464-831   ActivityManagerService  system_process                       W  Unable to start service Intent { cmp=com.ubtechinc.alpha2services/com.iflytek.common.LaunchService } U=0: not found
2024-10-23 01:51:30.189  1284-1645  ActivityThread          com.ubtechinc.alpha2services         W  ClassLoader.loadClass: The class loader returned by Thread.getContextClassLoader() may fail for processes that host multiple applications. You should explicitly specify a context class loader. For example: Thread.setContextClassLoader(getClass().getClassLoader());
2024-10-23 01:51:31.013   464-1655  ActivityManagerService  system_process                       I  Start proc 1657:com.android.keychain/1000 for service com.android.keychain/.KeyChainService
2024-10-23 01:51:31.036   464-464   ActivityManagerService  system_process                       I  Start proc 1679:com.android.settings/1000 for broadcast com.android.settings/.HdmiReceiver
2024-10-23 01:51:31.375   464-464   ActivityManagerService  system_process                       I  Start proc 1709:com.android.providers.calendar/u0a1 for broadcast com.android.providers.calendar/.CalendarReceiver
2024-10-23 01:51:31.487  1709-1709  ResourcesManager        com.android.providers.calendar       W  Asset path '/system/framework/android.test.runner.jar' does not exist or contains no resources.
2024-10-23 01:51:31.954   464-485   ActivityManagerService  system_process                       I  Start proc 1759:com.android.managedprovisioning/u0a6 for broadcast com.android.managedprovisioning/.BootReminder
2024-10-23 01:51:32.411   464-983   ActivityManagerService  system_process                       I  Start proc 1786:com.android.onetimeinitializer/u0a8 for broadcast com.android.onetimeinitializer/.OneTimeInitializerReceiver
2024-10-23 01:51:32.630   464-481   ActivityManagerService  system_process                       I  Start proc 1808:com.rock_chips.rockchip_experience/u0a10 for broadcast com.rock_chips.rockchip_experience/.MyReceiver
2024-10-23 01:51:32.767   464-844   ActivityManagerService  system_process                       I  Start proc 1832:com.android.calendar/u0a18 for broadcast com.android.calendar/.alerts.AlertReceiver
2024-10-23 01:51:33.183   464-480   ActivityManagerService  system_process                       I  Start proc 1868:com.android.deskclock/u0a22 for broadcast com.android.deskclock/.AlarmInitReceiver
2024-10-23 01:51:33.715   464-1672  BootReceiver            system_process                       I  Copying /proc/last_kmsg to DropBox (SYSTEM_LAST_KMSG)
2024-10-23 01:51:34.048   464-1672  BootReceiver            system_process                       I  Copying audit failures to DropBox
2024-10-23 01:51:34.060   464-1672  BootReceiver            system_process                       I  Copied 0 worth of audits to DropBox
2024-10-23 01:51:34.199   464-1672  BootReceiver            system_process                       I  Checking for fsck errors
2024-10-23 01:51:34.410   464-485   ActivityManagerService  system_process                       W  Unable to start service Intent { cmp=com.ubtechinc.alpha2services/com.iflytek.common.LaunchService } U=0: not found
2024-10-23 01:51:45.776   464-488   ActivityManagerService  system_process                       I  Waited long enough for: ServiceRecord{86cfabe u0 com.ubtechinc.alpha2services/com.ubtechinc.services.MainService}
2024-10-23 01:51:46.472   464-488   ActivityManagerService  system_process                       I  Waited long enough for: ServiceRecord{316fe2b1 u0 com.ubtechinc.alpha2services/com.alpha2.gesture.GestureService}
2024-10-23 01:51:47.733   464-488   ActivityManagerService  system_process                       I  Waited long enough for: ServiceRecord{2f1f71cd u0 com.rock_chips.rockchip_experience/.OnlineRuPkgService}
2024-10-23 01:51:48.294   464-488   ActivityManagerService  system_process                       I  Waited long enough for: ServiceRecord{2ff11593 u0 com.android.calendar/.alerts.InitAlarmsService}
2024-10-23 01:51:49.427   464-488   ActivityManagerService  system_process                       I  Waited long enough for: ServiceRecord{21175cce u0 android.rockchip.update.service/.RKUpdateService}
2024-10-23 01:51:49.815   464-488   ActivityManagerService  system_process                       I  Waited long enough for: ServiceRecord{1ace37a6 u0 com.ubtechinc.alpha2services/com.ubtechinc.services.Alpha2XmppServices}
--------- beginning of main
2024-10-23 01:52:10.738   464-488   ActivityManagerService  system_process                       I  Start proc 1982:com.android.musicfx/u0a7 for broadcast com.android.musicfx/.ControlPanelReceiver
2024-10-23 01:52:47.419  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:47.428  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659167428
2024-10-23 01:52:47.428  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:47.428  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-10
2024-10-23 01:52:47.429  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentCompareTime=20
2024-10-23 01:52:47.429  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  TimeLayer.mScaleValue=50
2024-10-23 01:52:47.429  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  getmStartTime=500
2024-10-23 01:52:47.429  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  getmEndTime=500
2024-10-23 01:52:47.429  1284-2059  CHEST                   com.ubtechinc.alpha2services         E  f8 8f 1d 02 00 03 78 cd 78 e8 4b 3a 78 41 91 87 78 78 b1 5f 69 78 78 78 57 78 01 f4 b2 ed time = 1407
2024-10-23 01:52:47.429  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=0
2024-10-23 01:52:47.429  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V  EyesLedLayer MotionLayer play current block 2type 0
2024-10-23 01:52:47.430  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 8 type 0
2024-10-23 01:52:47.430  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:47.430  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659167430
2024-10-23 01:52:47.479  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:47.481  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659167481
2024-10-23 01:52:47.481  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:47.481  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=1
2024-10-23 01:52:47.481  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=1
2024-10-23 01:52:47.481  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:47.481  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659167481
2024-10-23 01:52:47.525  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659167525
2024-10-23 01:52:47.525  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:47.525  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-6
2024-10-23 01:52:47.525  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=2
2024-10-23 01:52:47.525  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 9 type 0
2024-10-23 01:52:47.525  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:47.525  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659167525
2024-10-23 01:52:47.573  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659167573
2024-10-23 01:52:47.573  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:47.573  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-2
2024-10-23 01:52:47.573  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=3
2024-10-23 01:52:47.573  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:47.573  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659167573
2024-10-23 01:52:47.578  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:47.599  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:47.611  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659167611
2024-10-23 01:52:47.611  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:47.612  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-12
2024-10-23 01:52:47.612  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=4
2024-10-23 01:52:47.613  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 10 type 0
2024-10-23 01:52:47.615  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:47.616  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659167616
2024-10-23 01:52:47.626  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:47.666  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659167665
2024-10-23 01:52:47.666  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:47.666  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-1
2024-10-23 01:52:47.666  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=5
2024-10-23 01:52:47.666  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:47.666  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659167666
2024-10-23 01:52:47.671  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:47.716  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659167716
2024-10-23 01:52:47.717  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:47.717  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:47.717  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=6
2024-10-23 01:52:47.717  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V  EyesLedLayer MotionLayer play current block 3type 0
2024-10-23 01:52:47.717  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 2 type 0
2024-10-23 01:52:47.717  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:47.718  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659167717
2024-10-23 01:52:47.768  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:47.768  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659167768
2024-10-23 01:52:47.768  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:47.768  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=1
2024-10-23 01:52:47.768  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=7
2024-10-23 01:52:47.768  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:47.768  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659167768
2024-10-23 01:52:47.794  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:47.814  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:47.819  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659167818
2024-10-23 01:52:47.819  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:47.819  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:47.819  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=8
2024-10-23 01:52:47.819  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:47.819  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659167819
2024-10-23 01:52:47.863  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:47.869  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659167869
2024-10-23 01:52:47.869  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:47.870  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:47.870  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=9
2024-10-23 01:52:47.870  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 3 type 0
2024-10-23 01:52:47.870  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:47.870  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659167870
2024-10-23 01:52:47.921  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659167921
2024-10-23 01:52:47.921  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:47.921  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=1
2024-10-23 01:52:47.921  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=10
2024-10-23 01:52:47.921  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:47.921  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659167921
2024-10-23 01:52:47.952  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:47.969  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:47.971  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659167971
2024-10-23 01:52:47.971  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:47.971  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:47.971  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=11
2024-10-23 01:52:47.972  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V  EyesLedLayer MotionLayer play current block 4type 0
2024-10-23 01:52:47.975  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 4 type 0
2024-10-23 01:52:47.980  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:47.980  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659167980
2024-10-23 01:52:47.990  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:48.030  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168030
2024-10-23 01:52:48.030  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.030  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:48.030  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=12
2024-10-23 01:52:48.030  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.030  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168030
2024-10-23 01:52:48.068  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:48.080  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168080
2024-10-23 01:52:48.080  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.080  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:48.080  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=13
2024-10-23 01:52:48.081  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 5 type 0
2024-10-23 01:52:48.081  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.081  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168081
2024-10-23 01:52:48.113  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168113
2024-10-23 01:52:48.113  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.113  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-18
2024-10-23 01:52:48.113  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=14
2024-10-23 01:52:48.113  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.113  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168113
2024-10-23 01:52:48.152  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168152
2024-10-23 01:52:48.153  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.153  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-11
2024-10-23 01:52:48.153  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=15
2024-10-23 01:52:48.153  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 6 type 0
2024-10-23 01:52:48.153  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.153  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168153
2024-10-23 01:52:48.164  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:48.169  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168169
2024-10-23 01:52:48.169  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.169  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-34
2024-10-23 01:52:48.169  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=16
2024-10-23 01:52:48.169  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V  EyesLedLayer MotionLayer play current block 5type 0
2024-10-23 01:52:48.169  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.169  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168169
2024-10-23 01:52:48.203  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:48.210  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! scheduleAtFixedRate
2024-10-23 01:52:48.210  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! getHasLogin=2
2024-10-23 01:52:48.210  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! onLineState=available
2024-10-23 01:52:48.210  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! robotHolder=
2024-10-23 01:52:48.218  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168218
2024-10-23 01:52:48.218  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.218  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-1
2024-10-23 01:52:48.218  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=17
2024-10-23 01:52:48.218  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 7 type 0
2024-10-23 01:52:48.222  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.222  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168222
2024-10-23 01:52:48.229  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:48.251  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:48.263  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168263
2024-10-23 01:52:48.263  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.263  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-9
2024-10-23 01:52:48.263  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=18
2024-10-23 01:52:48.263  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.263  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168263
2024-10-23 01:52:48.313  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168313
2024-10-23 01:52:48.313  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.313  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:48.314  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=19
2024-10-23 01:52:48.314  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 8 type 0
2024-10-23 01:52:48.314  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.314  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168314
2024-10-23 01:52:48.339  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:48.359  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:48.364  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168364
2024-10-23 01:52:48.364  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.364  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:48.364  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentCompareTime=20
2024-10-23 01:52:48.364  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  TimeLayer.mScaleValue=50
2024-10-23 01:52:48.365  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  getmStartTime=500
2024-10-23 01:52:48.365  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  getmEndTime=500
2024-10-23 01:52:48.365  1284-2059  CHEST                   com.ubtechinc.alpha2services         E  f8 8f 1d 02 00 03 78 cd 78 e8 24 3a 78 3f 91 87 78 78 b1 5f 69 78 78 78 78 78 01 f4 aa ed time = 935
2024-10-23 01:52:48.365  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=0
2024-10-23 01:52:48.365  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.365  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168365
2024-10-23 01:52:48.379  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:48.415  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168415
2024-10-23 01:52:48.415  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.415  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:48.415  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=1
2024-10-23 01:52:48.415  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V  EyesLedLayer MotionLayer play current block 6type 0
2024-10-23 01:52:48.415  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 9 type 0
2024-10-23 01:52:48.415  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.416  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168415
2024-10-23 01:52:48.438  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:48.465  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168465
2024-10-23 01:52:48.465  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.465  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:48.465  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=2
2024-10-23 01:52:48.465  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.465  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168465
2024-10-23 01:52:48.513  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168513
2024-10-23 01:52:48.514  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.514  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-2
2024-10-23 01:52:48.514  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=3
2024-10-23 01:52:48.514  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 10 type 0
2024-10-23 01:52:48.524  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.524  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168524
2024-10-23 01:52:48.545  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:48.565  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168565
2024-10-23 01:52:48.565  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.565  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-9
2024-10-23 01:52:48.565  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=4
2024-10-23 01:52:48.566  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.566  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168566
2024-10-23 01:52:48.566  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:48.582  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:48.603  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168603
2024-10-23 01:52:48.603  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.604  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-13
2024-10-23 01:52:48.604  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=5
2024-10-23 01:52:48.605  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 2 type 0
2024-10-23 01:52:48.608  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.608  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168608
2024-10-23 01:52:48.619  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:48.654  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168653
2024-10-23 01:52:48.654  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.654  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-5
2024-10-23 01:52:48.654  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=6
2024-10-23 01:52:48.654  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V  EyesLedLayer MotionLayer play current block 7type 0
2024-10-23 01:52:48.654  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.654  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168654
2024-10-23 01:52:48.703  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168703
2024-10-23 01:52:48.703  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.704  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-1
2024-10-23 01:52:48.704  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=7
2024-10-23 01:52:48.704  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.704  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168704
2024-10-23 01:52:48.721  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:48.734  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:48.749  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:48.754  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168754
2024-10-23 01:52:48.754  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.754  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:48.754  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=8
2024-10-23 01:52:48.754  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 3 type 0
2024-10-23 01:52:48.754  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.754  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168754
2024-10-23 01:52:48.804  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168804
2024-10-23 01:52:48.805  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.805  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:48.805  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=9
2024-10-23 01:52:48.805  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.805  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168805
2024-10-23 01:52:48.810  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:48.855  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168855
2024-10-23 01:52:48.855  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.855  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:48.855  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=10
2024-10-23 01:52:48.855  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 4 type 0
2024-10-23 01:52:48.855  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.855  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168855
2024-10-23 01:52:48.906  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168906
2024-10-23 01:52:48.906  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.906  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=1
2024-10-23 01:52:48.906  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=11
2024-10-23 01:52:48.906  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V  EyesLedLayer MotionLayer play current block 8type 0
2024-10-23 01:52:48.906  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.906  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168906
2024-10-23 01:52:48.925  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:48.948  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:48.957  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168957
2024-10-23 01:52:48.957  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.957  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=1
2024-10-23 01:52:48.957  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=12
2024-10-23 01:52:48.957  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 5 type 0
2024-10-23 01:52:48.960  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.960  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168960
2024-10-23 01:52:48.968  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:48.985  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659168985
2024-10-23 01:52:48.985  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:48.985  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-25
2024-10-23 01:52:48.985  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=13
2024-10-23 01:52:48.985  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:48.986  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659168986
2024-10-23 01:52:49.007  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:49.014  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169014
2024-10-23 01:52:49.014  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.014  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-22
2024-10-23 01:52:49.015  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=14
2024-10-23 01:52:49.015  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 6 type 0
2024-10-23 01:52:49.015  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.015  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169015
2024-10-23 01:52:49.060  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169060
2024-10-23 01:52:49.060  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.061  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-5
2024-10-23 01:52:49.061  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=15
2024-10-23 01:52:49.061  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.061  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169061
2024-10-23 01:52:49.104  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:49.111  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169111
2024-10-23 01:52:49.111  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.111  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:49.111  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=16
2024-10-23 01:52:49.111  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V  EyesLedLayer MotionLayer play current block 9type 0
2024-10-23 01:52:49.111  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 7 type 0
2024-10-23 01:52:49.112  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.112  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169112
2024-10-23 01:52:49.124  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:49.140  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:49.162  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169162
2024-10-23 01:52:49.162  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.162  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:49.162  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=17
2024-10-23 01:52:49.162  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.162  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169162
2024-10-23 01:52:49.199  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:49.203  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169203
2024-10-23 01:52:49.203  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.203  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-9
2024-10-23 01:52:49.203  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=18
2024-10-23 01:52:49.203  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 8 type 0
2024-10-23 01:52:49.204  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.204  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169204
2024-10-23 01:52:49.253  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169253
2024-10-23 01:52:49.253  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.253  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-1
2024-10-23 01:52:49.253  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=19
2024-10-23 01:52:49.253  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.253  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169253
2024-10-23 01:52:49.300  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:49.303  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169303
2024-10-23 01:52:49.303  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.303  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:49.304  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentCompareTime=20
2024-10-23 01:52:49.304  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  TimeLayer.mScaleValue=50
2024-10-23 01:52:49.304  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  getmStartTime=500
2024-10-23 01:52:49.304  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  getmEndTime=500
2024-10-23 01:52:49.304  1284-2059  CHEST                   com.ubtechinc.alpha2services         E  f8 8f 1d 02 00 03 78 cd 78 e8 4b 3a 78 41 91 87 78 78 b1 5f 69 78 78 78 57 78 01 f4 b2 ed time = 940
2024-10-23 01:52:49.304  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=0
2024-10-23 01:52:49.304  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 9 type 0
2024-10-23 01:52:49.307  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.307  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169307
2024-10-23 01:52:49.323  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:49.338  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:49.357  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169357
2024-10-23 01:52:49.357  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.357  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:49.358  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=1
2024-10-23 01:52:49.358  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V  EyesLedLayer MotionLayer play current block 10type 0
2024-10-23 01:52:49.358  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.358  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169358
2024-10-23 01:52:49.387  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:49.408  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169408
2024-10-23 01:52:49.408  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.408  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:49.408  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=2
2024-10-23 01:52:49.408  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 10 type 0
2024-10-23 01:52:49.408  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.408  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169408
2024-10-23 01:52:49.458  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169458
2024-10-23 01:52:49.458  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.458  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:49.458  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=3
2024-10-23 01:52:49.458  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.459  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169459
2024-10-23 01:52:49.490  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:49.503  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:49.509  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169509
2024-10-23 01:52:49.509  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.509  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:49.509  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=4
2024-10-23 01:52:49.509  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 2 type 0
2024-10-23 01:52:49.509  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.509  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169509
2024-10-23 01:52:49.517  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:49.535  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169535
2024-10-23 01:52:49.535  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.535  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-24
2024-10-23 01:52:49.535  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=5
2024-10-23 01:52:49.535  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.535  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169535
2024-10-23 01:52:49.565  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169565
2024-10-23 01:52:49.565  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.565  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-20
2024-10-23 01:52:49.565  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=6
2024-10-23 01:52:49.565  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V  EyesLedLayer MotionLayer play current block 11type 0
2024-10-23 01:52:49.566  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.566  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169566
2024-10-23 01:52:49.582  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:49.616  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169616
2024-10-23 01:52:49.616  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.616  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:49.616  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=7
2024-10-23 01:52:49.616  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 3 type 0
2024-10-23 01:52:49.616  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.616  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169616
2024-10-23 01:52:49.666  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169666
2024-10-23 01:52:49.666  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.666  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:49.667  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=8
2024-10-23 01:52:49.667  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.667  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169667
2024-10-23 01:52:49.688  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:49.712  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:49.716  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169715
2024-10-23 01:52:49.716  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.716  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-2
2024-10-23 01:52:49.716  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=9
2024-10-23 01:52:49.716  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 4 type 0
2024-10-23 01:52:49.716  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.716  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169716
2024-10-23 01:52:49.729  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:49.733  1192-1214  art                     pid-1192                             I  Debugger is no longer active
2024-10-23 01:52:49.745  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169745
2024-10-23 01:52:49.745  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.745  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-21
2024-10-23 01:52:49.745  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=10
2024-10-23 01:52:49.746  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.746  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169746
2024-10-23 01:52:49.774  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:49.796  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169796
2024-10-23 01:52:49.796  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.796  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:49.796  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=11
2024-10-23 01:52:49.796  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V  EyesLedLayer MotionLayer play current block 2type 0
2024-10-23 01:52:49.796  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 5 type 0
2024-10-23 01:52:49.797  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.797  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169797
2024-10-23 01:52:49.847  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169847
2024-10-23 01:52:49.847  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.847  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:49.847  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=12
2024-10-23 01:52:49.847  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.847  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169847
2024-10-23 01:52:49.887  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:49.898  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169898
2024-10-23 01:52:49.898  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.898  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=1
2024-10-23 01:52:49.898  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=13
2024-10-23 01:52:49.898  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 6 type 0
2024-10-23 01:52:49.898  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.898  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169898
2024-10-23 01:52:49.921  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:49.948  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169948
2024-10-23 01:52:49.948  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.948  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:49.948  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=14
2024-10-23 01:52:49.948  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.948  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169948
2024-10-23 01:52:49.952  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:49.974  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:49.987  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659169987
2024-10-23 01:52:49.987  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:49.987  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-11
2024-10-23 01:52:49.987  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=15
2024-10-23 01:52:49.987  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 7 type 0
2024-10-23 01:52:49.988  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:49.988  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659169988
2024-10-23 01:52:50.038  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170038
2024-10-23 01:52:50.038  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.038  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:50.038  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=16
2024-10-23 01:52:50.039  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.039  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170039
2024-10-23 01:52:50.061  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:50.076  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:50.089  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170089
2024-10-23 01:52:50.089  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.089  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:50.089  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=17
2024-10-23 01:52:50.090  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V  EyesLedLayer MotionLayer play current block 3type 0
2024-10-23 01:52:50.090  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:50.091  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 8 type 0
2024-10-23 01:52:50.091  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.091  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170091
2024-10-23 01:52:50.120  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170120
2024-10-23 01:52:50.120  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.120  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-21
2024-10-23 01:52:50.120  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=18
2024-10-23 01:52:50.120  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.121  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170120
2024-10-23 01:52:50.153  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:50.171  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170171
2024-10-23 01:52:50.171  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.171  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=1
2024-10-23 01:52:50.171  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=19
2024-10-23 01:52:50.171  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 9 type 0
2024-10-23 01:52:50.171  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.171  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170171
2024-10-23 01:52:50.220  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170220
2024-10-23 01:52:50.220  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.220  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-1
2024-10-23 01:52:50.220  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentCompareTime=20
2024-10-23 01:52:50.221  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  TimeLayer.mScaleValue=50
2024-10-23 01:52:50.221  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  getmStartTime=500
2024-10-23 01:52:50.221  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  getmEndTime=500
2024-10-23 01:52:50.221  1284-2059  CHEST                   com.ubtechinc.alpha2services         E  f8 8f 1d 02 00 03 78 cd 78 e8 24 3a 78 3f 91 87 78 78 b1 5f 69 78 78 78 78 78 01 f4 aa ed time = 916
2024-10-23 01:52:50.221  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=0
2024-10-23 01:52:50.221  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.221  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170221
2024-10-23 01:52:50.256  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:50.271  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170271
2024-10-23 01:52:50.271  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.271  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:50.271  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=1
2024-10-23 01:52:50.271  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 10 type 0
2024-10-23 01:52:50.276  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:50.280  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.281  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170280
2024-10-23 01:52:50.294  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:50.331  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170331
2024-10-23 01:52:50.331  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.331  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=1
2024-10-23 01:52:50.331  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=2
2024-10-23 01:52:50.331  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V  EyesLedLayer MotionLayer play current block 4type 0
2024-10-23 01:52:50.332  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.332  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170332
2024-10-23 01:52:50.349  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:50.382  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170382
2024-10-23 01:52:50.382  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.382  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:50.382  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=3
2024-10-23 01:52:50.383  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 2 type 0
2024-10-23 01:52:50.383  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.383  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170383
2024-10-23 01:52:50.433  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170433
2024-10-23 01:52:50.433  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.433  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:50.433  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=4
2024-10-23 01:52:50.434  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.434  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170434
2024-10-23 01:52:50.466  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170466
2024-10-23 01:52:50.466  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.466  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-18
2024-10-23 01:52:50.466  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=5
2024-10-23 01:52:50.466  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.466  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170466
2024-10-23 01:52:50.471  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:50.496  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170496
2024-10-23 01:52:50.496  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.496  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-20
2024-10-23 01:52:50.496  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=6
2024-10-23 01:52:50.497  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 3 type 0
2024-10-23 01:52:50.497  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.497  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170497
2024-10-23 01:52:50.498  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:50.525  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:50.537  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170537
2024-10-23 01:52:50.537  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.537  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-10
2024-10-23 01:52:50.537  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=7
2024-10-23 01:52:50.537  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V  EyesLedLayer MotionLayer play current block 5type 0
2024-10-23 01:52:50.537  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.537  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170537
2024-10-23 01:52:50.550  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:50.583  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170583
2024-10-23 01:52:50.583  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.583  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-4
2024-10-23 01:52:50.583  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=8
2024-10-23 01:52:50.583  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 4 type 0
2024-10-23 01:52:50.583  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.583  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170583
2024-10-23 01:52:50.633  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170633
2024-10-23 01:52:50.633  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.633  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:50.633  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=9
2024-10-23 01:52:50.633  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.634  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170633
2024-10-23 01:52:50.648  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:50.675  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:50.684  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170684
2024-10-23 01:52:50.684  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.684  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=1
2024-10-23 01:52:50.684  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=10
2024-10-23 01:52:50.684  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 5 type 0
2024-10-23 01:52:50.690  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.690  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170690
2024-10-23 01:52:50.703  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:50.725  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170725
2024-10-23 01:52:50.725  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.725  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-15
2024-10-23 01:52:50.726  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=11
2024-10-23 01:52:50.726  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.726  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170726
2024-10-23 01:52:50.738  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:50.776  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170776
2024-10-23 01:52:50.776  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.776  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:50.776  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=12
2024-10-23 01:52:50.776  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V  EyesLedLayer MotionLayer play current block 6type 0
2024-10-23 01:52:50.776  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 6 type 0
2024-10-23 01:52:50.776  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.776  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170776
2024-10-23 01:52:50.797  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170797
2024-10-23 01:52:50.797  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.797  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-29
2024-10-23 01:52:50.797  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=13
2024-10-23 01:52:50.797  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.797  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170797
2024-10-23 01:52:50.822  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170822
2024-10-23 01:52:50.822  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.822  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-25
2024-10-23 01:52:50.822  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=14
2024-10-23 01:52:50.822  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 7 type 0
2024-10-23 01:52:50.823  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.823  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170823
2024-10-23 01:52:50.832  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:50.844  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:50.857  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:50.863  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170863
2024-10-23 01:52:50.863  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.863  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-10
2024-10-23 01:52:50.863  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=15
2024-10-23 01:52:50.863  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.863  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170863
2024-10-23 01:52:50.904  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170903
2024-10-23 01:52:50.904  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.904  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-10
2024-10-23 01:52:50.904  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=16
2024-10-23 01:52:50.904  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 8 type 0
2024-10-23 01:52:50.904  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.905  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170905
2024-10-23 01:52:50.922  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:50.955  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659170955
2024-10-23 01:52:50.955  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:50.955  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:50.955  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=17
2024-10-23 01:52:50.955  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V  EyesLedLayer MotionLayer play current block 7type 0
2024-10-23 01:52:50.955  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:50.955  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659170955
2024-10-23 01:52:51.006  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171006
2024-10-23 01:52:51.006  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.006  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=1
2024-10-23 01:52:51.006  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=18
2024-10-23 01:52:51.006  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 9 type 0
2024-10-23 01:52:51.006  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.006  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171006
2024-10-23 01:52:51.024  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:51.041  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:51.056  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171056
2024-10-23 01:52:51.056  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.057  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:51.057  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=19
2024-10-23 01:52:51.057  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.057  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171057
2024-10-23 01:52:51.057  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:51.107  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171107
2024-10-23 01:52:51.107  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.107  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:51.107  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentCompareTime=20
2024-10-23 01:52:51.107  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  TimeLayer.mScaleValue=50
2024-10-23 01:52:51.107  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  getmStartTime=1000
2024-10-23 01:52:51.107  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  getmEndTime=0
2024-10-23 01:52:51.108  1284-2059  CHEST                   com.ubtechinc.alpha2services         E  f8 8f 1d 02 00 03 78 cd 78 78 23 78 78 3f 91 87 78 78 b1 5f 69 78 78 78 78 78 03 e8 6d ed time = 887
2024-10-23 01:52:51.108  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=0
2024-10-23 01:52:51.108  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 10 type 0
2024-10-23 01:52:51.112  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.112  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171112
2024-10-23 01:52:51.134  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:51.162  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171162
2024-10-23 01:52:51.162  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.162  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:51.162  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=1
2024-10-23 01:52:51.162  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.162  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171162
2024-10-23 01:52:51.207  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171207
2024-10-23 01:52:51.207  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.207  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-5
2024-10-23 01:52:51.209  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=2
2024-10-23 01:52:51.209  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V  EyesLedLayer MotionLayer play current block 8type 0
2024-10-23 01:52:51.212  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 2 type 0
2024-10-23 01:52:51.212  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.212  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171212
2024-10-23 01:52:51.231  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:51.252  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:51.261  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171261
2024-10-23 01:52:51.261  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.261  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-1
2024-10-23 01:52:51.261  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=3
2024-10-23 01:52:51.261  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.261  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171261
2024-10-23 01:52:51.270  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:51.293  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171293
2024-10-23 01:52:51.293  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.293  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-18
2024-10-23 01:52:51.293  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=4
2024-10-23 01:52:51.293  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.293  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171293
2024-10-23 01:52:51.307  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:51.328  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171328
2024-10-23 01:52:51.328  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.328  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-15
2024-10-23 01:52:51.328  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=5
2024-10-23 01:52:51.328  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 3 type 0
2024-10-23 01:52:51.328  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.328  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171328
2024-10-23 01:52:51.378  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171378
2024-10-23 01:52:51.379  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.379  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:51.379  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=6
2024-10-23 01:52:51.379  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.379  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171379
2024-10-23 01:52:51.404  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:51.418  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:51.429  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171429
2024-10-23 01:52:51.429  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.429  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:51.429  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=7
2024-10-23 01:52:51.429  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V  EyesLedLayer MotionLayer play current block 9type 0
2024-10-23 01:52:51.429  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 4 type 0
2024-10-23 01:52:51.429  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.429  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171429
2024-10-23 01:52:51.433  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:51.479  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171479
2024-10-23 01:52:51.480  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.480  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:51.480  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=8
2024-10-23 01:52:51.480  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.480  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171480
2024-10-23 01:52:51.500  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:51.530  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171530
2024-10-23 01:52:51.530  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.530  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:51.530  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=9
2024-10-23 01:52:51.530  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 5 type 0
2024-10-23 01:52:51.530  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.530  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171530
2024-10-23 01:52:51.581  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171581
2024-10-23 01:52:51.581  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.581  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=1
2024-10-23 01:52:51.581  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=10
2024-10-23 01:52:51.581  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.581  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171581
2024-10-23 01:52:51.597  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:51.613  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:51.614  1284-1284  tts                     com.ubtechinc.alpha2services         D  ttsGenerationFinished for text = "Thank you! Hope you like my show. Now you can download the Alpha 2 APP from the User guide and help me connect to the Internet. " (success = true).
2024-10-23 01:52:51.627  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:51.631  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171631
2024-10-23 01:52:51.631  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.631  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:51.633  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=11
2024-10-23 01:52:51.633  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 6 type 0
2024-10-23 01:52:51.633  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.633  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171633
2024-10-23 01:52:51.683  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171683
2024-10-23 01:52:51.683  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.683  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:51.684  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=12
2024-10-23 01:52:51.684  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V  EyesLedLayer MotionLayer play current block 10type 0
2024-10-23 01:52:51.684  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.684  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171684
2024-10-23 01:52:51.691  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:51.734  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171734
2024-10-23 01:52:51.734  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.734  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:51.734  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=13
2024-10-23 01:52:51.734  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 7 type 0
2024-10-23 01:52:51.734  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.734  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171734
2024-10-23 01:52:51.785  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171785
2024-10-23 01:52:51.785  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.785  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=1
2024-10-23 01:52:51.785  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=14
2024-10-23 01:52:51.785  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.785  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171785
2024-10-23 01:52:51.797  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:51.817  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:51.831  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:51.836  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171836
2024-10-23 01:52:51.836  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.836  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=1
2024-10-23 01:52:51.836  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=15
2024-10-23 01:52:51.836  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 8 type 0
2024-10-23 01:52:51.836  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.836  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171836
2024-10-23 01:52:51.881  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:51.883  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171883
2024-10-23 01:52:51.883  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.883  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-3
2024-10-23 01:52:51.883  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=16
2024-10-23 01:52:51.883  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.884  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171883
2024-10-23 01:52:51.925  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171925
2024-10-23 01:52:51.925  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.925  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-8
2024-10-23 01:52:51.925  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=17
2024-10-23 01:52:51.925  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V  EyesLedLayer MotionLayer play current block 11type 0
2024-10-23 01:52:51.926  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 9 type 0
2024-10-23 01:52:51.926  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.926  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171926
2024-10-23 01:52:51.946  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171946
2024-10-23 01:52:51.946  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.946  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=-30
2024-10-23 01:52:51.946  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  currentTime=18
2024-10-23 01:52:51.946  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.946  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171946
2024-10-23 01:52:51.982  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:51.996  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659171996
2024-10-23 01:52:51.996  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:51.996  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:51.996  1284-2059  ActionLayerPlay         com.ubtechinc.alpha2services         V   EarsLedLayer play current block 10 type 0
2024-10-23 01:52:51.996  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:51.996  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659171996
2024-10-23 01:52:52.000  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:52.016  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:52.020  1284-1743  CHEST                   com.ubtechinc.alpha2services         I  f8 8f 09 00 00 80 01 34 be ed 
2024-10-23 01:52:52.021  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.chest
2024-10-23 01:52:52.022  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!! powerValue=52
2024-10-23 01:52:52.030  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         I  ches cmd = -128
2024-10-23 01:52:52.046  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659172046
2024-10-23 01:52:52.047  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:52.047  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:52.047  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  !!mScaleValue=50
2024-10-23 01:52:52.047  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  startTime=1729659172047
2024-10-23 01:52:52.077  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:52.097  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  endTime=1729659172097
2024-10-23 01:52:52.097  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  cycle=10
2024-10-23 01:52:52.097  1284-2059  CHEST                   com.ubtechinc.alpha2services         D  diff=0
2024-10-23 01:52:52.097  1284-2059  test                    com.ubtechinc.alpha2services         V  mIsComplete = true;
2024-10-23 01:52:52.142  1284-2056  test                    com.ubtechinc.alpha2services         V  mControls.isComplete
2024-10-23 01:52:52.142  1284-2056  ConnectMapThreadManager com.ubtechinc.alpha2services         V  completed run
2024-10-23 01:52:52.142  1284-2056  <no-tag>                com.ubtechinc.alpha2services         D  !!!! break
2024-10-23 01:52:52.142  1284-2056  ConnectMapThread        com.ubtechinc.alpha2services         V  ConnectMapThread exit!!!
2024-10-23 01:52:52.202  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:52.224  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:52.232  1284-2055  ConnectMapThreadManager com.ubtechinc.alpha2services         V  no thread run, completed run
2024-10-23 01:52:52.232  1284-2055  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!!!!!! PlayCompleted
2024-10-23 01:52:52.232  1284-2055  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!! onActionStop list.length=2
2024-10-23 01:52:52.232  1284-2055  AlphaEventManager       com.ubtechinc.alpha2services         D   onEventStop event.index=0
2024-10-23 01:52:52.232  1284-2055  AlphaEventManager       com.ubtechinc.alpha2services         D   mEventQueue.length=0 State = 4
2024-10-23 01:52:52.233  1284-2055  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!!!!!! mClientListener 1
2024-10-23 01:52:52.233  1284-2055  AlphaEventManager       com.ubtechinc.alpha2services         D   onEventStop event.index=0
2024-10-23 01:52:52.233  1284-2055  AlphaEventManager       com.ubtechinc.alpha2services         D   mEventQueue.length=0 State = 4
2024-10-23 01:52:52.233  1284-2055  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!!!!!! mClientListener 1
2024-10-23 01:52:52.234  1284-2055  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!!!!! start eye led
2024-10-23 01:52:52.234  1284-2055  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         V  alpha2actionFisih()挥左手
2024-10-23 01:52:52.236  1284-2055  Alpha2FirstimeBoot      com.ubtechinc.alpha2services         V  setActionFinished() : actionFinished :true isTTSFinished :false State : StateGuide
2024-10-23 01:52:52.237  1284-2055  SpeechManager           com.ubtechinc.alpha2services         I  setStartEarLed 
2024-10-23 01:52:52.237  1284-2055  ConnectMapThreadManager com.ubtechinc.alpha2services         V  Thread exist
2024-10-23 01:52:52.250  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:52.273  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:52.374  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:52.395  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:52.410  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:52.453   464-528   WifiStateMachine        system_process                       E  WifiStateMachine CMD_START_SCAN source -2 txSuccessRate=2.23 rxSuccessRate=1.49 targetRoamBSSID=74:d0:2b:42:fe:a0 RSSI=-60
2024-10-23 01:52:52.453   464-528   WifiStateMachine        system_process                       E  startDelayedScan send -> 9 milli 20000
2024-10-23 01:52:52.454   464-528   WifiStateMachine        system_process                       E  WifiStateMachine CMD_START_SCAN with age=20002 interval=45000 maxinterval=300000
2024-10-23 01:52:52.454   464-528   WifiStateMachine        system_process                       E  WifiStateMachine CMD_START_SCAN full=false
2024-10-23 01:52:52.454   464-528   WifiStateMachine        system_process                       E  WifiStateMachine starting scan for "Office2g"WPA_PSK with 2437
2024-10-23 01:52:52.454   464-528   WifiStateMachine        system_process                       E  [1,729,659,172,454 ms] noteScanstart no scan source uid -2
2024-10-23 01:52:52.461  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:52.562  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:52.578  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:52.591  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:52.649  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:52.670   464-528   WifiStateMachine        system_process                       E  [1,729,659,172,669 ms] noteScanEnd no scan source onTime=0
2024-10-23 01:52:52.674   464-528   WifiStateMachine        system_process                       E  wifi setScanResults statecom.android.server.wifi.WifiStateMachine$ConnectedState@3dbfcd72 sup_state=COMPLETED debouncing=false mConnectionRequests=1 selection=<none>
2024-10-23 01:52:52.747  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:52.761  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:52.774  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:52.778  1284-1897  SpeechManager           com.ubtechinc.alpha2services         D  what:4
2024-10-23 01:52:52.780  1284-1897  SpeechManager           com.ubtechinc.alpha2services         D  START_EARLED
2024-10-23 01:52:52.784  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.LED_ACTION
2024-10-23 01:52:52.785  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!! control_type:1
2024-10-23 01:52:52.785  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!! LED_type=ear_led LED_state=open_led
2024-10-23 01:52:52.785  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!!!!! start ear led
2024-10-23 01:52:52.854  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:52.965  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:52.985  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:52.999  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.035  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.175  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.192  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.209  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.227  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.245  1284-2057  NMT                     com.ubtechinc.alpha2services         W  Player stalled
2024-10-23 01:52:53.246  1284-1284  tts                     com.ubtechinc.alpha2services         D  ttsStreamingFinished for text = "Thank you! Hope you like my show. Now you can download the Alpha 2 APP from the User guide and help me connect to the Internet. ".
2024-10-23 01:52:53.247  1284-1284  tts                     com.ubtechinc.alpha2services         D  onStopped
2024-10-23 01:52:53.247  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  !!!!!! nuance StopTTSPlay
2024-10-23 01:52:53.248  1284-2062  Nuance                  com.ubtechinc.alpha2services         D  !!!!!! nuance onTTsComplete
2024-10-23 01:52:53.248  1284-2062  SpeechManager           com.ubtechinc.alpha2services         D  onTTsComplete mSpeechState:SPEECH_STATE_GRAMMAR
2024-10-23 01:52:53.249  1284-1897  SpeechManager           com.ubtechinc.alpha2services         D  what:1
2024-10-23 01:52:53.250  1284-1897  SpeechManager           com.ubtechinc.alpha2services         D  SpeechManager onServerPlayEnd
2024-10-23 01:52:53.251  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.LED_ACTION
2024-10-23 01:52:53.251  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!! control_type:1
2024-10-23 01:52:53.251  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!! LED_type=eye_led LED_state=close_led
2024-10-23 01:52:53.251  1284-1897  AlphaEventManager       com.ubtechinc.alpha2services         D   onEventStop event.index=0
2024-10-23 01:52:53.251  1284-1897  AlphaEventManager       com.ubtechinc.alpha2services         D   mEventQueue.length=0 State = 4
2024-10-23 01:52:53.251  1284-1897  SpeechManager           com.ubtechinc.alpha2services         D  SpeechMainUtil onServerPlayEnd
2024-10-23 01:52:53.251  1284-1897  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!!!!!!!!!!!! onServerPlayEnd
2024-10-23 01:52:53.251  1284-1897  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         V  alpha2TTsFinish :true
2024-10-23 01:52:53.252  1284-2062  SpeechManager           com.ubtechinc.alpha2services         D  进入识别
2024-10-23 01:52:53.253  1284-1897  Alpha2FirstimeBoot      com.ubtechinc.alpha2services         V  setTTSFinished() : actionFinished :true isTTSFinished :true State : StateGuide
2024-10-23 01:52:53.253  1284-2062  Nuance                  com.ubtechinc.alpha2services         D  ASR startSpeechASR
2024-10-23 01:52:53.253  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR handler 5
2024-10-23 01:52:53.794  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:52:53.794  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  mAudioSource == null
2024-10-23 01:52:53.794  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=Listening...
2024-10-23 01:52:53.795  1284-1284  CustomAudioSource       com.ubtechinc.alpha2services         D  setisWorking=true
2024-10-23 01:52:53.935  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.935  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:53.937  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.937  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:53.939  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.939  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:53.941  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.941  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:53.942  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.942  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:53.944  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.944  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:53.945  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.945  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:53.949  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.950  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:53.953  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.954  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:53.955  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.955  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:53.956  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.956  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:53.957  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.957  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:53.958  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.958  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:53.959  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.959  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:53.960  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.961  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:53.994  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:53.994  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:54.123  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:54.123  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:54.138  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:54.138  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:54.148  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:54.148  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:54.183  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:54.183  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:54.313  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:54.313  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:54.334  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:54.334  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:54.351  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:54.351  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:54.383  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:54.383  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:54.488  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:54.488  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:54.505  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:54.506  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:54.517  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:54.518  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:54.567  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:54.567  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:54.686  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:54.686  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:54.703  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:54.703  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:54.718  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:54.718  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:54.759  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:54.759  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:54.864  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:54.865  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:54.883  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:54.883  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:54.897  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:54.897  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:54.951  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:54.952  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:55.056  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:55.056  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:55.068  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:55.069  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:55.080  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:55.080  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:55.152  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:55.152  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:55.262  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:55.262  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:55.284  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:55.284  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:55.305  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:55.306  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:55.342  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:55.342  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:55.447  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:55.447  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:55.466  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:55.466  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:55.483  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:55.483  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:55.551  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:55.551  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:55.644  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:55.644  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:55.663  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:55.663  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:55.675  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:55.675  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:55.719  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:55.719  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:55.824  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:55.824  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:55.843  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:55.843  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:55.859  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:55.859  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:55.911  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:55.911  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:56.045  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:56.046  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:56.064  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:56.064  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:56.087  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:56.087  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:56.105  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:56.105  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:56.203  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:56.203  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:56.216  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:56.216  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:56.226  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:56.226  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:56.314  1284-1284  Alpha2Connection        com.ubtechinc.alpha2services         D  LAUNCH THE QR APP
2024-10-23 01:52:56.314  1284-1284  Alpha2Connection        com.ubtechinc.alpha2services         D  enter the alpha2connection process beginning
2024-10-23 01:52:56.316   464-480   BluetoothManagerService system_process                       D  checkIfCallerIsForegroundUser: valid=true callingUser=0 parentUser=-10000 foregroundUser=0
2024-10-23 01:52:56.316   464-480   BluetoothManagerService system_process                       D  enable():  mBluetooth =null mBinding = false
2024-10-23 01:52:56.328   464-492   BluetoothManagerService system_process                       D  Message: 1
2024-10-23 01:52:56.328   464-492   BluetoothManagerService system_process                       D  MESSAGE_ENABLE: mBluetooth = null
2024-10-23 01:52:56.328  1284-1284  Alpha2Connection        com.ubtechinc.alpha2services         D  enter the alpha2connection process ending
2024-10-23 01:52:56.330  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  Brian bt connection
2024-10-23 01:52:56.330  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:56.330  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:56.332  1284-1284  Alpha2Connection        com.ubtechinc.alpha2services         D  Wifi enabled
2024-10-23 01:52:56.336  1284-1284  Alpha2Connection        com.ubtechinc.alpha2services         D   wifiConnectSuccess
2024-10-23 01:52:56.338  1284-1932  Alpha2Connection        com.ubtechinc.alpha2services         D  startPing
2024-10-23 01:52:56.338  1284-1284  CHEST                   com.ubtechinc.alpha2services         E  f8 8f 08 01 00 14 01 1e ed time = 5230
2024-10-23 01:52:56.339  1284-1284  Alpha2Connection        com.ubtechinc.alpha2services         E  -----播报网络连接上----
2024-10-23 01:52:56.353  1284-1284  Alpha2Connection        com.ubtechinc.alpha2services         D  "Office2g": Obtaining IP
2024-10-23 01:52:56.353  1284-1284  Alpha2Connection        com.ubtechinc.alpha2services         D  startQrCode    false
2024-10-23 01:52:56.356  1284-1284  ContextImpl             com.ubtechinc.alpha2services         W  Implicit intents with startService are not safe: Intent { act=com.ubtechinc.services.Alpha2QRCodeService } android.content.ContextWrapper.startService:516 com.ubtechinc.utils.Alpha2Connection.startQrCode:202 com.ubtechinc.utils.Alpha2Connection$1.handleMessage:363 
2024-10-23 01:52:56.359  1284-1743  CHEST                   com.ubtechinc.alpha2services         I  f8 8f 08 01 00 14 00 1d ed 
2024-10-23 01:52:56.365   464-492   ActivityManagerService  system_process                       I  Start proc 2068:com.android.bluetooth/1002 for service com.android.bluetooth/.btservice.AdapterService
2024-10-23 01:52:56.387  2068-2068  DisplayManager          com.android.bluetooth                D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.390  2068-2068  DisplayManager          com.android.bluetooth                D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.394  2068-2068  DisplayManager          com.android.bluetooth                D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.397  2068-2068  DisplayManager          com.android.bluetooth                D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.399  2068-2068  ResourcesManager        com.android.bluetooth                W  Asset path '/system/framework/javax.obex.jar' does not exist or contains no resources.
2024-10-23 01:52:56.408   464-481   ActivityStackSupervisor system_process                       I  START u0 {flg=0x10000000 cmp=com.ubtechinc.alpha2services/com.google.zxing.client.android.CaptureActivity} from uid 10069 on display 0
2024-10-23 01:52:56.410   464-481   System.out              system_process                       I  com.google.zxing.client.android.CaptureActivityaddAppToken taskId:48
2024-10-23 01:52:56.415   464-481   WindowManagerService    system_process                       D  null  ==========setInputFocusLw ==========  =======
2024-10-23 01:52:56.426  1284-1284  Alpha2Connection        com.ubtechinc.alpha2services         D  GUIDE Network connection started，please follow the instructions on the app
2024-10-23 01:52:56.428  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  STATE_PREPARE event.index=0
2024-10-23 01:52:56.430  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D   mEventQueue.length=1 State = 0
2024-10-23 01:52:56.430  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D   mWorkingEvent.getmObj=Network connection started，please follow the instructions on the app
2024-10-23 01:52:56.431  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:56.431  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:56.436  1284-1284  SpeechManager           com.ubtechinc.alpha2services         I  onPlayHigh
2024-10-23 01:52:56.437  1284-1284  SpeechManager           com.ubtechinc.alpha2services         I  ttsIsSpeaking:false      language:null
2024-10-23 01:52:56.439  1284-1284  CustomAudioSource       com.ubtechinc.alpha2services         D  setisWorking=false
2024-10-23 01:52:56.439  1284-1284  SpeechManager           com.ubtechinc.alpha2services         I  language:null
2024-10-23 01:52:56.441  1284-1284  SpeechManager           com.ubtechinc.alpha2services         I  start tts play
2024-10-23 01:52:56.442  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  TTS !!! strText=Network connection started，please follow the instructions on the app
2024-10-23 01:52:56.454   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.454   464-493   PhoneWindow             system_process                       D  DecorView - SCREEN_WEITH = 1536 - SCREE_HEIGHT = 1952
2024-10-23 01:52:56.460   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.460  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR handler 9
2024-10-23 01:52:56.460  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR handler 9
2024-10-23 01:52:56.460  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR stopSpeechAndEnterIdleMode releaseRecord=false
2024-10-23 01:52:56.460  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR stopAudioRecord
2024-10-23 01:52:56.460  1284-1284  CustomAudioSource       com.ubtechinc.alpha2services         D  setisWorking=false
2024-10-23 01:52:56.460  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=LocalListener:_onError
2024-10-23 01:52:56.460  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR stopAudioRecord
2024-10-23 01:52:56.460  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=Local Recog Error: code=0, reason=Recognition canceled
2024-10-23 01:52:56.461  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  TTS !!!! text=startTTS 1
2024-10-23 01:52:56.461  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  TTS ubt enterTtsPlay 
2024-10-23 01:52:56.461  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  TTS ubt enterTtsPlay tts is playing
2024-10-23 01:52:56.461  1284-1284  tts                     com.ubtechinc.alpha2services         D  ttsGenerationStarted() for text = "Network connection started，please follow the instructions on the app".
2024-10-23 01:52:56.471   464-2090  OpenGLRenderer          system_process                       D  Use EGL_SWAP_BEHAVIOR_PRESERVED: true
2024-10-23 01:52:56.472   464-493   Atlas                   system_process                       D  Validating map...
2024-10-23 01:52:56.472   464-493   Atlas                   system_process                       W  Pointer 0x0, not in getPreloadedDrawables?
2024-10-23 01:52:56.472   464-493   Atlas                   system_process                       W  Pointer 0x0, not in getPreloadedDrawables?
2024-10-23 01:52:56.475   464-493   WindowManagerService    system_process                       V  Adding window Window{3fd0c078 u0 Starting com.ubtechinc.alpha2services} at 2 of 7 (after Window{10287864 u0 com.android.launcher3/com.android.launcher3.Launcher})
2024-10-23 01:52:56.475   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.476  1284-2089  AudioTrack              com.ubtechinc.alpha2services         I  minFrameCount: 1323, afFrameCount=960, minBufCount=3, sampleRate=22050, afSampleRate=48000, afLatency=60
2024-10-23 01:52:56.492   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.493   464-493   ViewRootImpl            system_process                       D  onAttachToWindow register content observer attrs=WM.LayoutParams{(0,0)(fillxfill)mPosX=0mPosY=0mHScale=1.0mVScale=1.0 align=RIGHT taskId=48 ty=3 fl=#1830518 pfl=0x12 fmt=-3 wanim=0x1030001 surfaceInsets=Rect(0, 0 - 0, 0) needsMenuKey=2packageName=com.ubtechinc.alpha2servicestoken=Token{33cfa560 ActivityRecord{c930563 u0 com.ubtechinc.alpha2services/com.google.zxing.client.android.CaptureActivity t48}}}
2024-10-23 01:52:56.505  2068-2068  AdapterServiceConfig    com.android.bluetooth                D  Adding HeadsetService
2024-10-23 01:52:56.506  2068-2068  AdapterServiceConfig    com.android.bluetooth                D  Adding A2dpService
2024-10-23 01:52:56.506  2068-2068  AdapterServiceConfig    com.android.bluetooth                D  Adding HidService
2024-10-23 01:52:56.506  2068-2068  AdapterServiceConfig    com.android.bluetooth                D  Adding HealthService
2024-10-23 01:52:56.506  2068-2068  AdapterServiceConfig    com.android.bluetooth                D  Adding PanService
2024-10-23 01:52:56.506  2068-2068  AdapterServiceConfig    com.android.bluetooth                D  Adding GattService
2024-10-23 01:52:56.512   464-493   ViewRootImpl            system_process                       D  1536<<<<<< BACK FROM relayoutWM.LayoutParams{(0,0)(fillxfill)mPosX=0mPosY=0mHScale=1.0mVScale=1.0 align=RIGHT taskId=48 sim=#20 ty=3 fl=#1830518 pfl=0x12 fmt=-3 wanim=0x1030001 surfaceInsets=Rect(0, 0 - 0, 0) needsMenuKey=2packageName=com.ubtechinc.alpha2servicestoken=Token{33cfa560 ActivityRecord{c930563 u0 com.ubtechinc.alpha2services/com.google.zxing.client.android.CaptureActivity t48}}}
2024-10-23 01:52:56.513   464-2090  OpenGLRenderer          system_process                       I  Initialized EGL, version 1.4
2024-10-23 01:52:56.517   464-2090  OpenGLRenderer          system_process                       D  Enabling debug mode 0
2024-10-23 01:52:56.536  2068-2068  BluetoothServiceJni     com.android.bluetooth                D  int android::check_wifi_chip_type_string(char*): AP6335
2024-10-23 01:52:56.536  2068-2068  BluetoothServiceJni     com.android.bluetooth                D  void android::classInitNative(JNIEnv*, jclass), load bluetooth.default.so
2024-10-23 01:52:56.540  1284-1284  DisplayManager          com.ubtechinc.alpha2services         D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.547  1284-1284  DisplayManager          com.ubtechinc.alpha2services         D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.547  1284-1284  PhoneWindow             com.ubtechinc.alpha2services         D  DecorView - SCREEN_WEITH = 1536 - SCREE_HEIGHT = 1952
2024-10-23 01:52:56.560   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.576   464-487   UsageStatsService       system_process                       I  User[0] Flushing usage stats to disk
2024-10-23 01:52:56.583  1284-1284  DisplayManager          com.ubtechinc.alpha2services         D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.617   464-492   BluetoothManagerService system_process                       D  Message: 20
2024-10-23 01:52:56.618   464-492   BluetoothManagerService system_process                       D  Added callback: android.bluetooth.IBluetoothManagerCallback$Stub$Proxy@14b31942:true
2024-10-23 01:52:56.622  2068-2068  BluetoothAdapterState   com.android.bluetooth                D  make
2024-10-23 01:52:56.628  1284-1301  art                     com.ubtechinc.alpha2services         W  Suspending all threads took: 10.614ms
2024-10-23 01:52:56.630   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.642  2068-2093  BluetoothAdapterState   com.android.bluetooth                I  Entering OffState
2024-10-23 01:52:56.642  2068-2068  bluedroid               com.android.bluetooth                I  init
2024-10-23 01:52:56.642   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.644  1284-1301  art                     com.ubtechinc.alpha2services         I  Background sticky concurrent mark sweep GC freed 5507(1050KB) AllocSpace objects, 38(701KB) LOS objects, 18% free, 6MB/8MB, paused 12.197ms total 45.655ms
2024-10-23 01:52:56.648  2068-2068  bte_conf                com.android.bluetooth                I  bte_load_conf attempt to load stack conf from /etc/bluetooth/bt_stack.conf
2024-10-23 01:52:56.650  2068-2068  bte_conf                com.android.bluetooth                I  bte_load_ble_conf attempt to load ble stack conf from /etc/bluetooth/ble_stack.conf
2024-10-23 01:52:56.650  2068-2068  bt_osi_config           com.android.bluetooth                E  config_new unable to open file '/etc/bluetooth/ble_stack.conf': No such file or directory
2024-10-23 01:52:56.650  2068-2068  bte_conf                com.android.bluetooth                I  bte_load_ble_conf file >/etc/bluetooth/ble_stack.conf< not found
2024-10-23 01:52:56.650  2068-2068  bluedroid               com.android.bluetooth                I  get_profile_interface socket
2024-10-23 01:52:56.650  2068-2068  bluedroid               com.android.bluetooth                I  get_profile_interface map_client
2024-10-23 01:52:56.654  2068-2096  GKI_LINUX               com.android.bluetooth                I  gki_task_entry task_id=1 [BTIF] starting
2024-10-23 01:52:56.654   464-464   BluetoothManagerService system_process                       D  BluetoothServiceConnection: com.android.bluetooth.btservice.AdapterService
2024-10-23 01:52:56.654   464-492   BluetoothManagerService system_process                       D  Message: 40
2024-10-23 01:52:56.654   464-492   BluetoothManagerService system_process                       D  MESSAGE_BLUETOOTH_SERVICE_CONNECTED: 1
2024-10-23 01:52:56.657  2068-2086  bluedroid               com.android.bluetooth                I  config_hci_snoop_log
2024-10-23 01:52:56.663   464-492   BluetoothManagerService system_process                       D  Calling onBluetoothServiceUp callbacks
2024-10-23 01:52:56.663   464-492   BluetoothManagerService system_process                       D  Broadcasting onBluetoothServiceUp() to 5 receivers.
2024-10-23 01:52:56.663  2068-2096  BluetoothA...Properties com.android.bluetooth                D  Address is:22:22:02:B3:43:A9
2024-10-23 01:52:56.666   464-464   BluetoothManagerService system_process                       D  Bluetooth Adapter name changed to Alpha2_A202B04161001030DEC
2024-10-23 01:52:56.666  2068-2096  BluetoothA...Properties com.android.bluetooth                D  Name is: Alpha2_A202B04161001030DEC
2024-10-23 01:52:56.666   464-464   BluetoothManagerService system_process                       D  Stored Bluetooth name: Alpha2_A202B04161001030DEC
2024-10-23 01:52:56.669  2068-2093  BluetoothAdapterState   com.android.bluetooth                D  CURRENT_STATE=OFF, MESSAGE = USER_TURN_ON
2024-10-23 01:52:56.670  2068-2093  BluetoothA...Properties com.android.bluetooth                D  Setting state to 11
2024-10-23 01:52:56.670  2068-2093  BluetoothAdapterState   com.android.bluetooth                I  Bluetooth adapter state changed: 10-> 11
2024-10-23 01:52:56.675   464-492   BluetoothManagerService system_process                       D  Message: 60
2024-10-23 01:52:56.675   464-492   BluetoothManagerService system_process                       D  MESSAGE_BLUETOOTH_STATE_CHANGE: prevState = 10, newState=11
2024-10-23 01:52:56.675   464-492   BluetoothManagerService system_process                       D  Bluetooth State Change Intent: 10 -> 11
2024-10-23 01:52:56.676  2068-2093  BluetoothAdapterState:  com.android.bluetooth                D  transitionTo: destState=PendingCommandState
2024-10-23 01:52:56.690  2068-2093  BluetoothB...ateMachine com.android.bluetooth                D  make
2024-10-23 01:52:56.699  2068-2097  BluetoothB...ateMachine com.android.bluetooth                I  StableState(): Entering Off State
2024-10-23 01:52:56.711   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.722   823-823   ViewRootImpl            com.android.launcher3                D  1536<<<<<< BACK FROM relayoutnull
2024-10-23 01:52:56.723   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.726  2068-2068  BluetoothAdapterService com.android.bluetooth                D  getAdapterService() - returning com.android.bluetooth.btservice.AdapterService@2e0488fe
2024-10-23 01:52:56.729  2068-2068  HeadsetService          com.android.bluetooth                D  Received start request. Starting profile...
2024-10-23 01:52:56.741   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.744  2068-2093  BluetoothAdapterState   com.android.bluetooth                I  Entering PendingCommandState State: isTurningOn()=true, isTurningOff()=false
2024-10-23 01:52:56.747  2068-2068  BluetoothH...ServiceJni com.android.bluetooth                I  classInitNative: succeeds
2024-10-23 01:52:56.747  2068-2068  HeadsetStateMachine     com.android.bluetooth                D  make
2024-10-23 01:52:56.754   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.760  1284-1284  art                     com.ubtechinc.alpha2services         W  Verification of java.lang.Object com.google.zxing.client.android.ViewfinderView.access$super(com.google.zxing.client.android.ViewfinderView, java.lang.String, java.lang.Object[]) took 147.925ms
2024-10-23 01:52:56.772   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.775  2068-2068  HeadsetStateMachine     com.android.bluetooth                D  max_hf_connections = 1
2024-10-23 01:52:56.775  2068-2068  bluedroid               com.android.bluetooth                I  get_profile_interface handsfree
2024-10-23 01:52:56.790   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.791  2068-2099  HeadsetStateMachine     com.android.bluetooth                D  Enter Disconnected: -2, size: 0
2024-10-23 01:52:56.802  2068-2068  BluetoothAdapterService com.android.bluetooth                D  getAdapterService() - returning com.android.bluetooth.btservice.AdapterService@2e0488fe
2024-10-23 01:52:56.803   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.803   464-464   BluetoothA2dp           system_process                       D  Proxy object connected
2024-10-23 01:52:56.804  2068-2068  A2dpService             com.android.bluetooth                D  Received start request. Starting profile...
2024-10-23 01:52:56.811  2068-2068  BluetoothA...ServiceJni com.android.bluetooth                I  classInitNative: succeeds
2024-10-23 01:52:56.811  2068-2068  bluedroid               com.android.bluetooth                I  get_profile_interface avrcp
2024-10-23 01:52:56.819   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.821   585-585   DisplayManager          com.android.systemui                 D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.827   585-585   BluetoothA2dp           com.android.systemui                 D  Proxy object connected
2024-10-23 01:52:56.828  2068-2068  RemoteController        com.android.bluetooth                E  Cannot set synchronization mode on an unregistered RemoteController
2024-10-23 01:52:56.832  2068-2068  BluetoothA2dpServiceJni com.android.bluetooth                I  classInitNative: succeeds
2024-10-23 01:52:56.832  2068-2068  A2dpStateMachine        com.android.bluetooth                D  make
2024-10-23 01:52:56.835  2068-2068  bluedroid               com.android.bluetooth                I  get_profile_interface a2dp
2024-10-23 01:52:56.835   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.835  2068-2103  GKI_LINUX               com.android.bluetooth                I  gki_task_entry task_id=2 [A2DP-MEDIA] starting
2024-10-23 01:52:56.840  2068-2102  A2dpStateMachine        com.android.bluetooth                D  Enter Disconnected: -2
2024-10-23 01:52:56.844  2068-2068  BluetoothHidServiceJni  com.android.bluetooth                I  classInitNative: succeeds
2024-10-23 01:52:56.846  2068-2068  BluetoothAdapterService com.android.bluetooth                D  getAdapterService() - returning com.android.bluetooth.btservice.AdapterService@2e0488fe
2024-10-23 01:52:56.848  2068-2068  HidService              com.android.bluetooth                D  Received start request. Starting profile...
2024-10-23 01:52:56.848  2068-2068  bluedroid               com.android.bluetooth                I  get_profile_interface hidhost
2024-10-23 01:52:56.851   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.852  2068-2068  BluetoothH...ServiceJni com.android.bluetooth                I  classInitNative: succeeds
2024-10-23 01:52:56.853  2068-2068  BluetoothAdapterService com.android.bluetooth                D  getAdapterService() - returning com.android.bluetooth.btservice.AdapterService@2e0488fe
2024-10-23 01:52:56.855   464-487   UsageStatsDatabase      system_process                       I  Moving file /data/system/usagestats/0/daily/1293840000000 to /data/system/usagestats/0/daily/1729615852787
2024-10-23 01:52:56.855   464-487   UsageStatsDatabase      system_process                       I  Moving file /data/system/usagestats/0/weekly/1293667200000 to /data/system/usagestats/0/weekly/1729443052787
2024-10-23 01:52:56.856   585-585   BluetoothInputDevice    com.android.systemui                 D  Proxy object connected
2024-10-23 01:52:56.856  2068-2068  HealthService           com.android.bluetooth                D  Received start request. Starting profile...
2024-10-23 01:52:56.858   464-487   UsageStatsDatabase      system_process                       I  Moving file /data/system/usagestats/0/monthly/1293408000000 to /data/system/usagestats/0/monthly/1729183852787
2024-10-23 01:52:56.859   464-487   UsageStatsDatabase      system_process                       I  Moving file /data/system/usagestats/0/yearly/1292976000000 to /data/system/usagestats/0/yearly/1728751852787
2024-10-23 01:52:56.860  2068-2068  bluedroid               com.android.bluetooth                I  get_profile_interface health
2024-10-23 01:52:56.865  2068-2068  BluetoothPanServiceJni  com.android.bluetooth                I  classInitNative(L105): succeeds
2024-10-23 01:52:56.865   464-487   UsageStatsService       system_process                       I  User[0] Rollover scheduled @ 2024-10-23 21:00:00(1729728000000)
2024-10-23 01:52:56.866  2068-2068  BluetoothAdapterService com.android.bluetooth                D  getAdapterService() - returning com.android.bluetooth.btservice.AdapterService@2e0488fe
2024-10-23 01:52:56.869   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.872  2068-2068  PanService              com.android.bluetooth                D  Received start request. Starting profile...
2024-10-23 01:52:56.872  2068-2068  BluetoothPanServiceJni  com.android.bluetooth                D  initializeNative(L110): pan
2024-10-23 01:52:56.872  2068-2068  bluedroid               com.android.bluetooth                I  get_profile_interface pan
2024-10-23 01:52:56.876   585-585   BluetoothPan            com.android.systemui                 D  BluetoothPAN Proxy object connected
2024-10-23 01:52:56.883   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.892  2068-2068  BtGatt.JNI              com.android.bluetooth                I  classInitNative(L873): classInitNative: Success!
2024-10-23 01:52:56.896  2068-2068  BluetoothAdapterService com.android.bluetooth                D  getAdapterService() - returning com.android.bluetooth.btservice.AdapterService@2e0488fe
2024-10-23 01:52:56.897  2068-2068  BtGatt.DebugUtils       com.android.bluetooth                D  handleDebugAction() action=null
2024-10-23 01:52:56.899  2068-2068  BtGatt.GattService      com.android.bluetooth                D  Received start request. Starting profile...
2024-10-23 01:52:56.899  2068-2068  BtGatt.GattService      com.android.bluetooth                D  start()
2024-10-23 01:52:56.899  2068-2068  bluedroid               com.android.bluetooth                I  get_profile_interface gatt
2024-10-23 01:52:56.900   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.900  2068-2068  BluetoothAdapterService com.android.bluetooth                D  getAdapterService() - returning com.android.bluetooth.btservice.AdapterService@2e0488fe
2024-10-23 01:52:56.901  2068-2068  BtGatt.AdvertiseManager com.android.bluetooth                D  advertise manager created
2024-10-23 01:52:56.912  2068-2068  HeadsetStateMachine     com.android.bluetooth                D  Proxy object connected
2024-10-23 01:52:56.912  2068-2099  HeadsetStateMachine     com.android.bluetooth                D  Disconnected process message: 10, size: 0
2024-10-23 01:52:56.912  2068-2099  HeadsetPhoneState       com.android.bluetooth                D  sendDeviceStateChanged. mService=0 mSignal=0 mRoam=0 mBatteryCharge=5
2024-10-23 01:52:56.913  2068-2099  HeadsetStateMachine     com.android.bluetooth                D  Disconnected process message: 11, size: 0
2024-10-23 01:52:56.913  2068-2093  BluetoothAdapterState   com.android.bluetooth                D  CURRENT_STATE=PENDING, MESSAGE = STARTED, isTurningOn=true, isTurningOff=false
2024-10-23 01:52:56.913  2068-2093  bluedroid               com.android.bluetooth                I  enable
2024-10-23 01:52:56.913  2068-2093  bt_hci_bdroid           com.android.bluetooth                I  init
2024-10-23 01:52:56.913  2068-2093  RkWifiCtrl              com.android.bluetooth                D  check_wifi_chip_type_string: AP6335
2024-10-23 01:52:56.913  2068-2093  bt_vendor               com.android.bluetooth                D  vendor_open load libbt-vendor.so
2024-10-23 01:52:56.916   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.917  2068-2109  GKI_LINUX               com.android.bluetooth                I  gki_task_entry task_id=0 [BTU] starting
2024-10-23 01:52:56.917  2068-2109  bt-btu                  com.android.bluetooth                I  btu_task pending for preload complete event
2024-10-23 01:52:56.918  2068-2093  bt_vendor               com.android.bluetooth                I  init
2024-10-23 01:52:56.918  2068-2093  bt_vnd_conf             com.android.bluetooth                I  Attempt to load conf from /etc/bluetooth/bt_vendor.conf
2024-10-23 01:52:56.919  2068-2093  bt_vnd_conf             com.android.bluetooth                I  vnd_load_conf file >/etc/bluetooth/bt_vendor.conf< not found
2024-10-23 01:52:56.919  2068-2093  RkWifiCtrl              com.android.bluetooth                D  check_wifi_chip_type_string: AP6335
2024-10-23 01:52:56.919  2068-2093  bt_hci_bdroid           com.android.bluetooth                D  init, use hci h4
2024-10-23 01:52:56.919  2068-2093  bt_userial              com.android.bluetooth                D  userial_init
2024-10-23 01:52:56.932   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.949   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.963  1284-1284  DisplayManager          com.ubtechinc.alpha2services         D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.966   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.973  2068-2093  bt_upio                 com.android.bluetooth                D  Delay 500ms for bluetooth power up
2024-10-23 01:52:56.981   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.982   167-921   AudioFlinger            pid-167                              I  BUFFER TIMEOUT: remove(4097) from active list on thread 0xb86d6f78
2024-10-23 01:52:56.991  1284-1284  DisplayManager          com.ubtechinc.alpha2services         D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.994  1284-1284  DisplayManager          com.ubtechinc.alpha2services         D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:56.997  1284-2117  OpenGLRenderer          com.ubtechinc.alpha2services         D  Use EGL_SWAP_BEHAVIOR_PRESERVED: true
2024-10-23 01:52:56.997   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.002  1284-1284  Atlas                   com.ubtechinc.alpha2services         D  Validating map...
2024-10-23 01:52:57.002  1284-1284  Atlas                   com.ubtechinc.alpha2services         W  Pointer 0x0, not in getPreloadedDrawables?
2024-10-23 01:52:57.002  1284-1284  Atlas                   com.ubtechinc.alpha2services         W  Pointer 0x0, not in getPreloadedDrawables?
2024-10-23 01:52:57.006   464-879   WindowManagerService    system_process                       V  Adding window Window{2759cc84 u0 com.ubtechinc.alpha2services/com.google.zxing.client.android.CaptureActivity} at 2 of 8 (before Window{3fd0c078 u0 Starting com.ubtechinc.alpha2services})
2024-10-23 01:52:57.007   464-879   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.009  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.009  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.010  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.010  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.010  1284-1284  tts                     com.ubtechinc.alpha2services         D  ttsStreamingStarted for text = "Network connection started，please follow the instructions on the app".
2024-10-23 01:52:57.010  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.010  1284-1284  Alpha2Connection        com.ubtechinc.alpha2services         D  BLUETOOTH STATE_TURNING_ON 
2024-10-23 01:52:57.010  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.010  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.010  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.011  1284-1284  BluetoothA2dp           com.ubtechinc.alpha2services         D  Proxy object connected
2024-10-23 01:52:57.011  1284-1284  BTUtil                  com.ubtechinc.alpha2services         D  onServiceConnected
2024-10-23 01:52:57.014   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.017  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.017  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.017  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.017  1284-1284  tts                     com.ubtechinc.alpha2services         D  ttsGenerationFinished for text = "Network connection started，please follow the instructions on the app" (success = true).
2024-10-23 01:52:57.018  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.019  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.021  1284-1284  ViewRootImpl            com.ubtechinc.alpha2services         D  onAttachToWindow register content observer attrs=WM.LayoutParams{(0,0)(fillxfill)mPosX=0mPosY=0mHScale=1.0mVScale=1.0 align=UNDEFINE taskId=48 sim=#103 ty=1 fl=#5810580 wanim=0x1030001 vsysui=0x500 surfaceInsets=Rect(0, 0 - 0, 0) needsMenuKey=2packageName=com.ubtechinc.alpha2servicestoken=android.os.BinderProxy@2a7952a1}
2024-10-23 01:52:57.030   464-485   WindowManagerService    system_process                       D  Window{2759cc84 u0 com.ubtechinc.alpha2services/com.google.zxing.client.android.CaptureActivity}  ==========setInputFocusLw ==========  =======
2024-10-23 01:52:57.050   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.050  1284-1284  ViewRootImpl            com.ubtechinc.alpha2services         D  1536<<<<<< BACK FROM relayoutWM.LayoutParams{(0,0)(fillxfill)mPosX=0mPosY=0mHScale=1.0mVScale=1.0 align=UNDEFINE taskId=48 sim=#123 ty=1 fl=#5810580 fmt=-3 wanim=0x1030001 vsysui=0x500 surfaceInsets=Rect(0, 0 - 0, 0) needsMenuKey=2packageName=com.ubtechinc.alpha2servicestoken=android.os.BinderProxy@2a7952a1}
2024-10-23 01:52:57.051  1284-2117  mali_so                 com.ubtechinc.alpha2services         I  [File] : hardware/arm/maliT760/driver/product/base/src/mali_base_kbase.c; [Line] : 780; [Func] : base_context_deal_with_version_affairs_rk_ext;
                                                                                                    arm_release_ver of this mali_so is 'r6p0-02rel0', rk_so_ver is '11@0', built at '17:59:04', on 'Aug 12 2015'.
2024-10-23 01:52:57.051  1284-2117  mali_so                 com.ubtechinc.alpha2services         I  [File] : hardware/arm/maliT760/driver/product/base/src/mali_base_kbase.c; [Line] : 807; [Func] : base_context_deal_with_version_affairs_rk_ext;
                                                                                                    mali_ver_property has been set to 'r6p0-02rel0-13-11@0', to return.
2024-10-23 01:52:57.054  1284-2117  OpenGLRenderer          com.ubtechinc.alpha2services         I  Initialized EGL, version 1.4
2024-10-23 01:52:57.062   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.070  1284-2117  OpenGLRenderer          com.ubtechinc.alpha2services         D  Enabling debug mode 0
2024-10-23 01:52:57.079   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.084  1284-2089  AudioTrack              com.ubtechinc.alpha2services         W  releaseBuffer() track 0xb76479d0 disabled due to previous underrun, restarting
2024-10-23 01:52:57.123   464-831   WindowManagerService    system_process                       V  Adding window Window{304060a2 u0 SurfaceView} at 2 of 9 (before Window{2759cc84 u0 com.ubtechinc.alpha2services/com.google.zxing.client.android.CaptureActivity})
2024-10-23 01:52:57.123   464-831   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.128   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.131   167-508   CameraService           pid-167                              E  no camera found before! check again...
2024-10-23 01:52:57.131   167-508   CameraService           pid-167                              I  Loaded "RK29_ICS_CameraHal_Module" camera module
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  createInstance(817): open xml file(/etc/cam_board.xml) success
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              E  cam_board.xml version(v0.0.0) != xml parser version(v0.13.0)
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  
                                                                                                    
                                                                                                    
                                                                                                     Cam_board.xml Version Check: 
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D      /etc/cam_board.xml : v0.0xd.0
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D      CameraHal_board_xml_parser: v0.13.0
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(46): SensorName(IMX214)
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(49): lensName(50064B2)
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(51): SensorDevID(CAMSYS_DEVID_SENSOR_1B)
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(62): SensorDevID(33554432)
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(64): SensorHostDevID(CAMSYS_DEVID_MARVIN)
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(79): Sensori2cBusNum(3)
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(82): SensorI2cAddrByte(2)
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(85): SensorI2cRate(100000)
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(88): SensorMclk(24000000)
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(91): SensorAvdd(NC) min(28000000) max(28000000)
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(96): SensorDovdd(NC) min(18000000) max(18000000)
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(101): SensorDvdd(NC) min(10000000) max(10000000)
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(106): SensorGpioPwdn(RK30_PIN2_PB7) active(0) 
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(110): SensorGpioRst(NC) active(0) 
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(114): SensorGpioPwen(RK30_PIN0_PC1) active(1) 
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(118): SensorFacing(front) 
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(127): SensorInterface(MIPI) 
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(140): SensorMirrorFlip(0) 
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(146): SensorOrientation(0) 
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(143): SensorPowerupSequence(1234) 
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(240): SensorFovParemeter fov_h(60.0)(60.000000) fov_v(60.0)(60.000000)  
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(243): SensorAWB_Frame_Skip fps(15) 
2024-10-23 01:52:57.133   167-508   CameraHal               pid-167                              D  ParserSensorInfo(214): SensorPhy: MIPI  lane: 2  phyindex: 0  fmt: 0x2b
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserVCMInfo(255): VCMDrvName(BuiltInSensor)
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserVCMInfo(258): VCMName(NC)
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserVCMInfo(261): VCMI2cBusNum(3)
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserVCMInfo(264): VCMI2cAddrByte(0)
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserVCMInfo(267): VCMI2cRate(100000)
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserVCMInfo(278): VCMVdd(NC) min(28000000) max(28000000)
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserVCMInfo(270): VCMGpioPwdn(NC) active(0) 
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserVCMInfo(274): VCMGpioPower(NC) active(0) 
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserVCMInfo(294): start current(20) rated current(50) vcm max(100)  step mode(13)  drv max(100) 
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserFlashInfo(308): FlashName(Internal)
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserFlashInfo(311): FlashI2cBusNum(0)
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserFlashInfo(314): FlashI2cAddrByte(0)
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserFlashInfo(317): FlashI2cRate(0)
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserFlashInfo(320): FlashTrigger(NC) active(0) 
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserFlashInfo(324): FlashEn(NC) active(0) 
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserFlashInfo(331): FlashLuminance(0)
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserFlashInfo(334): FlashColorTemp(0)
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  StartElementHandler(760): HDR(1)! 
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  StartElementHandler(764): ZSL(1)! 
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  StartElementHandler(768): zoom(1)! 
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  StartElementHandler(796): Continue_SnapShot(1)! 
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  StartElementHandler(799): InterpolationRes(0)! 
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  StartElementHandler(790): PreviewSize(0x0)! 
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  StartElementHandler(786): face detect config(0),max face num is (0)! 
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  StartElementHandler(776): cproc support 1(contrast:1.200000,saturation:1.000000,hue:0.000000,brightness:0)! 
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  StartElementHandler(781): Gammaout support 0(mGamma:0.500000,mOffSet:0)! 
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserDVConfig(601):  DV_QCIF(qcif) resolution(176x144) fps(10) support(1)
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserDVConfig(613):  DV_QVGA(qvga) resolution(320x240) fps(10) support(1)
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserDVConfig(625):  DV_CIF(cif) resolution(352x288) fps(10) support(1)
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserDVConfig(637):  DV_VGA(480p) resolution(640x480) fps(10) support(0)
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserDVConfig(649):  DV_480P(480p) resolution(720x480) fps(10) support(0)
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserDVConfig(673):  DV_720P(720p) resolution(1280x720) fps(10) support(1)
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  ParserDVConfig(685):  DV_1080P(1080p) resolution(1920x1080) fps(10) support(1)
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  number of camdevice (1)
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  now DV size(7)
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              E  camera_get_number_of_cameras(690): board profiles cam num 1
2024-10-23 01:52:57.134   167-508   CameraHal               pid-167                              D  read cam name from xml(/data/camera/media_profiles.xml)
2024-10-23 01:52:57.135   167-508   CameraHal               pid-167                              D  videoname0="IMX214" index=0 facing=1 -->  
2024-10-23 01:52:57.135   167-508   CameraHal               pid-167                              D  find camera count(1) cam1(IMX214) cam2()
2024-10-23 01:52:57.136   167-508   CameraHal               pid-167                              D  
                                                                                                    
                                                                                                    
                                                                                                     CamSys_Head.h Version Check:
2024-10-23 01:52:57.136   167-508   CameraHal               pid-167                              D      Kernel camsys_head.h: v0.11.0
2024-10-23 01:52:57.136   167-508   CameraHal               pid-167                              D      Kernel camsys_drv :   v0.32.0
2024-10-23 01:52:57.136   167-508   CameraHal               pid-167                              D      CameraHal camsys_head.h : v0.11.0
2024-10-23 01:52:57.136   167-508   CameraHal               pid-167                              D  
2024-10-23 01:52:57.147   167-508   CameraHal               pid-167                              E  WARNING: IMX214 soft reset by i2c failed!, please check follow information:
2024-10-23 01:52:57.147   167-508   CameraHal               pid-167                              E      Slave_addr: 0x34 0x20
                                                                                                        Soft reset reg: 0x103  val: 0x1
                                                                                                        Power/PowerDown/Reset/Mclk/I2cBus
2024-10-23 01:52:57.151   167-508   CameraHal               pid-167                              E  IMX214 device register failed!
2024-10-23 01:52:57.153   167-508   CameraHal               pid-167                              D  
                                                                                                    
                                                                                                    
                                                                                                     CamSys_Head.h Version Check:
2024-10-23 01:52:57.153   167-508   CameraHal               pid-167                              D      Kernel camsys_head.h: v0.11.0
2024-10-23 01:52:57.153   167-508   CameraHal               pid-167                              D      Kernel camsys_drv :   v0.32.0
2024-10-23 01:52:57.153   167-508   CameraHal               pid-167                              D      CameraHal camsys_head.h : v0.11.0
2024-10-23 01:52:57.153   167-508   CameraHal               pid-167                              D  
2024-10-23 01:52:57.164   167-508   CameraHal               pid-167                              E  WARNING: IMX214 soft reset by i2c failed!, please check follow information:
2024-10-23 01:52:57.165   167-508   CameraHal               pid-167                              E      Slave_addr: 0x34 0x20
                                                                                                        Soft reset reg: 0x103  val: 0x1
                                                                                                        Power/PowerDown/Reset/Mclk/I2cBus
2024-10-23 01:52:57.171   167-508   CameraHal               pid-167                              E  IMX214 device register failed!
2024-10-23 01:52:57.172   167-508   CameraHal               pid-167                              E  camera_get_number_of_cameras(697): load sensor name(IMX214) connect 0
2024-10-23 01:52:57.172   167-508   CameraHal               pid-167                              E  camera_get_number_of_cameras(750): Open /dev/video0 failed! strr: No such file or directory
2024-10-23 01:52:57.172   167-508   CameraHal               pid-167                              D  judge the media profile xml fileexit = 0
2024-10-23 01:52:57.172   167-508   CameraHal               pid-167                              D  camera_get_number_of_cameras(1114): camera_get_number_of_cameras(1114): Current board have 0 cameras attached.
2024-10-23 01:52:57.172   167-508   CameraHal               pid-167                              D  camera_get_number_of_cameras(1117): meida_profiles_xml_control time (40584)us
2024-10-23 01:52:57.172  1284-1284  com.google...aInterface com.ubtechinc.alpha2services         W  No cameras!
2024-10-23 01:52:57.172  1284-1284  System.err              com.ubtechinc.alpha2services         W  java.io.IOException
2024-10-23 01:52:57.173  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.google.zxing.client.android.camera.CameraManager.openDriver(CameraManager.java:87)
2024-10-23 01:52:57.173  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.google.zxing.client.android.CaptureActivity.initCamera(CaptureActivity.java:335)
2024-10-23 01:52:57.173  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.google.zxing.client.android.CaptureActivity.surfaceCreated(CaptureActivity.java:293)
2024-10-23 01:52:57.173  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.view.SurfaceView.updateWindow(SurfaceView.java:633)
2024-10-23 01:52:57.173  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.view.SurfaceView$3.onPreDraw(SurfaceView.java:197)
2024-10-23 01:52:57.173  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.view.ViewTreeObserver.dispatchOnPreDraw(ViewTreeObserver.java:944)
2024-10-23 01:52:57.173  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.view.ViewRootImpl.performTraversals(ViewRootImpl.java:2086)
2024-10-23 01:52:57.173  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.view.ViewRootImpl.doTraversal(ViewRootImpl.java:1161)
2024-10-23 01:52:57.173  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.view.ViewRootImpl$TraversalRunnable.run(ViewRootImpl.java:6198)
2024-10-23 01:52:57.173  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.view.Choreographer$CallbackRecord.run(Choreographer.java:767)
2024-10-23 01:52:57.173  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.view.Choreographer.doCallbacks(Choreographer.java:580)
2024-10-23 01:52:57.173  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.view.Choreographer.doFrame(Choreographer.java:550)
2024-10-23 01:52:57.173  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.view.Choreographer$FrameDisplayEventReceiver.run(Choreographer.java:753)
2024-10-23 01:52:57.173  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.os.Handler.handleCallback(Handler.java:739)
2024-10-23 01:52:57.173  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.os.Handler.dispatchMessage(Handler.java:95)
2024-10-23 01:52:57.173  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.os.Looper.loop(Looper.java:135)
2024-10-23 01:52:57.173  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.app.ActivityThread.main(ActivityThread.java:5280)
2024-10-23 01:52:57.173  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at java.lang.reflect.Method.invoke(Native Method)
2024-10-23 01:52:57.173  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at java.lang.reflect.Method.invoke(Method.java:372)
2024-10-23 01:52:57.173  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.android.internal.os.ZygoteInit$MethodAndArgsCaller.run(ZygoteInit.java:963)
2024-10-23 01:52:57.173  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:758)
2024-10-23 01:52:57.179  1284-1284  ViewRootImpl            com.ubtechinc.alpha2services         D  1536<<<<<< BACK FROM relayoutWM.LayoutParams{(0,0)(fillxfill)mPosX=0mPosY=0mHScale=1.0mVScale=1.0 align=UNDEFINE taskId=48 sim=#123 ty=1 fl=#5810580 fmt=-3 wanim=0x1030001 vsysui=0x500 surfaceInsets=Rect(0, 0 - 0, 0) needsMenuKey=2packageName=com.ubtechinc.alpha2servicestoken=android.os.BinderProxy@2a7952a1}
2024-10-23 01:52:57.192   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.233  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.240  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.240  1284-1284  tts                     com.ubtechinc.alpha2services         D  onStarted
2024-10-23 01:52:57.240  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  !!!!!! nuance StartTTSPlay
2024-10-23 01:52:57.240  1284-1284  SpeechManager           com.ubtechinc.alpha2services         D  onTTsStart
2024-10-23 01:52:57.245  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.245  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.245  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.253  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.LED_ACTION
2024-10-23 01:52:57.253  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!! control_type:1
2024-10-23 01:52:57.253  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!! LED_type=eye_led LED_state=open_led
2024-10-23 01:52:57.262  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.276   464-493   ActivityManagerService  system_process                       I  Displayed com.ubtechinc.alpha2services/com.google.zxing.client.android.CaptureActivity: +852ms
2024-10-23 01:52:57.276   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.277   464-493   ViewRootImpl            system_process                       D  onDetachedFromWindow ungister contentObserver
2024-10-23 01:52:57.290   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.350  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.364  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.372   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.384  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.388   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.404   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.421   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.429  1284-2089  NMT                     com.ubtechinc.alpha2services         W  Player unstalled
2024-10-23 01:52:57.450   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.463  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.473   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.502   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.528   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.536   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.551   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.569   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.581  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.584   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.597  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.599   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.611  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.616   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.634   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.638  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.648   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.673  2068-2093  bt_upio                 com.android.bluetooth                D  Delay 500ms for bluetooth power up
2024-10-23 01:52:57.683   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.729   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:57.738  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.750  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.762  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.830  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.935  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.951  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:57.967  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:58.030  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:58.129  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:58.145  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:58.158  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:58.180  1284-1743  CHEST                   com.ubtechinc.alpha2services         I  f8 8f 09 00 00 80 01 34 be ed 
2024-10-23 01:52:58.181  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.chest
2024-10-23 01:52:58.181  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!! powerValue=52
2024-10-23 01:52:58.191  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         I  ches cmd = -128
2024-10-23 01:52:58.220  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:58.332  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:58.355  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:58.370  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:58.374  2068-2111  bt_userial_vendor       com.android.bluetooth                I  userial vendor open: opening /dev/ttyS0
2024-10-23 01:52:58.374  2068-2111  bt_userial_vendor       com.android.bluetooth                I  device fd = 56 open
2024-10-23 01:52:58.374  2068-2134  bt_userial              com.android.bluetooth                D  Entering userial_read_thread()
2024-10-23 01:52:58.380  2068-2111  bt_hwcfg                com.android.bluetooth                I  bt vendor lib: set UART baud 1500000
2024-10-23 01:52:58.411  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:58.411  2068-2111  bt_hwcfg                com.android.bluetooth                D  Chipset BCM4335C0
2024-10-23 01:52:58.411  2068-2111  bt_hwcfg                com.android.bluetooth                D  Target name = [BCM4335C0]
2024-10-23 01:52:58.411  2068-2111  RkWifiCtrl              com.android.bluetooth                D  check_wifi_chip_type_string: AP6335
2024-10-23 01:52:58.411  2068-2111  bt_hwcfg                com.android.bluetooth                I  BT module name is: AP6335, p_chip_id_str = BCM4335C0
2024-10-23 01:52:58.411  2068-2111  bt_hwcfg                com.android.bluetooth                I  Target HCD file name is: bcm4339a0.hcd
2024-10-23 01:52:58.416  2068-2111  bt_hwcfg                com.android.bluetooth                I  Found patchfile: /vendor/firmware//bcm4339a0.hcd
2024-10-23 01:52:58.537  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:58.557  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:58.571  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:58.600  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:58.728  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:58.754  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:58.772  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:58.804  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:58.850  1284-1932  ------ping-----         com.ubtechinc.alpha2services         D  result content : PING www.wshifen.com (103.235.46.96) 56(84) bytes of data.64 bytes from 103.235.46.96: icmp_seq=1 ttl=45 time=400 ms64 bytes from 103.235.46.96: icmp_seq=2 ttl=45 time=383 ms64 bytes from 103.235.46.96: icmp_seq=3 ttl=45 time=369 ms--- www.wshifen.com ping statistics ---3 packets transmitted, 3 received, 0% packet loss, time 2077msrtt min/avg/max/mdev = 369.452/384.209/400.007/12.495 ms
2024-10-23 01:52:58.851  1284-1932  ----result---           com.ubtechinc.alpha2services         D  result = success
2024-10-23 01:52:58.851  1284-1284  Alpha2Connection        com.ubtechinc.alpha2services         D   PING RETURN START_PING
2024-10-23 01:52:58.859  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  STATE_PREPARE event.index=0
2024-10-23 01:52:58.859  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D   mEventQueue.length=1 State = 0
2024-10-23 01:52:58.859  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D   mWorkingEvent.index=0
2024-10-23 01:52:58.859  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D   mWorkingEvent.getmPriority=3
2024-10-23 01:52:58.859  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D   nextEvent.getmPriority=3
2024-10-23 01:52:58.860  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D   nextEvent.getmObj=connection successful
2024-10-23 01:52:58.860  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D   mEventQueue.length=1 State = 2
2024-10-23 01:52:58.860  1284-1284  Alpha2Connection        com.ubtechinc.alpha2services         D  TTS text    connection successful
2024-10-23 01:52:58.861  1284-1284  CaptureActivity         com.ubtechinc.alpha2services         D  CANCEL THE CAPTUREACTIVITY
2024-10-23 01:52:58.862   464-676   ActivityManagerService  system_process                       D  moveHomeStackTaskToTop: moving TaskRecord{26cdcc25 #47 A=com.android.launcher3 U=0 sz=1}
2024-10-23 01:52:58.863   464-676   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:58.866   464-676   WindowManagerService    system_process                       D  null  ==========setInputFocusLw ==========  =======
2024-10-23 01:52:58.868   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:58.875   464-676   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:58.878   161-188   PermissionCache         pid-161                              D  checking android.permission.READ_FRAME_BUFFER for uid=1000 => granted (273 us)
2024-10-23 01:52:58.901  1284-2136  Client                  com.ubtechinc.alpha2services         I   readConfigFile json  
2024-10-23 01:52:58.935  1284-1284  SpeechManager           com.ubtechinc.alpha2services         I  onPlayHigh
2024-10-23 01:52:58.938  1284-1284  SpeechManager           com.ubtechinc.alpha2services         I  ttsIsSpeaking:true      language:null
2024-10-23 01:52:58.939  1284-1284  tts                     com.ubtechinc.alpha2services         D  ttsStreamingFinished for text = "Network connection started，please follow the instructions on the app".
2024-10-23 01:52:58.939  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  TTS !!!!!!!!!!!! stopPlayText
2024-10-23 01:52:58.939  1284-1284  SpeechManager           com.ubtechinc.alpha2services         D  onTTsComplete mSpeechState:SPEECH_STATE_GRAMMAR
2024-10-23 01:52:58.941  1284-1897  SpeechManager           com.ubtechinc.alpha2services         D  what:1
2024-10-23 01:52:58.943  1284-1897  SpeechManager           com.ubtechinc.alpha2services         D  SpeechManager onServerPlayEnd
2024-10-23 01:52:58.944  1284-1897  AlphaEventManager       com.ubtechinc.alpha2services         D   onEventStop event.index=0
2024-10-23 01:52:58.945  1284-1897  AlphaEventManager       com.ubtechinc.alpha2services         D   mEventQueue.length=0 State = 4
2024-10-23 01:52:58.945  1284-1897  SpeechManager           com.ubtechinc.alpha2services         D  SpeechMainUtil onServerPlayEnd
2024-10-23 01:52:58.945  1284-1897  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!!!!!!!!!!!! onServerPlayEnd
2024-10-23 01:52:58.945  1284-1897  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         V  alpha2TTsFinish :true
2024-10-23 01:52:58.946  1284-1284  SpeechManager           com.ubtechinc.alpha2services         D  进入识别
2024-10-23 01:52:58.951  1284-1897  Alpha2FirstimeBoot      com.ubtechinc.alpha2services         V  setTTSFinished() : actionFinished :true isTTSFinished :true State : StateEnd
2024-10-23 01:52:58.952  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR startSpeechASR
2024-10-23 01:52:58.952  1284-1284  SpeechManager           com.ubtechinc.alpha2services         I  language:null
2024-10-23 01:52:58.956  1284-1284  SpeechManager           com.ubtechinc.alpha2services         I  start tts play
2024-10-23 01:52:58.957  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  TTS !!! strText=connection successful
2024-10-23 01:52:58.960  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:58.971  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:58.971  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.LED_ACTION
2024-10-23 01:52:58.971  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!! control_type:1
2024-10-23 01:52:58.971  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!! LED_type=eye_led LED_state=close_led
2024-10-23 01:52:58.972  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR handler 5
2024-10-23 01:52:58.973   823-823   ViewRootImpl            com.android.launcher3                D  1536<<<<<< BACK FROM relayoutnull
2024-10-23 01:52:58.981   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:58.985   464-485   WindowManagerService    system_process                       D  Window{10287864 u0 com.android.launcher3/com.android.launcher3.Launcher}  ==========setInputFocusLw ==========  =======
2024-10-23 01:52:58.988   823-823   ViewRootImpl            com.android.launcher3                D  1536<<<<<< BACK FROM relayoutnull
2024-10-23 01:52:58.998  1284-2137  Client                  com.ubtechinc.alpha2services         I   isValid json  true
2024-10-23 01:52:58.998  1284-2137  Client                  com.ubtechinc.alpha2services         I   isConfig true
2024-10-23 01:52:58.998   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.002  1284-2137  Client                  com.ubtechinc.alpha2services         I   APP NEED TO UPDATE
2024-10-23 01:52:59.004  1284-2137  Client                  com.ubtechinc.alpha2services         I   APP NEED TO UPDATE
2024-10-23 01:52:59.004  1284-2137  AlphaEventManager       com.ubtechinc.alpha2services         D  STATE_PREPARE event.index=0
2024-10-23 01:52:59.004  1284-2137  AlphaEventManager       com.ubtechinc.alpha2services         D   mEventQueue.length=1 State = 0
2024-10-23 01:52:59.004  1284-2137  AlphaEventManager       com.ubtechinc.alpha2services         D   mWorkingEvent.getmObj=There is a new version for the robot's system. It is upgrading now. Please don't turn off the robot.
2024-10-23 01:52:59.006  1284-2137  System.err              com.ubtechinc.alpha2services         W  android.content.pm.PackageManager$NameNotFoundException: com.ubtech.smartcamera
2024-10-23 01:52:59.007  1284-2137  System.err              com.ubtechinc.alpha2services         W  	at android.app.ApplicationPackageManager.getPackageInfo(ApplicationPackageManager.java:115)
2024-10-23 01:52:59.007  1284-2137  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.updatemanager.VersionUtils.getVersion(VersionUtils.java:92)
2024-10-23 01:52:59.007  1284-2137  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.updatemanager.VersionManager.checkProcess(VersionManager.java:249)
2024-10-23 01:52:59.007  1284-2137  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.updatemanager.VersionManager.startProcess(VersionManager.java:302)
2024-10-23 01:52:59.007  1284-2137  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.updatemanager.VersionManager.readResult(VersionManager.java:211)
2024-10-23 01:52:59.007  1284-2137  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.updatemanager.FileManager$ReadThread.run(FileManager.java:124)
2024-10-23 01:52:59.007  1284-2137  Client                  com.ubtechinc.alpha2services         I   APP IS THE THE NEW VERSION
2024-10-23 01:52:59.007  1284-2137  Client                  com.ubtechinc.alpha2services         I   requestServer 
2024-10-23 01:52:59.010  1284-2137  Client                  com.ubtechinc.alpha2services         I   vInfo.getLocalVersion()= 5
2024-10-23 01:52:59.010  1284-2137  Client                  com.ubtechinc.alpha2services         I   vInfo.getPackageName()= com.ubtechinc.alphaenglishchat
2024-10-23 01:52:59.010  1284-2137  Client                  com.ubtechinc.alpha2services         I   vInfo.getNewVersion()= 9
2024-10-23 01:52:59.010  1284-2137  Client                  com.ubtechinc.alpha2services         I   vInfo.RobotVersion= 1
2024-10-23 01:52:59.014   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.025  2068-2111  bt_hwcfg                com.android.bluetooth                I  bt vendor lib: set UART baud 115200
2024-10-23 01:52:59.025  2068-2111  bt_hwcfg                com.android.bluetooth                D  Settlement delay -- 200 ms
2024-10-23 01:52:59.025  2068-2111  bt_hwcfg                com.android.bluetooth                I  Setting fw settlement delay to 200 
2024-10-23 01:52:59.030   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.046   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.058   585-585   DisplayManager          com.android.systemui                 D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.060   585-585   DisplayManager          com.android.systemui                 D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.071   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.072   585-585   DisplayManager          com.android.systemui                 D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.082   585-585   DisplayManager          com.android.systemui                 D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.083   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.096   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.116  1284-2139  nxy                     com.ubtechinc.alpha2services         I  !!请求消息{
                                                                                                      "fromVersion" : "5",
                                                                                                      "packageName" : "com.ubtechinc.alphaenglishchat",
                                                                                                      "robotVersion" : 1,
                                                                                                      "toVersion" : "9",
                                                                                                      "appType" : "2",
                                                                                                      "requestKey" : "D3AABB339D66B924F5029249FCB5C12E",
                                                                                                      "requestTime" : "20241023015259",
                                                                                                      "serviceVersion" : "V1.0",
                                                                                                      "systemLanguage" : "EN"
                                                                                                    }
2024-10-23 01:52:59.127   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.183   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.227   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.232  2068-2111  bt_hwcfg                com.android.bluetooth                I  bt vendor lib: set UART baud 1500000
2024-10-23 01:52:59.232  2068-2111  bt_hwcfg                com.android.bluetooth                I  Setting local bd addr to 22:22:02:B3:43:A9
2024-10-23 01:52:59.252   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.261  2068-2111  bt_hwcfg                com.android.bluetooth                I  vendor lib fwcfg completed
2024-10-23 01:52:59.261  2068-2109  bt-btu                  com.android.bluetooth                I  btu_task received preload complete event
2024-10-23 01:52:59.265  2068-2109  <no-tag>                com.android.bluetooth                I  BTE_InitTraceLevels -- TRC_HCI
2024-10-23 01:52:59.265  2068-2109  <no-tag>                com.android.bluetooth                I  BTE_InitTraceLevels -- TRC_L2CAP
2024-10-23 01:52:59.265  2068-2109  <no-tag>                com.android.bluetooth                I  BTE_InitTraceLevels -- TRC_RFCOMM
2024-10-23 01:52:59.265  2068-2109  <no-tag>                com.android.bluetooth                I  BTE_InitTraceLevels -- TRC_AVDT
2024-10-23 01:52:59.265  2068-2109  <no-tag>                com.android.bluetooth                I  BTE_InitTraceLevels -- TRC_AVRC
2024-10-23 01:52:59.265  2068-2109  <no-tag>                com.android.bluetooth                I  BTE_InitTraceLevels -- TRC_A2D
2024-10-23 01:52:59.265  2068-2109  <no-tag>                com.android.bluetooth                I  BTE_InitTraceLevels -- TRC_BNEP
2024-10-23 01:52:59.265  2068-2109  <no-tag>                com.android.bluetooth                I  BTE_InitTraceLevels -- TRC_BTM
2024-10-23 01:52:59.265  2068-2109  <no-tag>                com.android.bluetooth                I  BTE_InitTraceLevels -- TRC_GAP
2024-10-23 01:52:59.265  2068-2109  <no-tag>                com.android.bluetooth                I  BTE_InitTraceLevels -- TRC_PAN
2024-10-23 01:52:59.265  2068-2109  <no-tag>                com.android.bluetooth                I  BTE_InitTraceLevels -- TRC_SDP
2024-10-23 01:52:59.265  2068-2109  <no-tag>                com.android.bluetooth                I  BTE_InitTraceLevels -- TRC_GATT
2024-10-23 01:52:59.265  2068-2109  <no-tag>                com.android.bluetooth                I  BTE_InitTraceLevels -- TRC_SMP
2024-10-23 01:52:59.265  2068-2109  <no-tag>                com.android.bluetooth                I  BTE_InitTraceLevels -- TRC_BTAPP
2024-10-23 01:52:59.265  2068-2109  <no-tag>                com.android.bluetooth                I  BTE_InitTraceLevels -- TRC_BTIF
2024-10-23 01:52:59.280   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.298   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.318   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.336   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.344  2068-2109  bt-btm                  com.android.bluetooth                E  BTM_SecRegister:p_cb_info->p_le_callback == 0xa302a2c9 
2024-10-23 01:52:59.344  2068-2109  bt-btm                  com.android.bluetooth                E  BTM_SecRegister: btm_cb.api.p_le_callback = 0xa302a2c9 
2024-10-23 01:52:59.358   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.376   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.395   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.410   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.412  2068-2096  bt-btif                 com.android.bluetooth                E  Calling BTA_HhEnable
2024-10-23 01:52:59.413  2068-2096  bt-btif                 com.android.bluetooth                E  btif_storage_get_adapter_property service_mask:0x2140040
2024-10-23 01:52:59.413  2068-2096  BluetoothA...Properties com.android.bluetooth                D  Address is:22:22:02:B3:43:A9
2024-10-23 01:52:59.415  2068-2096  BluetoothA...Properties com.android.bluetooth                D  Name is: Alpha2_A202B04161001030DEC
2024-10-23 01:52:59.415   464-464   BluetoothManagerService system_process                       D  Bluetooth Adapter name changed to Alpha2_A202B04161001030DEC
2024-10-23 01:52:59.415   464-464   BluetoothManagerService system_process                       D  Stored Bluetooth name: Alpha2_A202B04161001030DEC
2024-10-23 01:52:59.416  2068-2096  BluetoothA...Properties com.android.bluetooth                D  Scan Mode:20
2024-10-23 01:52:59.416  2068-2096  BluetoothA...Properties com.android.bluetooth                D  Discoverable Timeout:120
2024-10-23 01:52:59.416  2068-2111  bt_vendor               com.android.bluetooth                D  SCO config
2024-10-23 01:52:59.418  2068-2096  bte_conf                com.android.bluetooth                D  Device ID record 1 : primary
2024-10-23 01:52:59.418  2068-2096  bte_conf                com.android.bluetooth                D    vendorId            = 000f
2024-10-23 01:52:59.418  2068-2096  bte_conf                com.android.bluetooth                D    vendorIdSource      = 0001
2024-10-23 01:52:59.418  2068-2096  bte_conf                com.android.bluetooth                D    product             = 1200
2024-10-23 01:52:59.418  2068-2096  bte_conf                com.android.bluetooth                D    version             = 1436
2024-10-23 01:52:59.418  2068-2096  bte_conf                com.android.bluetooth                D    clientExecutableURL = 
2024-10-23 01:52:59.418  2068-2096  bte_conf                com.android.bluetooth                D    serviceDescription  = 
2024-10-23 01:52:59.418  2068-2096  bte_conf                com.android.bluetooth                D    documentationURL    = 
2024-10-23 01:52:59.418  2068-2096  bte_conf                com.android.bluetooth                D  bte_load_did_conf no section named DID2.
2024-10-23 01:52:59.419  2068-2093  BluetoothAdapterState   com.android.bluetooth                D  CURRENT_STATE=PENDING, MESSAGE = ENABLE_READY, isTurningOn=true, isTurningOff=false
2024-10-23 01:52:59.419  2068-2093  BluetoothA...Properties com.android.bluetooth                D  ScanMode =  20
2024-10-23 01:52:59.419  2068-2093  BluetoothA...Properties com.android.bluetooth                D  State =  11
2024-10-23 01:52:59.419  2068-2096  BluetoothPanServiceJni  com.android.bluetooth                D  control_state_callback(L61): state:0, local_role:3, ifname:bt-pan
2024-10-23 01:52:59.419  2068-2093  BluetoothAdapterState:  com.android.bluetooth                D  transitionTo: destState=OnState
2024-10-23 01:52:59.419  2068-2093  BluetoothA...Properties com.android.bluetooth                D  Setting state to 12
2024-10-23 01:52:59.419  2068-2093  BluetoothAdapterState   com.android.bluetooth                I  Bluetooth adapter state changed: 11-> 12
2024-10-23 01:52:59.420   464-492   BluetoothManagerService system_process                       D  Message: 60
2024-10-23 01:52:59.420   464-492   BluetoothManagerService system_process                       D  MESSAGE_BLUETOOTH_STATE_CHANGE: prevState = 11, newState=12
2024-10-23 01:52:59.420   464-492   BluetoothManagerService system_process                       D  Broadcasting onBluetoothStateChange(true) to 14 receivers.
2024-10-23 01:52:59.420  2068-2093  BluetoothAdapterState   com.android.bluetooth                I  Entering On State
2024-10-23 01:52:59.421  2068-2096  BluetoothA...Properties com.android.bluetooth                D  Scan Mode:21
2024-10-23 01:52:59.421  2068-2096  BluetoothA...Properties com.android.bluetooth                D  Discoverable Timeout:120
2024-10-23 01:52:59.422   585-1329  BluetoothPan            com.android.systemui                 D  onBluetoothStateChange(on) call bindService
2024-10-23 01:52:59.426   464-492   BluetoothHeadset        system_process                       D  onBluetoothStateChange: up=true
2024-10-23 01:52:59.427   464-492   BluetoothManagerService system_process                       D  Creating new ProfileServiceConnections object for profile: 1
2024-10-23 01:52:59.428   585-605   BluetoothHeadsetClient  com.android.systemui                 D  onBluetoothStateChange: up=true
2024-10-23 01:52:59.430   464-464   BluetoothManagerService system_process                       D  com.android.bluetooth:com.android.bluetooth.hfp.HeadsetService:onServiceConnected() 
2024-10-23 01:52:59.431   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.432   585-605   BluetoothHeadsetClient  com.android.systemui                 E  Could not bind to Bluetooth Headset Client Service with Intent { act=android.bluetooth.IBluetoothHeadsetClient }
2024-10-23 01:52:59.433   585-1329  BluetoothHeadset        com.android.systemui                 D  onBluetoothStateChange: up=true
2024-10-23 01:52:59.434   585-603   BluetoothA...Controller com.android.systemui                 D  onBluetoothStateChange: up=true
2024-10-23 01:52:59.435   585-603   BluetoothA...Controller com.android.systemui                 E  Could not bind to Bluetooth AVRCP Controller Service with Intent { act=android.bluetooth.IBluetoothAvrcpController }
2024-10-23 01:52:59.436   585-605   BluetoothA2dp           com.android.systemui                 D  onBluetoothStateChange: up=true
2024-10-23 01:52:59.437  2068-2109  bt-btm                  com.android.bluetooth                W  Stopping oneshot timer
2024-10-23 01:52:59.437   804-822   BluetoothHeadset        com.android.phone                    D  onBluetoothStateChange: up=true
2024-10-23 01:52:59.437  2068-2111  bt_h4                   com.android.bluetooth                E  vendor lib postload completed
2024-10-23 01:52:59.438  1284-1431  BluetoothA2dp           com.ubtechinc.alpha2services         D  onBluetoothStateChange: up=true
2024-10-23 01:52:59.439   585-1329  BluetoothMap            com.android.systemui                 D  onBluetoothStateChange: up=true
2024-10-23 01:52:59.439   585-1329  BluetoothMap            com.android.systemui                 E  Could not bind to Bluetooth MAP Service with Intent { act=android.bluetooth.IBluetoothMap }
2024-10-23 01:52:59.441   585-603   BluetoothA2dpSink       com.android.systemui                 D  onBluetoothStateChange: up=true
2024-10-23 01:52:59.441   585-603   BluetoothA2dpSink       com.android.systemui                 E  Could not bind to Bluetooth A2DP Service with Intent { act=android.bluetooth.IBluetoothA2dpSink }
2024-10-23 01:52:59.442   464-492   BluetoothA2dp           system_process                       D  onBluetoothStateChange: up=true
2024-10-23 01:52:59.442   464-492   BluetoothHeadset        system_process                       D  onBluetoothStateChange: up=true
2024-10-23 01:52:59.442   585-605   BluetoothInputDevice    com.android.systemui                 D  onBluetoothStateChange: up=true
2024-10-23 01:52:59.442   464-492   BluetoothHeadset        system_process                       D  onBluetoothStateChange: up=true
2024-10-23 01:52:59.443   464-492   BluetoothManagerService system_process                       D  Bluetooth State Change Intent: 11 -> 12
2024-10-23 01:52:59.447   464-464   BluetoothManagerService system_process                       D  BluetoothServiceConnection: com.android.bluetooth.gatt.GattService
2024-10-23 01:52:59.448   464-492   BluetoothManagerService system_process                       D  Message: 40
2024-10-23 01:52:59.448   464-492   BluetoothManagerService system_process                       D  MESSAGE_BLUETOOTH_SERVICE_CONNECTED: 2
2024-10-23 01:52:59.453   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.458  2068-2109  bt-btm                  com.android.bluetooth                W  Stopping oneshot timer
2024-10-23 01:52:59.458  1679-1679  ContextImpl             com.android.settings                 W  Calling a method in the system process without a qualified user: android.app.ContextImpl.startService:1709 android.content.ContextWrapper.startService:516 android.content.ContextWrapper.startService:516 com.android.settings.bluetooth.DockEventReceiver.beginStartingService:134 com.android.settings.bluetooth.DockEventReceiver.onReceive:115 
2024-10-23 01:52:59.464  2068-2109  bt-btm                  com.android.bluetooth                W  Stopping oneshot timer
2024-10-23 01:52:59.470  2068-2109  bt-btm                  com.android.bluetooth                W  Stopping oneshot timer
2024-10-23 01:52:59.473  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:52:59.473  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  mAudioSource == null
2024-10-23 01:52:59.473  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=Listening...
2024-10-23 01:52:59.474  1284-1284  CustomAudioSource       com.ubtechinc.alpha2services         D  setisWorking=true
2024-10-23 01:52:59.478   464-492   BluetoothManagerService system_process                       D  Message: 20
2024-10-23 01:52:59.478   464-492   BluetoothManagerService system_process                       D  Added callback: android.bluetooth.IBluetoothManagerCallback$Stub$Proxy@3cc30895:true
2024-10-23 01:52:59.486   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.492  1679-1679  LocalBluet...ileManager com.android.settings                 D  Adding local A2DP profile
2024-10-23 01:52:59.496   464-492   BluetoothManagerService system_process                       D  Message: 30
2024-10-23 01:52:59.500  1679-1679  LocalBluet...ileManager com.android.settings                 D  Adding local HEADSET profile
2024-10-23 01:52:59.502   464-492   BluetoothManagerService system_process                       D  Message: 30
2024-10-23 01:52:59.503  1284-2139  nxy                     com.ubtechinc.alpha2services         I  !!!响应消息{"status":true,"info":"0000","models":null}
2024-10-23 01:52:59.511   464-492   BluetoothManagerService system_process                       D  Message: 30
2024-10-23 01:52:59.518  2068-2109  bt-btm                  com.android.bluetooth                W  Stopping oneshot timer
2024-10-23 01:52:59.523   464-492   BluetoothManagerService system_process                       D  Message: 30
2024-10-23 01:52:59.529   464-492   BluetoothManagerService system_process                       D  Message: 400
2024-10-23 01:52:59.529   464-492   BluetoothHeadset        system_process                       D  Proxy object connected
2024-10-23 01:52:59.533   464-492   BluetoothManagerService system_process                       D  Message: 400
2024-10-23 01:52:59.534   585-1329  BluetoothHeadset        com.android.systemui                 D  Proxy object connected
2024-10-23 01:52:59.534  1679-1679  LocalBluet...ileManager com.android.settings                 D  Adding local MAP profile
2024-10-23 01:52:59.538   464-492   BluetoothManagerService system_process                       D  Message: 400
2024-10-23 01:52:59.538   804-820   BluetoothHeadset        com.android.phone                    D  Proxy object connected
2024-10-23 01:52:59.538   464-879   BluetoothManagerService system_process                       D  checkIfCallerIsForegroundUser: valid=true callingUser=0 parentUser=-10000 foregroundUser=0
2024-10-23 01:52:59.540  2068-2145  BluetoothAdapter        com.android.bluetooth                W  getBluetoothService() called with no BluetoothManagerCallback
2024-10-23 01:52:59.544  2068-2109  bt-btm                  com.android.bluetooth                W  Stopping oneshot timer
2024-10-23 01:52:59.545   464-492   BluetoothManagerService system_process                       D  Message: 400
2024-10-23 01:52:59.545   464-492   BluetoothHeadset        system_process                       D  Proxy object connected
2024-10-23 01:52:59.545   464-492   BluetoothManagerService system_process                       D  Message: 400
2024-10-23 01:52:59.545   464-492   BluetoothHeadset        system_process                       D  Proxy object connected
2024-10-23 01:52:59.552  2068-2109  bt-btm                  com.android.bluetooth                W  Stopping oneshot timer
2024-10-23 01:52:59.565  1679-1679  BluetoothMap            com.android.settings                 D  Create BluetoothMap proxy object
2024-10-23 01:52:59.566   464-492   BluetoothManagerService system_process                       D  Message: 30
2024-10-23 01:52:59.580   464-480   BluetoothManagerService system_process                       D  checkIfCallerIsForegroundUser: valid=true callingUser=0 parentUser=-10000 foregroundUser=0
2024-10-23 01:52:59.582  1679-1679  BluetoothMap            com.android.settings                 E  Could not bind to Bluetooth MAP Service with Intent { act=android.bluetooth.IBluetoothMap }
2024-10-23 01:52:59.583  2068-2150  BluetoothAdapter        com.android.bluetooth                W  getBluetoothService() called with no BluetoothManagerCallback
2024-10-23 01:52:59.585   464-492   BluetoothManagerService system_process                       D  Message: 30
2024-10-23 01:52:59.588  2068-2150  BtOppRfcommListener     com.android.bluetooth                I  Accept thread started.
2024-10-23 01:52:59.595   823-1200  OpenGLRenderer          com.android.launcher3                W  Incorrectly called buildLayer on View: ShortcutAndWidgetContainer, destroying layer...
2024-10-23 01:52:59.603  1679-1679  LocalBluet...ileManager com.android.settings                 D  LocalBluetoothProfileManager construction complete
2024-10-23 01:52:59.605   464-492   BluetoothManagerService system_process                       D  Message: 400
2024-10-23 01:52:59.606  1679-1697  BluetoothHeadset        com.android.settings                 D  Proxy object connected
2024-10-23 01:52:59.609  1679-1679  DockEventReceiver       com.android.settings                 D  finishStartingService: stopping service
2024-10-23 01:52:59.610  1679-1679  BluetoothA2dp           com.android.settings                 D  Proxy object connected
2024-10-23 01:52:59.610  1679-1679  A2dpProfile             com.android.settings                 D  Bluetooth service connected
2024-10-23 01:52:59.614  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  TTS !!!! text=startTTS 1
2024-10-23 01:52:59.614  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  TTS ubt enterTtsPlay 
2024-10-23 01:52:59.614  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  TTS ubt enterTtsPlay tts is playing
2024-10-23 01:52:59.614  1284-1284  tts                     com.ubtechinc.alpha2services         D  ttsGenerationStarted() for text = "connection successful".
2024-10-23 01:52:59.614  1284-1284  NMT                     com.ubtechinc.alpha2services         E  State check failed
                                                                                                    java.lang.IllegalStateException: SpeakerPlayerSink is in an invalid state: Already started.
                                                                                                    	at com.nuance.dragon.toolkit.util.internal.d.a(SourceFile:52)
                                                                                                    	at com.nuance.dragon.toolkit.audio.sinks.PlayerSink.startPlaying(SourceFile:256)
                                                                                                    	at com.ubtechinc.speechmanager.nuance.util.NuanceTTS.speakTTS(NuanceTTS.java:280)
                                                                                                    	at com.ubtechinc.speechmanager.nuance.util.NuanceTTS.TTS_Play(NuanceTTS.java:294)
                                                                                                    	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl.enterTtsPlay(NuanceTTSImpl.java:206)
                                                                                                    	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl.startTTS(NuanceTTSImpl.java:185)
                                                                                                    	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl.access$500(NuanceTTSImpl.java:57)
                                                                                                    	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl$2.handleMessage(NuanceTTSImpl.java:227)
                                                                                                    	at android.os.Handler.dispatchMessage(Handler.java:102)
                                                                                                    	at android.os.Looper.loop(Looper.java:135)
                                                                                                    	at android.app.ActivityThread.main(ActivityThread.java:5280)
                                                                                                    	at java.lang.reflect.Method.invoke(Native Method)
                                                                                                    	at java.lang.reflect.Method.invoke(Method.java:372)
                                                                                                    	at com.android.internal.os.ZygoteInit$MethodAndArgsCaller.run(ZygoteInit.java:963)
                                                                                                    	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:758)
2024-10-23 01:52:59.614  1284-1284  System.err              com.ubtechinc.alpha2services         W  java.lang.IllegalStateException: SpeakerPlayerSink is in an invalid state: Already started.
2024-10-23 01:52:59.614  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.nuance.dragon.toolkit.util.internal.d.a(SourceFile:52)
2024-10-23 01:52:59.615  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.nuance.dragon.toolkit.audio.sinks.PlayerSink.startPlaying(SourceFile:256)
2024-10-23 01:52:59.615  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.speechmanager.nuance.util.NuanceTTS.speakTTS(NuanceTTS.java:280)
2024-10-23 01:52:59.615  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.speechmanager.nuance.util.NuanceTTS.TTS_Play(NuanceTTS.java:294)
2024-10-23 01:52:59.615  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl.enterTtsPlay(NuanceTTSImpl.java:206)
2024-10-23 01:52:59.615  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl.startTTS(NuanceTTSImpl.java:185)
2024-10-23 01:52:59.615  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl.access$500(NuanceTTSImpl.java:57)
2024-10-23 01:52:59.615  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl$2.handleMessage(NuanceTTSImpl.java:227)
2024-10-23 01:52:59.615  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.os.Handler.dispatchMessage(Handler.java:102)
2024-10-23 01:52:59.615  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.os.Looper.loop(Looper.java:135)
2024-10-23 01:52:59.615  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.app.ActivityThread.main(ActivityThread.java:5280)
2024-10-23 01:52:59.615  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at java.lang.reflect.Method.invoke(Native Method)
2024-10-23 01:52:59.615  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at java.lang.reflect.Method.invoke(Method.java:372)
2024-10-23 01:52:59.615  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.android.internal.os.ZygoteInit$MethodAndArgsCaller.run(ZygoteInit.java:963)
2024-10-23 01:52:59.615  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:758)
2024-10-23 01:52:59.615  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:59.615  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:59.616  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:59.616  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:52:59.620  1284-1284  SpeechManager           com.ubtechinc.alpha2services         I  onPlayHigh
2024-10-23 01:52:59.622  1679-1679  BluetoothInputDevice    com.android.settings                 D  Proxy object connected
2024-10-23 01:52:59.623  1679-1679  HidProfile              com.android.settings                 D  Bluetooth service connected
2024-10-23 01:52:59.625  1284-1284  SpeechManager           com.ubtechinc.alpha2services         I  ttsIsSpeaking:true      language:null
2024-10-23 01:52:59.626  1284-1284  tts                     com.ubtechinc.alpha2services         D  ttsGenerationFinished for text = "connection successful" (success = false).
2024-10-23 01:52:59.626  1284-1890  NMT-Vocalizer           com.ubtechinc.alpha2services         W  outNotify: synthesis has been canceled.
2024-10-23 01:52:59.629  1679-1679  BluetoothPan            com.android.settings                 D  BluetoothPAN Proxy object connected
2024-10-23 01:52:59.629  1679-1679  PanProfile              com.android.settings                 D  Bluetooth service connected
2024-10-23 01:52:59.629  1679-1679  BluetoothPbap           com.android.settings                 D  Proxy object connected
2024-10-23 01:52:59.629  1679-1679  PbapServerProfile       com.android.settings                 D  Bluetooth service connected
2024-10-23 01:52:59.630  1679-1679  HeadsetProfile          com.android.settings                 D  Bluetooth service connected
2024-10-23 01:52:59.632  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  TTS !!!!!!!!!!!! stopPlayText
2024-10-23 01:52:59.632  1284-1284  SpeechManager           com.ubtechinc.alpha2services         D  onTTsComplete mSpeechState:SPEECH_STATE_GRAMMAR
2024-10-23 01:52:59.635  1284-1897  SpeechManager           com.ubtechinc.alpha2services         D  what:1
2024-10-23 01:52:59.637  1284-1897  SpeechManager           com.ubtechinc.alpha2services         D  SpeechManager onServerPlayEnd
2024-10-23 01:52:59.638  1284-1897  AlphaEventManager       com.ubtechinc.alpha2services         D   onEventStop event.index=0
2024-10-23 01:52:59.638  1284-1897  AlphaEventManager       com.ubtechinc.alpha2services         D   mEventQueue.length=0 State = 4
2024-10-23 01:52:59.638  1284-1897  SpeechManager           com.ubtechinc.alpha2services         D  SpeechMainUtil onServerPlayEnd
2024-10-23 01:52:59.638  1284-1897  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!!!!!!!!!!!! onServerPlayEnd
2024-10-23 01:52:59.638  1284-1897  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         V  alpha2TTsFinish :true
2024-10-23 01:52:59.644  1284-1897  Alpha2FirstimeBoot      com.ubtechinc.alpha2services         V  setTTSFinished() : actionFinished :true isTTSFinished :true State : StateEnd
2024-10-23 01:52:59.651  1284-1284  SpeechManager           com.ubtechinc.alpha2services         D  进入识别
2024-10-23 01:52:59.652  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR startSpeechASR
2024-10-23 01:52:59.652  1284-1284  CustomAudioSource       com.ubtechinc.alpha2services         D  setisWorking=false
2024-10-23 01:52:59.652  1284-1284  SpeechManager           com.ubtechinc.alpha2services         I  language:null
2024-10-23 01:52:59.653  1284-1284  SpeechManager           com.ubtechinc.alpha2services         I  start tts play
2024-10-23 01:52:59.654  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  TTS !!! strText=There is a new version for the robot's system. It is upgrading now. Please don't turn off the robot.
2024-10-23 01:52:59.660  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:59.660  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:59.660  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:59.660  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:59.679   464-844   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.683   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.685  1284-1284  ViewRootImpl            com.ubtechinc.alpha2services         D  onDetachedFromWindow ungister contentObserver
2024-10-23 01:52:59.699   464-676   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.707  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:59.707  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:59.707  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:59.707  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:59.707  1284-1284  Alpha2Connection        com.ubtechinc.alpha2services         D  BLUETOOTH STATE_ON 
2024-10-23 01:52:59.713   464-493   DisplayManager          system_process                       D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:52:59.716  1284-1284  BluetoothChatService    com.ubtechinc.alpha2services         D  start
2024-10-23 01:52:59.721   464-481   BluetoothManagerService system_process                       D  checkIfCallerIsForegroundUser: valid=true callingUser=0 parentUser=-10000 foregroundUser=0
2024-10-23 01:52:59.723  1284-1284  BluetoothAdapter        com.ubtechinc.alpha2services         W  getBluetoothService() called with no BluetoothManagerCallback
2024-10-23 01:52:59.725  1284-1284  BluetoothChatService    com.ubtechinc.alpha2services         E   made bluetooth listen socket: android.bluetooth.BluetoothServerSocket@3103b6aa
2024-10-23 01:52:59.728   464-676   BluetoothManagerService system_process                       D  checkIfCallerIsForegroundUser: valid=true callingUser=0 parentUser=-10000 foregroundUser=0
2024-10-23 01:52:59.728  1284-2153  BluetoothChatService    com.ubtechinc.alpha2services         D  Socket Type: SecureBEGIN mAcceptThreadThread[Thread-656,5,main]
2024-10-23 01:52:59.730  1284-1284  BluetoothAdapter        com.ubtechinc.alpha2services         W  getBluetoothService() called with no BluetoothManagerCallback
2024-10-23 01:52:59.735  1284-1284  BluetoothChatService    com.ubtechinc.alpha2services         E   made bluetooth listen socket: android.bluetooth.BluetoothServerSocket@31b8c29b
2024-10-23 01:52:59.735  1284-1284  Client                  com.ubtechinc.alpha2services         I   REQUEST_VERSION_APP onSuccess{"status":true,"info":"0000","models":null}
2024-10-23 01:52:59.739  1284-2153  BluetoothChatService    com.ubtechinc.alpha2services         D  setState() 0 -> 1
2024-10-23 01:52:59.740  1284-2154  BluetoothChatService    com.ubtechinc.alpha2services         D  Socket Type: InsecureBEGIN mAcceptThreadThread[Thread-658,5,main]
2024-10-23 01:52:59.740  1284-2154  BluetoothChatService    com.ubtechinc.alpha2services         D  setState() 1 -> 1
2024-10-23 01:52:59.770  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  STATE_PREPARE event.index=0
2024-10-23 01:52:59.770  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D   mEventQueue.length=1 State = 0
2024-10-23 01:52:59.770  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D   mWorkingEvent.getmObj=Exception,exit upgrade
2024-10-23 01:52:59.770  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  STATE_PREPARE event.index=0
2024-10-23 01:52:59.770  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D   mEventQueue.length=1 State = 0
2024-10-23 01:52:59.770  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D   mWorkingEvent.index=0
2024-10-23 01:52:59.770  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D   mWorkingEvent.getmPriority=5
2024-10-23 01:52:59.770  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D   nextEvent.getmPriority=5
2024-10-23 01:52:59.770  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D   nextEvent.getmObj=Upgrade was not successful. You can still use the robot. Or you can reboot the robot and restart upgrade.
2024-10-23 01:52:59.770  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D   mEventQueue.length=1 State = 2
2024-10-23 01:52:59.770  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:59.770  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:59.770  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:52:59.770  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.LED_ACTION
2024-10-23 01:52:59.770  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!! control_type:1
2024-10-23 01:52:59.770  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!! LED_type=eye_led LED_state=close_led
2024-10-23 01:52:59.770  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR handler 5
2024-10-23 01:53:00.310  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:00.310  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:00.310  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR handler 9
2024-10-23 01:53:00.310  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR handler 9
2024-10-23 01:53:00.310  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR stopSpeechAndEnterIdleMode releaseRecord=false
2024-10-23 01:53:00.311  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR stopAudioRecord
2024-10-23 01:53:00.311  1284-1284  CustomAudioSource       com.ubtechinc.alpha2services         D  setisWorking=false
2024-10-23 01:53:00.311  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=LocalListener:_onError
2024-10-23 01:53:00.315  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR stopAudioRecord
2024-10-23 01:53:00.315  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=Local Recog Error: code=0, reason=Recognition canceled
2024-10-23 01:53:00.315  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  TTS !!!! text=startTTS 1
2024-10-23 01:53:00.316  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  TTS ubt enterTtsPlay 
2024-10-23 01:53:00.316  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  TTS ubt enterTtsPlay tts is playing
2024-10-23 01:53:00.316  1284-1284  tts                     com.ubtechinc.alpha2services         D  ttsGenerationStarted() for text = "There is a new version for the robot's system. It is upgrading now. Please don't turn off the robot.".
2024-10-23 01:53:00.320  1284-1284  NMT                     com.ubtechinc.alpha2services         E  State check failed
                                                                                                    java.lang.IllegalStateException: SpeakerPlayerSink is in an invalid state: Already started.
                                                                                                    	at com.nuance.dragon.toolkit.util.internal.d.a(SourceFile:52)
                                                                                                    	at com.nuance.dragon.toolkit.audio.sinks.PlayerSink.startPlaying(SourceFile:256)
                                                                                                    	at com.ubtechinc.speechmanager.nuance.util.NuanceTTS.speakTTS(NuanceTTS.java:280)
                                                                                                    	at com.ubtechinc.speechmanager.nuance.util.NuanceTTS.TTS_Play(NuanceTTS.java:294)
                                                                                                    	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl.enterTtsPlay(NuanceTTSImpl.java:206)
                                                                                                    	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl.startTTS(NuanceTTSImpl.java:185)
                                                                                                    	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl.access$500(NuanceTTSImpl.java:57)
                                                                                                    	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl$2.handleMessage(NuanceTTSImpl.java:227)
                                                                                                    	at android.os.Handler.dispatchMessage(Handler.java:102)
                                                                                                    	at android.os.Looper.loop(Looper.java:135)
                                                                                                    	at android.app.ActivityThread.main(ActivityThread.java:5280)
                                                                                                    	at java.lang.reflect.Method.invoke(Native Method)
                                                                                                    	at java.lang.reflect.Method.invoke(Method.java:372)
                                                                                                    	at com.android.internal.os.ZygoteInit$MethodAndArgsCaller.run(ZygoteInit.java:963)
                                                                                                    	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:758)
2024-10-23 01:53:00.321  1284-1284  System.err              com.ubtechinc.alpha2services         W  java.lang.IllegalStateException: SpeakerPlayerSink is in an invalid state: Already started.
2024-10-23 01:53:00.321  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.nuance.dragon.toolkit.util.internal.d.a(SourceFile:52)
2024-10-23 01:53:00.321  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.nuance.dragon.toolkit.audio.sinks.PlayerSink.startPlaying(SourceFile:256)
2024-10-23 01:53:00.321  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.speechmanager.nuance.util.NuanceTTS.speakTTS(NuanceTTS.java:280)
2024-10-23 01:53:00.321  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.speechmanager.nuance.util.NuanceTTS.TTS_Play(NuanceTTS.java:294)
2024-10-23 01:53:00.321  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl.enterTtsPlay(NuanceTTSImpl.java:206)
2024-10-23 01:53:00.321  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl.startTTS(NuanceTTSImpl.java:185)
2024-10-23 01:53:00.321  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl.access$500(NuanceTTSImpl.java:57)
2024-10-23 01:53:00.321  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl$2.handleMessage(NuanceTTSImpl.java:227)
2024-10-23 01:53:00.321  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.os.Handler.dispatchMessage(Handler.java:102)
2024-10-23 01:53:00.322  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.os.Looper.loop(Looper.java:135)
2024-10-23 01:53:00.322  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.app.ActivityThread.main(ActivityThread.java:5280)
2024-10-23 01:53:00.322  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at java.lang.reflect.Method.invoke(Native Method)
2024-10-23 01:53:00.322  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at java.lang.reflect.Method.invoke(Method.java:372)
2024-10-23 01:53:00.322  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.android.internal.os.ZygoteInit$MethodAndArgsCaller.run(ZygoteInit.java:963)
2024-10-23 01:53:00.322  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:758)
2024-10-23 01:53:00.322  1284-1284  Choreographer           com.ubtechinc.alpha2services         I  Skipped 40 frames!  The application may be doing too much work on its main thread.
2024-10-23 01:53:00.322  1284-1284  Alpha2Connection        com.ubtechinc.alpha2services         D  LPHA_QR_CODE AND CLOSE THE BLUETOOTH
2024-10-23 01:53:00.323   464-485   BluetoothManagerService system_process                       D  checkIfCallerIsForegroundUser: valid=true callingUser=0 parentUser=-10000 foregroundUser=0
2024-10-23 01:53:00.323   464-485   BluetoothManagerService system_process                       D  disable(): mBluetooth = android.bluetooth.IBluetooth$Stub$Proxy@25f964ac mBinding = false
2024-10-23 01:53:00.339   464-492   BluetoothManagerService system_process                       D  Message: 2
2024-10-23 01:53:00.339  1284-1284  Alpha2Connection        com.ubtechinc.alpha2services         I  !!!!!!!!! onDestroy
2024-10-23 01:53:00.339  1284-1284  Alpha2Connection        com.ubtechinc.alpha2services         D  exit the onDestroy   1013
2024-10-23 01:53:00.339  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:00.339  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:00.339  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:00.339  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:00.339  1284-1284  Alpha2Connection        com.ubtechinc.alpha2services         D  BT LISTEN 
2024-10-23 01:53:00.339  1284-1284  Alpha2Connection        com.ubtechinc.alpha2services         D  BT LISTEN 
2024-10-23 01:53:00.339   464-492   BluetoothManagerService system_process                       D  Sending off request.
2024-10-23 01:53:00.339  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:00.339  1284-1284  SpeechManager           com.ubtechinc.alpha2services         I  onPlayHigh
2024-10-23 01:53:00.340  2068-2093  BluetoothAdapterState   com.android.bluetooth                D  CURRENT_STATE=ON, MESSAGE = USER_TURN_OFF
2024-10-23 01:53:00.340  2068-2093  BluetoothA...Properties com.android.bluetooth                D  Setting state to 13
2024-10-23 01:53:00.340  2068-2093  BluetoothAdapterState   com.android.bluetooth                I  Bluetooth adapter state changed: 12-> 13
2024-10-23 01:53:00.340  1284-1284  SpeechManager           com.ubtechinc.alpha2services         I  ttsIsSpeaking:true      language:null
2024-10-23 01:53:00.342  1284-1284  tts                     com.ubtechinc.alpha2services         D  ttsGenerationFinished for text = "There is a new version for the robot's system. It is upgrading now. Please don't turn off the robot." (success = false).
2024-10-23 01:53:00.342  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  TTS !!!!!!!!!!!! stopPlayText
2024-10-23 01:53:00.342  1284-1284  SpeechManager           com.ubtechinc.alpha2services         D  onTTsComplete mSpeechState:SPEECH_STATE_GRAMMAR
2024-10-23 01:53:00.342  2068-2093  BluetoothAdapterState:  com.android.bluetooth                D  transitionTo: destState=PendingCommandState
2024-10-23 01:53:00.343  2068-2093  BluetoothA...Properties com.android.bluetooth                D  onBluetoothDisable()
2024-10-23 01:53:00.343   464-492   BluetoothManagerService system_process                       D  Message: 60
2024-10-23 01:53:00.343   464-492   BluetoothManagerService system_process                       D  MESSAGE_BLUETOOTH_STATE_CHANGE: prevState = 12, newState=13
2024-10-23 01:53:00.343   464-492   BluetoothManagerService system_process                       D  Bluetooth State Change Intent: 12 -> 13
2024-10-23 01:53:00.343  2068-2093  BluetoothAdapterState   com.android.bluetooth                I  Entering PendingCommandState State: isTurningOn()=false, isTurningOff()=true
2024-10-23 01:53:00.345  2068-2096  BluetoothA...Properties com.android.bluetooth                D  Scan Mode:20
2024-10-23 01:53:00.345  2068-2068  BtOppRfcommListener     com.android.bluetooth                I  stopping Accept Thread
2024-10-23 01:53:00.345  2068-2093  BluetoothAdapterState   com.android.bluetooth                D  CURRENT_STATE=PENDING, MESSAGE = BEGIN_DISABLE, isTurningOn=false, isTurningOff=true
2024-10-23 01:53:00.346  2068-2150  BtOppRfcommListener     com.android.bluetooth                E  Error accept connection java.io.IOException: read failed, socket might closed or timeout, read ret: -1
2024-10-23 01:53:00.346  2068-2150  BtOppRfcommListener     com.android.bluetooth                I  BluetoothSocket listen thread finished
2024-10-23 01:53:00.347  2068-2109  bt-btif                 com.android.bluetooth                W  bta_dm_disable BTA_DISABLE_DELAY set to 200 ms
2024-10-23 01:53:00.347  2068-2109  bt-l2cap                com.android.bluetooth                W  L2CAP - PSM: 0x0019 not found for deregistration
2024-10-23 01:53:00.347  2068-2109  bt-l2cap                com.android.bluetooth                W  L2CAP - PSM: 0x0017 not found for deregistration
2024-10-23 01:53:00.348  2068-2093  btif_config_util        com.android.bluetooth                D  btif_config_save_file(L188): in file name:/data/misc/bluedroid/bt_config.new
2024-10-23 01:53:00.348  1284-2153  BluetoothChatService    com.ubtechinc.alpha2services         E  Socket Type: Secureaccept() failed
                                                                                                    java.io.IOException: read failed, socket might closed or timeout, read ret: -1
                                                                                                    	at android.bluetooth.BluetoothSocket.readAll(BluetoothSocket.java:512)
                                                                                                    	at android.bluetooth.BluetoothSocket.waitSocketSignal(BluetoothSocket.java:489)
                                                                                                    	at android.bluetooth.BluetoothSocket.accept(BluetoothSocket.java:399)
                                                                                                    	at android.bluetooth.BluetoothServerSocket.accept(BluetoothServerSocket.java:130)
                                                                                                    	at android.bluetooth.BluetoothServerSocket.accept(BluetoothServerSocket.java:116)
                                                                                                    	at com.ubtechinc.bluetooth.BluetoothChatService$AcceptThread.run(BluetoothChatService.java:351)
2024-10-23 01:53:00.348  1284-2153  BluetoothChatService    com.ubtechinc.alpha2services         I  END mAcceptThread, socket Type: Secure
2024-10-23 01:53:00.351  1284-1897  SpeechManager           com.ubtechinc.alpha2services         D  what:1
2024-10-23 01:53:00.353  1284-1897  SpeechManager           com.ubtechinc.alpha2services         D  SpeechManager onServerPlayEnd
2024-10-23 01:53:00.354  1284-1897  AlphaEventManager       com.ubtechinc.alpha2services         D   onEventStop event.index=0
2024-10-23 01:53:00.354  1284-1897  AlphaEventManager       com.ubtechinc.alpha2services         D   mEventQueue.length=0 State = 4
2024-10-23 01:53:00.354  1284-1897  SpeechManager           com.ubtechinc.alpha2services         D  SpeechMainUtil onServerPlayEnd
2024-10-23 01:53:00.354  1284-1897  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!!!!!!!!!!!! onServerPlayEnd
2024-10-23 01:53:00.354  1284-1897  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         V  alpha2TTsFinish :true
2024-10-23 01:53:00.355  1284-2154  BluetoothChatService    com.ubtechinc.alpha2services         E  Socket Type: Insecureaccept() failed
                                                                                                    java.io.IOException: read failed, socket might closed or timeout, read ret: -1
                                                                                                    	at android.bluetooth.BluetoothSocket.readAll(BluetoothSocket.java:512)
                                                                                                    	at android.bluetooth.BluetoothSocket.waitSocketSignal(BluetoothSocket.java:489)
                                                                                                    	at android.bluetooth.BluetoothSocket.accept(BluetoothSocket.java:399)
                                                                                                    	at android.bluetooth.BluetoothServerSocket.accept(BluetoothServerSocket.java:130)
                                                                                                    	at android.bluetooth.BluetoothServerSocket.accept(BluetoothServerSocket.java:116)
                                                                                                    	at com.ubtechinc.bluetooth.BluetoothChatService$AcceptThread.run(BluetoothChatService.java:351)
2024-10-23 01:53:00.355  1284-1897  Alpha2FirstimeBoot      com.ubtechinc.alpha2services         V  setTTSFinished() : actionFinished :true isTTSFinished :true State : StateEnd
2024-10-23 01:53:00.355  1284-2154  BluetoothChatService    com.ubtechinc.alpha2services         I  END mAcceptThread, socket Type: Insecure
2024-10-23 01:53:00.355  1679-1679  ContextImpl             com.android.settings                 W  Calling a method in the system process without a qualified user: android.app.ContextImpl.startService:1709 android.content.ContextWrapper.startService:516 android.content.ContextWrapper.startService:516 com.android.settings.bluetooth.DockEventReceiver.beginStartingService:134 com.android.settings.bluetooth.DockEventReceiver.onReceive:115 
2024-10-23 01:53:00.366  1679-1679  DockEventReceiver       com.android.settings                 D  finishStartingService: stopping service
2024-10-23 01:53:00.367  1679-1679  BluetoothPbap           com.android.settings                 D  Proxy object disconnected
2024-10-23 01:53:00.367  1679-1679  PbapServerProfile       com.android.settings                 D  Bluetooth service disconnected
2024-10-23 01:53:00.370  1284-1284  SpeechManager           com.ubtechinc.alpha2services         D  进入识别
2024-10-23 01:53:00.372  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR startSpeechASR
2024-10-23 01:53:00.372  1284-1284  SpeechManager           com.ubtechinc.alpha2services         I  language:null
2024-10-23 01:53:00.373  1284-1284  SpeechManager           com.ubtechinc.alpha2services         I  start tts play
2024-10-23 01:53:00.379  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  TTS !!! strText=Exception,exit upgrade
2024-10-23 01:53:00.380  1284-1284  SpeechManager           com.ubtechinc.alpha2services         I  onPlayHigh
2024-10-23 01:53:00.381  1284-1284  SpeechManager           com.ubtechinc.alpha2services         I  ttsIsSpeaking:false      language:null
2024-10-23 01:53:00.382  1284-1284  SpeechManager           com.ubtechinc.alpha2services         I  language:null
2024-10-23 01:53:00.383  1284-1284  SpeechManager           com.ubtechinc.alpha2services         I  start tts play
2024-10-23 01:53:00.385  1284-1890  NMT-Vocalizer           com.ubtechinc.alpha2services         W  outNotify: synthesis has been canceled.
2024-10-23 01:53:00.387  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  TTS !!! strText=Upgrade was not successful. You can still use the robot. Or you can reboot the robot and restart upgrade.
2024-10-23 01:53:00.388  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:00.388  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:00.388  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:00.388  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:00.388  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:00.388  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:00.388  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:00.388  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:00.388  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:00.388  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:00.388  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:00.389  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:00.389  1284-1284  Alpha2Connection        com.ubtechinc.alpha2services         D  BLUETOOTH STATE_TURNING_OFF 
2024-10-23 01:53:00.389  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.LED_ACTION
2024-10-23 01:53:00.389  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!! control_type:1
2024-10-23 01:53:00.389  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!! LED_type=eye_led LED_state=close_led
2024-10-23 01:53:00.389  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR handler 5
2024-10-23 01:53:00.465  2068-2109  bt-btif                 com.android.bluetooth                W  ag scb idx 1 not allocated
2024-10-23 01:53:00.465  2068-2109  bt-btif                 com.android.bluetooth                E  BTA AG is already disabled, ignoring ...
2024-10-23 01:53:00.465  2068-2109  bt-l2cap                com.android.bluetooth                W  L2CAP - PSM: 0x0019 not found for deregistration
2024-10-23 01:53:00.465  2068-2109  bt-l2cap                com.android.bluetooth                W  L2CAP - PSM: 0x0017 not found for deregistration
2024-10-23 01:53:00.465  2068-2109  bt-l2cap                com.android.bluetooth                W  L2CAP - PSM: 0x0019 not found for deregistration
2024-10-23 01:53:00.465  2068-2109  bt-l2cap                com.android.bluetooth                W  L2CAP - PSM: 0x0017 not found for deregistration
2024-10-23 01:53:00.465  2068-2109  bt-l2cap                com.android.bluetooth                W  L2CAP - PSM: 0x0019 not found for deregistration
2024-10-23 01:53:00.465  2068-2109  bt-l2cap                com.android.bluetooth                W  L2CAP - PSM: 0x0017 not found for deregistration
2024-10-23 01:53:00.465  2068-2134  bt_userial              com.android.bluetooth                D  RX termination
2024-10-23 01:53:00.465  2068-2134  bt_userial              com.android.bluetooth                W  select_read return size <=0:-1, exiting userial_read_thread
2024-10-23 01:53:00.465  2068-2134  bt_userial              com.android.bluetooth                D  Leaving userial_read_thread()
2024-10-23 01:53:00.466  2068-2096  bt_userial              com.android.bluetooth                D  userial_close_reader Joined userial reader thread: 0
2024-10-23 01:53:00.466  2068-2111  bt_hwcfg                com.android.bluetooth                D  hw_epilog_process
2024-10-23 01:53:00.467  2068-2096  bt_userial_vendor       com.android.bluetooth                I  device fd = 56 close
2024-10-23 01:53:00.533  2068-2096  bt_upio                 com.android.bluetooth                D  Delay 500ms for bluetooth power up
2024-10-23 01:53:00.922  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:00.922  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  mAudioSource == null
2024-10-23 01:53:00.922  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=Listening...
2024-10-23 01:53:00.923  1284-1284  CustomAudioSource       com.ubtechinc.alpha2services         D  setisWorking=true
2024-10-23 01:53:01.034  2068-2109  GKI_LINUX               com.android.bluetooth                I  gki_task task_id=0 [BTU] terminating
2024-10-23 01:53:01.034  2068-2096  GKI_LINUX               com.android.bluetooth                I  GKI_exit_task 0 done
2024-10-23 01:53:01.034  2068-2096  GKI_LINUX               com.android.bluetooth                I  GKI_shutdown(): task [BTU] terminated
2024-10-23 01:53:01.035  2068-2093  BluetoothAdapterState   com.android.bluetooth                D  CURRENT_STATE=PENDING, MESSAGE = DISABLED, isTurningOn=false, isTurningOff=true
2024-10-23 01:53:01.037  2068-2068  HeadsetService          com.android.bluetooth                D  Received stop request...Stopping profile...
2024-10-23 01:53:01.039  2068-2099  HeadsetStateMachine     com.android.bluetooth                D  transitionTo: destState=QuittingState
2024-10-23 01:53:01.039  2068-2099  HeadsetStateMachine     com.android.bluetooth                D  Exit Disconnected: -1
2024-10-23 01:53:01.039   464-464   BluetoothManagerService system_process                       D  com.android.bluetooth:com.android.bluetooth.hfp.HeadsetService:onServiceDisconnected()
2024-10-23 01:53:01.042   585-605   BluetoothHeadset        com.android.systemui                 D  Proxy object disconnected
2024-10-23 01:53:01.042  2068-2068  A2dpService             com.android.bluetooth                D  Received stop request...Stopping profile...
2024-10-23 01:53:01.043  2068-2102  A2dpStateMachine        com.android.bluetooth                D  transitionTo: destState=QuittingState
2024-10-23 01:53:01.043  2068-2102  A2dpStateMachine        com.android.bluetooth                D  Exit Disconnected: -1
2024-10-23 01:53:01.046  2068-2093  BluetoothAdapterState   com.android.bluetooth                D  Stopping profile services that were post enabled
2024-10-23 01:53:01.047  1284-2089  NMT                     com.ubtechinc.alpha2services         W  Player stalled
2024-10-23 01:53:01.047  1679-1696  BluetoothHeadset        com.android.settings                 D  Proxy object disconnected
2024-10-23 01:53:01.047  1679-1679  HeadsetProfile          com.android.settings                 D  Bluetooth service disconnected
2024-10-23 01:53:01.051  2068-2068  HidService              com.android.bluetooth                D  Received stop request...Stopping profile...
2024-10-23 01:53:01.051   804-822   BluetoothHeadset        com.android.phone                    D  Proxy object disconnected
2024-10-23 01:53:01.052   464-464   BluetoothHeadset        system_process                       D  Proxy object disconnected
2024-10-23 01:53:01.052   464-464   BluetoothHeadset        system_process                       D  Proxy object disconnected
2024-10-23 01:53:01.052   464-464   BluetoothHeadset        system_process                       D  Proxy object disconnected
2024-10-23 01:53:01.052   464-464   BluetoothA2dp           system_process                       D  Proxy object disconnected
2024-10-23 01:53:01.053  2068-2068  HeadsetStateMachine     com.android.bluetooth                D  Unbinding service...
2024-10-23 01:53:01.054   585-585   BluetoothA2dp           com.android.systemui                 D  Proxy object disconnected
2024-10-23 01:53:01.057   585-585   BluetoothInputDevice    com.android.systemui                 D  Proxy object disconnected
2024-10-23 01:53:01.057  2068-2068  BluetoothH...ServiceJni com.android.bluetooth                W  Cleaning up Bluetooth Handsfree Interface...
2024-10-23 01:53:01.057  2068-2068  BluetoothH...ServiceJni com.android.bluetooth                W  Cleaning up Bluetooth Handsfree callback object
2024-10-23 01:53:01.055  1679-1679  BluetoothA2dp           com.android.settings                 D  Proxy object disconnected
2024-10-23 01:53:01.057  1679-1679  A2dpProfile             com.android.settings                 D  Bluetooth service disconnected
2024-10-23 01:53:01.059  2068-2068  HealthService           com.android.bluetooth                D  Received stop request...Stopping profile...
2024-10-23 01:53:01.060  1679-1679  BluetoothInputDevice    com.android.settings                 D  Proxy object disconnected
2024-10-23 01:53:01.060  1679-1679  HidProfile              com.android.settings                 D  Bluetooth service disconnected
2024-10-23 01:53:01.063  2068-2068  PanService              com.android.bluetooth                D  Received stop request...Stopping profile...
2024-10-23 01:53:01.063  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  TTS !!!! text=startTTS 1
2024-10-23 01:53:01.063  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  TTS ubt enterTtsPlay 
2024-10-23 01:53:01.063  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  TTS ubt enterTtsPlay tts is playing
2024-10-23 01:53:01.064  1284-1284  tts                     com.ubtechinc.alpha2services         D  ttsGenerationStarted() for text = "Exception,exit upgrade".
2024-10-23 01:53:01.065  2068-2068  BtGatt.DebugUtils       com.android.bluetooth                D  handleDebugAction() action=null
2024-10-23 01:53:01.066  2068-2068  BtGatt.GattService      com.android.bluetooth                D  Received stop request...Stopping profile...
2024-10-23 01:53:01.066  2068-2068  BtGatt.GattService      com.android.bluetooth                D  stop()
2024-10-23 01:53:01.066  2068-2068  BtGatt.AdvertiseManager com.android.bluetooth                D  advertise clients cleared
2024-10-23 01:53:01.066  1679-1679  BluetoothPan            com.android.settings                 D  BluetoothPAN Proxy object disconnected
2024-10-23 01:53:01.066  1679-1679  PanProfile              com.android.settings                 D  Bluetooth service disconnected
2024-10-23 01:53:01.068  1284-1284  NMT                     com.ubtechinc.alpha2services         E  State check failed
                                                                                                    java.lang.IllegalStateException: SpeakerPlayerSink is in an invalid state: Already started.
                                                                                                    	at com.nuance.dragon.toolkit.util.internal.d.a(SourceFile:52)
                                                                                                    	at com.nuance.dragon.toolkit.audio.sinks.PlayerSink.startPlaying(SourceFile:256)
                                                                                                    	at com.ubtechinc.speechmanager.nuance.util.NuanceTTS.speakTTS(NuanceTTS.java:280)
                                                                                                    	at com.ubtechinc.speechmanager.nuance.util.NuanceTTS.TTS_Play(NuanceTTS.java:294)
                                                                                                    	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl.enterTtsPlay(NuanceTTSImpl.java:206)
                                                                                                    	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl.startTTS(NuanceTTSImpl.java:185)
                                                                                                    	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl.access$500(NuanceTTSImpl.java:57)
                                                                                                    	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl$2.handleMessage(NuanceTTSImpl.java:227)
                                                                                                    	at android.os.Handler.dispatchMessage(Handler.java:102)
                                                                                                    	at android.os.Looper.loop(Looper.java:135)
                                                                                                    	at android.app.ActivityThread.main(ActivityThread.java:5280)
                                                                                                    	at java.lang.reflect.Method.invoke(Native Method)
                                                                                                    	at java.lang.reflect.Method.invoke(Method.java:372)
                                                                                                    	at com.android.internal.os.ZygoteInit$MethodAndArgsCaller.run(ZygoteInit.java:963)
                                                                                                    	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:758)
2024-10-23 01:53:01.069  2068-2093  BluetoothAdapterState   com.android.bluetooth                D  CURRENT_STATE=PENDING, MESSAGE = STOPPED, isTurningOn=false, isTurningOff=true
2024-10-23 01:53:01.070  2068-2103  GKI_LINUX               com.android.bluetooth                I  gki_task task_id=2 [A2DP-MEDIA] terminating
2024-10-23 01:53:01.070  2068-2093  BluetoothAdapterState:  com.android.bluetooth                D  transitionTo: destState=OffState
2024-10-23 01:53:01.070  2068-2093  BluetoothA...Properties com.android.bluetooth                D  Setting state to 10
2024-10-23 01:53:01.070  2068-2093  BluetoothAdapterState   com.android.bluetooth                I  Bluetooth adapter state changed: 13-> 10
2024-10-23 01:53:01.070  2068-2068  GKI_LINUX               com.android.bluetooth                I  GKI_exit_task 2 done
2024-10-23 01:53:01.070  2068-2068  GKI_LINUX               com.android.bluetooth                I  GKI_shutdown(): task [A2DP-MEDIA] terminated
2024-10-23 01:53:01.070  1284-1284  System.err              com.ubtechinc.alpha2services         W  java.lang.IllegalStateException: SpeakerPlayerSink is in an invalid state: Already started.
2024-10-23 01:53:01.070  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.nuance.dragon.toolkit.util.internal.d.a(SourceFile:52)
2024-10-23 01:53:01.070  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.nuance.dragon.toolkit.audio.sinks.PlayerSink.startPlaying(SourceFile:256)
2024-10-23 01:53:01.070   464-492   BluetoothManagerService system_process                       D  Message: 60
2024-10-23 01:53:01.070   464-492   BluetoothManagerService system_process                       D  MESSAGE_BLUETOOTH_STATE_CHANGE: prevState = 13, newState=10
2024-10-23 01:53:01.070   464-492   BluetoothManagerService system_process                       D  Broadcasting onBluetoothStateChange(false) to 20 receivers.
2024-10-23 01:53:01.070  2068-2093  BluetoothAdapterState   com.android.bluetooth                I  Entering OffState
2024-10-23 01:53:01.070   585-585   BluetoothPan            com.android.systemui                 D  BluetoothPAN Proxy object disconnected
2024-10-23 01:53:01.071  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.speechmanager.nuance.util.NuanceTTS.speakTTS(NuanceTTS.java:280)
2024-10-23 01:53:01.071  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.speechmanager.nuance.util.NuanceTTS.TTS_Play(NuanceTTS.java:294)
2024-10-23 01:53:01.072  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl.enterTtsPlay(NuanceTTSImpl.java:206)
2024-10-23 01:53:01.072  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl.startTTS(NuanceTTSImpl.java:185)
2024-10-23 01:53:01.072  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl.access$500(NuanceTTSImpl.java:57)
2024-10-23 01:53:01.072  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.ubtechinc.speechmanager.nuance.NuanceTTSImpl$2.handleMessage(NuanceTTSImpl.java:227)
2024-10-23 01:53:01.072  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.os.Handler.dispatchMessage(Handler.java:102)
2024-10-23 01:53:01.072  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.os.Looper.loop(Looper.java:135)
2024-10-23 01:53:01.072  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at android.app.ActivityThread.main(ActivityThread.java:5280)
2024-10-23 01:53:01.072  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at java.lang.reflect.Method.invoke(Native Method)
2024-10-23 01:53:01.072  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at java.lang.reflect.Method.invoke(Method.java:372)
2024-10-23 01:53:01.072  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.android.internal.os.ZygoteInit$MethodAndArgsCaller.run(ZygoteInit.java:963)
2024-10-23 01:53:01.072  1284-1284  System.err              com.ubtechinc.alpha2services         W  	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:758)
2024-10-23 01:53:01.073  2068-2068  BluetoothHidServiceJni  com.android.bluetooth                W  Cleaning up Bluetooth HID Interface...
2024-10-23 01:53:01.073  2068-2068  bt-btif                 com.android.bluetooth                W  cleanup: HH disabling or disabled already, status = 0
2024-10-23 01:53:01.073  2068-2068  BluetoothHidServiceJni  com.android.bluetooth                W  Cleaning up Bluetooth GID callback object
2024-10-23 01:53:01.074  2068-2068  BluetoothH...ServiceJni com.android.bluetooth                W  Cleaning up Bluetooth Health Interface...
2024-10-23 01:53:01.074  2068-2068  BluetoothH...ServiceJni com.android.bluetooth                W  Cleaning up Bluetooth Health object
2024-10-23 01:53:01.076  2068-2068  BluetoothPanServiceJni  com.android.bluetooth                W  Cleaning up Bluetooth PAN Interface...
2024-10-23 01:53:01.076  2068-2068  BluetoothPanServiceJni  com.android.bluetooth                W  Cleaning up Bluetooth PAN callback object
2024-10-23 01:53:01.076   464-492   BluetoothHeadset        system_process                       D  onBluetoothStateChange: up=false
2024-10-23 01:53:01.078   585-605   BluetoothHeadsetClient  com.android.systemui                 D  onBluetoothStateChange: up=false
2024-10-23 01:53:01.078   585-605   BluetoothHeadsetClient  com.android.systemui                 E  
                                                                                                    java.lang.IllegalArgumentException: Service not registered: android.bluetooth.BluetoothHeadsetClient$2@1ba76b1a
                                                                                                    	at android.app.LoadedApk.forgetServiceDispatcher(LoadedApk.java:1029)
                                                                                                    	at android.app.ContextImpl.unbindService(ContextImpl.java:1825)
                                                                                                    	at android.content.ContextWrapper.unbindService(ContextWrapper.java:551)
                                                                                                    	at android.bluetooth.BluetoothHeadsetClient$1.onBluetoothStateChange(BluetoothHeadsetClient.java:382)
                                                                                                    	at android.bluetooth.IBluetoothStateChangeCallback$Stub.onTransact(IBluetoothStateChangeCallback.java:55)
                                                                                                    	at android.os.Binder.execTransact(Binder.java:446)
2024-10-23 01:53:01.079  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  TTS !!!! text=startTTS 1
2024-10-23 01:53:01.079  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  TTS ubt enterTtsPlay 
2024-10-23 01:53:01.079   585-1329  BluetoothHeadset        com.android.systemui                 D  onBluetoothStateChange: up=false
2024-10-23 01:53:01.079  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.079   585-603   BluetoothA...Controller com.android.systemui                 D  onBluetoothStateChange: up=false
2024-10-23 01:53:01.080   585-603   BluetoothA...Controller com.android.systemui                 E  
                                                                                                    java.lang.IllegalArgumentException: Service not registered: android.bluetooth.BluetoothAvrcpController$2@3906b64b
                                                                                                    	at android.app.LoadedApk.forgetServiceDispatcher(LoadedApk.java:1029)
                                                                                                    	at android.app.ContextImpl.unbindService(ContextImpl.java:1825)
                                                                                                    	at android.content.ContextWrapper.unbindService(ContextWrapper.java:551)
                                                                                                    	at android.bluetooth.BluetoothAvrcpController$1.onBluetoothStateChange(BluetoothAvrcpController.java:80)
                                                                                                    	at android.bluetooth.IBluetoothStateChangeCallback$Stub.onTransact(IBluetoothStateChangeCallback.java:55)
                                                                                                    	at android.os.Binder.execTransact(Binder.java:446)
2024-10-23 01:53:01.080   585-605   BluetoothA2dp           com.android.systemui                 D  onBluetoothStateChange: up=false
2024-10-23 01:53:01.081   804-820   BluetoothHeadset        com.android.phone                    D  onBluetoothStateChange: up=false
2024-10-23 01:53:01.081  1679-2161  BluetoothA2dp           com.android.settings                 D  onBluetoothStateChange: up=false
2024-10-23 01:53:01.082  1284-1302  BluetoothA2dp           com.ubtechinc.alpha2services         D  onBluetoothStateChange: up=false
2024-10-23 01:53:01.083  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.084   585-1329  BluetoothMap            com.android.systemui                 D  onBluetoothStateChange: up=false
2024-10-23 01:53:01.085   585-1329  BluetoothMap            com.android.systemui                 E  
                                                                                                    java.lang.IllegalArgumentException: Service not registered: android.bluetooth.BluetoothMap$2@1c68a828
                                                                                                    	at android.app.LoadedApk.forgetServiceDispatcher(LoadedApk.java:1029)
                                                                                                    	at android.app.ContextImpl.unbindService(ContextImpl.java:1825)
                                                                                                    	at android.content.ContextWrapper.unbindService(ContextWrapper.java:551)
                                                                                                    	at android.bluetooth.BluetoothMap$1.onBluetoothStateChange(BluetoothMap.java:64)
                                                                                                    	at android.bluetooth.IBluetoothStateChangeCallback$Stub.onTransact(IBluetoothStateChangeCallback.java:55)
                                                                                                    	at android.os.Binder.execTransact(Binder.java:446)
2024-10-23 01:53:01.085  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.085  1679-1702  BluetoothHeadset        com.android.settings                 D  onBluetoothStateChange: up=false
2024-10-23 01:53:01.085   585-603   BluetoothA2dpSink       com.android.systemui                 D  onBluetoothStateChange: up=false
2024-10-23 01:53:01.086   585-603   BluetoothA2dpSink       com.android.systemui                 E  
                                                                                                    java.lang.IllegalArgumentException: Service not registered: android.bluetooth.BluetoothA2dpSink$2@32bbf941
                                                                                                    	at android.app.LoadedApk.forgetServiceDispatcher(LoadedApk.java:1029)
                                                                                                    	at android.app.ContextImpl.unbindService(ContextImpl.java:1825)
                                                                                                    	at android.content.ContextWrapper.unbindService(ContextWrapper.java:551)
                                                                                                    	at android.bluetooth.BluetoothA2dpSink$1.onBluetoothStateChange(BluetoothA2dpSink.java:139)
                                                                                                    	at android.bluetooth.IBluetoothStateChangeCallback$Stub.onTransact(IBluetoothStateChangeCallback.java:55)
                                                                                                    	at android.os.Binder.execTransact(Binder.java:446)
2024-10-23 01:53:01.086   464-492   BluetoothA2dp           system_process                       D  onBluetoothStateChange: up=false
2024-10-23 01:53:01.087  1679-1697  BluetoothPbap           com.android.settings                 D  onBluetoothStateChange: up=false
2024-10-23 01:53:01.087  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.087  1679-1697  BluetoothMap            com.android.settings                 D  onBluetoothStateChange: up=false
2024-10-23 01:53:01.088  1679-1697  BluetoothMap            com.android.settings                 E  
                                                                                                    java.lang.IllegalArgumentException: Service not registered: android.bluetooth.BluetoothMap$2@cd49d62
                                                                                                    	at android.app.LoadedApk.forgetServiceDispatcher(LoadedApk.java:1029)
                                                                                                    	at android.app.ContextImpl.unbindService(ContextImpl.java:1825)
                                                                                                    	at android.content.ContextWrapper.unbindService(ContextWrapper.java:551)
                                                                                                    	at android.bluetooth.BluetoothMap$1.onBluetoothStateChange(BluetoothMap.java:64)
                                                                                                    	at android.bluetooth.IBluetoothStateChangeCallback$Stub.onTransact(IBluetoothStateChangeCallback.java:55)
                                                                                                    	at android.os.Binder.execTransact(Binder.java:446)
2024-10-23 01:53:01.088  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.088   464-492   BluetoothHeadset        system_process                       D  onBluetoothStateChange: up=false
2024-10-23 01:53:01.088  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.089  1679-2161  BluetoothInputDevice    com.android.settings                 D  onBluetoothStateChange: up=false
2024-10-23 01:53:01.089   585-605   BluetoothInputDevice    com.android.systemui                 D  onBluetoothStateChange: up=false
2024-10-23 01:53:01.090   464-492   BluetoothHeadset        system_process                       D  onBluetoothStateChange: up=false
2024-10-23 01:53:01.092   464-492   BluetoothManagerService system_process                       D  Calling onBluetoothServiceDown callbacks
2024-10-23 01:53:01.092   464-492   BluetoothManagerService system_process                       D  Broadcasting onBluetoothServiceDown() to 6 receivers.
2024-10-23 01:53:01.095   464-492   BluetoothManagerService system_process                       D  unbindAndFinish(): android.bluetooth.IBluetooth$Stub$Proxy@25f964ac mBinding = false
2024-10-23 01:53:01.095   464-492   BluetoothManagerService system_process                       D  Sending unbind request.
2024-10-23 01:53:01.101  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.101  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.102  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.102  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.104  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.104  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.105  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.105  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.106  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.106  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.107  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.107  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.108  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.109  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.110  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.110  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.111  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.111  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.112  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.112  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.114  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.114  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.115  1284-1284  tts                     com.ubtechinc.alpha2services         D  ttsGenerationFinished for text = "Exception,exit upgrade" (success = false).
2024-10-23 01:53:01.115  1284-1284  tts                     com.ubtechinc.alpha2services         D  onStopped
2024-10-23 01:53:01.115  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  !!!!!! nuance StopTTSPlay
2024-10-23 01:53:01.115  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.115  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.117  1284-2162  Nuance                  com.ubtechinc.alpha2services         D  !!!!!! nuance onTTsComplete
2024-10-23 01:53:01.117  1284-2162  SpeechManager           com.ubtechinc.alpha2services         D  onTTsComplete mSpeechState:SPEECH_STATE_GRAMMAR
2024-10-23 01:53:01.118  1284-1890  NMT-Vocalizer           com.ubtechinc.alpha2services         W  outNotify: synthesis has been canceled.
2024-10-23 01:53:01.119  1284-1897  SpeechManager           com.ubtechinc.alpha2services         D  what:1
2024-10-23 01:53:01.120  1284-1897  SpeechManager           com.ubtechinc.alpha2services         D  SpeechManager onServerPlayEnd
2024-10-23 01:53:01.121  1284-1897  AlphaEventManager       com.ubtechinc.alpha2services         D   onEventStop event.index=0
2024-10-23 01:53:01.121  1284-1897  AlphaEventManager       com.ubtechinc.alpha2services         D   mEventQueue.length=0 State = 4
2024-10-23 01:53:01.121  1284-1897  SpeechManager           com.ubtechinc.alpha2services         D  SpeechMainUtil onServerPlayEnd
2024-10-23 01:53:01.121  1284-1897  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!!!!!!!!!!!! onServerPlayEnd
2024-10-23 01:53:01.121  1284-1897  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         V  alpha2TTsFinish :true
2024-10-23 01:53:01.122  1284-1897  Alpha2FirstimeBoot      com.ubtechinc.alpha2services         V  setTTSFinished() : actionFinished :true isTTSFinished :true State : StateEnd
2024-10-23 01:53:01.127  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.127  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.214  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  TTS ubt enterTtsPlay 
2024-10-23 01:53:01.214  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  TTS ubt enterTtsPlay tts is playing
2024-10-23 01:53:01.214  1284-1284  tts                     com.ubtechinc.alpha2services         D  ttsGenerationStarted() for text = "Upgrade was not successful. You can still use the robot. Or you can reboot the robot and restart upgrade.".
2024-10-23 01:53:01.217  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.217  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.218  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.219  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.223   464-492   BluetoothManagerService system_process                       D  Bluetooth State Change Intent: 13 -> 10
2024-10-23 01:53:01.223   464-481   art                     system_process                       W  Long monitor contention event with owner method=boolean com.android.server.am.ActivityManagerService.unbindService(android.app.IServiceConnection) from ActivityManagerService.java:15661 waiters=0 for 127ms
2024-10-23 01:53:01.225  2068-2093  BluetoothAdapterState:  com.android.bluetooth                D  transitionTo: destState=QuittingState
2024-10-23 01:53:01.225  2068-2097  BondStateMachine:       com.android.bluetooth                D  transitionTo: destState=QuittingState
2024-10-23 01:53:01.226  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.LED_ACTION
2024-10-23 01:53:01.227  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!! control_type:1
2024-10-23 01:53:01.227  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!! LED_type=eye_led LED_state=close_led
2024-10-23 01:53:01.227   585-585   BluetoothAdapter        com.android.systemui                 D  867227595: getState() :  mService = null. Returning STATE_OFF
2024-10-23 01:53:01.227   585-585   BluetoothAdapter        com.android.systemui                 D  867227595: getState() :  mService = null. Returning STATE_OFF
2024-10-23 01:53:01.227   585-1308  BluetoothAdapter        com.android.systemui                 D  867227595: getState() :  mService = null. Returning STATE_OFF
2024-10-23 01:53:01.229  2068-2096  GKI_LINUX               com.android.bluetooth                I  gki_task task_id=1 [BTIF] terminating
2024-10-23 01:53:01.230  2068-2068  GKI_LINUX               com.android.bluetooth                I  GKI_exit_task 1 done
2024-10-23 01:53:01.230  2068-2068  GKI_LINUX               com.android.bluetooth                I  GKI_shutdown(): task [BTIF] terminated
2024-10-23 01:53:01.230  1284-1284  Alpha2Connection        com.ubtechinc.alpha2services         D  Bluetooth STATE_OFF 
2024-10-23 01:53:01.230  2068-2068  BluetoothServiceJni     com.android.bluetooth                I  cleanupNative: return from cleanup
2024-10-23 01:53:01.230  1284-2162  SpeechManager           com.ubtechinc.alpha2services         D  进入识别
2024-10-23 01:53:01.231  1679-1679  ContextImpl             com.android.settings                 W  Calling a method in the system process without a qualified user: android.app.ContextImpl.startService:1709 android.content.ContextWrapper.startService:516 android.content.ContextWrapper.startService:516 com.android.settings.bluetooth.DockEventReceiver.beginStartingService:134 com.android.settings.bluetooth.DockEventReceiver.onReceive:115 
2024-10-23 01:53:01.232  1284-2162  Nuance                  com.ubtechinc.alpha2services         D  ASR startSpeechASR
2024-10-23 01:53:01.232  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR handler 5
2024-10-23 01:53:01.235  1284-2163  AudioTrack              com.ubtechinc.alpha2services         I  minFrameCount: 1323, afFrameCount=960, minBufCount=3, sampleRate=22050, afSampleRate=48000, afLatency=60
2024-10-23 01:53:01.237  2068-2068  art                     com.android.bluetooth                I  System.exit called, status: 0
2024-10-23 01:53:01.237  2068-2068  AndroidRuntime          com.android.bluetooth                I  VM exiting with result code 0, cleanup skipped.
2024-10-23 01:53:01.240  1679-1679  DockEventReceiver       com.android.settings                 D  finishStartingService: stopping service
2024-10-23 01:53:01.252   464-480   ActivityManagerService  system_process                       I  Process com.android.bluetooth (pid 2068) has died
2024-10-23 01:53:01.282   464-488   ActivityManagerService  system_process                       I  Start proc 2169:com.android.bluetooth/1002 for broadcast com.android.bluetooth/.opp.BluetoothOppReceiver
2024-10-23 01:53:01.300  1284-2008  XmppPingManager         com.ubtechinc.alpha2services         D  deltaInSeconds=0
2024-10-23 01:53:01.300  1284-2008  XmppPingManager         com.ubtechinc.alpha2services         D  maybeSchedulePingServerTask
2024-10-23 01:53:01.356  2169-2169  DisplayManager          com.android.bluetooth                D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:53:01.357  2169-2169  DisplayManager          com.android.bluetooth                D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:53:01.360  2169-2169  DisplayManager          com.android.bluetooth                D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:53:01.362  2169-2169  DisplayManager          com.android.bluetooth                D  getDisplayInfo: displayId=0, info=DisplayInfo{"Built-in Screen", uniqueId "local:0", app 1536 x 1952, real 1536 x 2048, largest app 2048 x 1902, smallest app 1536 x 1390, 61.495003 fps, supportedRefreshRates [61.495003], rotation 0, density 320 (159.89508 x 160.05908) dpi, layerStack 0, appVsyncOff 0, presDeadline 17261484, type BUILT_IN, state ON, FLAG_SECURE, FLAG_SUPPORTS_PROTECTED_BUFFERS}
2024-10-23 01:53:01.364  2169-2169  ResourcesManager        com.android.bluetooth                W  Asset path '/system/framework/javax.obex.jar' does not exist or contains no resources.
2024-10-23 01:53:01.455  2169-2169  AdapterServiceConfig    com.android.bluetooth                D  Adding HeadsetService
2024-10-23 01:53:01.455  2169-2169  AdapterServiceConfig    com.android.bluetooth                D  Adding A2dpService
2024-10-23 01:53:01.455  2169-2169  AdapterServiceConfig    com.android.bluetooth                D  Adding HidService
2024-10-23 01:53:01.456  2169-2169  AdapterServiceConfig    com.android.bluetooth                D  Adding HealthService
2024-10-23 01:53:01.456  2169-2169  AdapterServiceConfig    com.android.bluetooth                D  Adding PanService
2024-10-23 01:53:01.456  2169-2169  AdapterServiceConfig    com.android.bluetooth                D  Adding GattService
2024-10-23 01:53:01.749   167-921   AudioFlinger            pid-167                              I  BUFFER TIMEOUT: remove(4097) from active list on thread 0xb86d6f78
2024-10-23 01:53:01.763  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:01.763  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:01.764  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.764  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.768  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.768  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.771  1284-1284  tts                     com.ubtechinc.alpha2services         D  ttsStreamingStarted for text = "Upgrade was not successful. You can still use the robot. Or you can reboot the robot and restart upgrade.".
2024-10-23 01:53:01.771  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.771  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.774  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.774  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.777  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.777  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.780  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.780  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.782  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.782  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.785  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.785  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.787  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.787  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.789  1284-1284  tts                     com.ubtechinc.alpha2services         D  ttsGenerationFinished for text = "Upgrade was not successful. You can still use the robot. Or you can reboot the robot and restart upgrade." (success = true).
2024-10-23 01:53:01.790  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.790  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.800  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.800  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.817  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.817  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.834  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.834  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.902  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:01.902  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:01.902  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.902  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.959  1284-2163  AudioTrack              com.ubtechinc.alpha2services         W  releaseBuffer() track 0xb78bbb08 disabled due to previous underrun, restarting
2024-10-23 01:53:01.977  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.978  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:01.984  1284-1284  tts                     com.ubtechinc.alpha2services         D  onStarted
2024-10-23 01:53:01.984  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  !!!!!! nuance StartTTSPlay
2024-10-23 01:53:01.984  1284-1284  SpeechManager           com.ubtechinc.alpha2services         D  onTTsStart
2024-10-23 01:53:01.991  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.LED_ACTION
2024-10-23 01:53:01.991  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!! control_type:1
2024-10-23 01:53:01.991  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!! LED_type=eye_led LED_state=open_led
2024-10-23 01:53:01.995  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:01.996  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:02.042  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:02.042  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:02.043  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:02.043  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:02.060  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:02.060  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:02.163  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:02.163  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:02.163  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:02.163  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:02.164  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:02.164  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:02.173  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:02.173  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:02.221  1284-2163  NMT                     com.ubtechinc.alpha2services         W  Player unstalled
2024-10-23 01:53:02.248  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:02.248  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:02.294  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:02.294  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:02.356  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:02.356  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:02.371  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:02.371  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:02.385  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:02.385  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:02.418  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:02.418  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:02.440  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:02.440  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:02.556  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:02.556  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:02.556  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:02.556  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:02.565  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:02.565  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:02.579  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:02.579  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:02.634  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:02.634  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:02.697  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:02.697  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:02.730  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:02.731  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:02.745  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:02.745  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:02.759  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:02.759  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:02.836  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:02.837  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:02.837  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:02.837  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:02.931  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:02.931  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:02.938  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:02.938  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:02.947  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:02.947  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:02.961  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:02.961  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:03.020  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:03.020  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:03.078  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:03.078  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:03.118  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:03.118  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:03.133  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:03.133  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:03.148  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:03.148  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:03.218  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:03.218  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:03.218  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:03.219  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:03.244  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! scheduleAtFixedRate
2024-10-23 01:53:03.244  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! getHasLogin=2
2024-10-23 01:53:03.244  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! onLineState=available
2024-10-23 01:53:03.244  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! robotHolder=
2024-10-23 01:53:03.312  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:03.313  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:03.353  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:03.353  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:03.353  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:03.353  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:03.355  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:03.355  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:03.405  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:03.406  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:03.493  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:03.493  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:03.528  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:03.528  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:03.547  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:03.548  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:03.563  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:03.563  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:03.623  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:03.623  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:03.624  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:03.624  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:03.694  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:03.695  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:03.714  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:03.714  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:03.756  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:03.757  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:03.757  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:03.757  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:03.789  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:03.789  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:03.897  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:03.897  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:03.915  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:03.915  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:03.940  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:03.940  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:03.956  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:03.957  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:03.982  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:03.982  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:04.038  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:04.038  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:04.103  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:04.103  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:04.123  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:04.123  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:04.150  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:04.150  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:04.151  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:04.151  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:04.175  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:04.175  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:04.266  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:04.266  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:04.288  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:04.289  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:04.401  1284-2163  NMT                     com.ubtechinc.alpha2services         W  Player stalled
2024-10-23 01:53:04.402  1284-2163  NMT                     com.ubtechinc.alpha2services         W  Player unstalled
2024-10-23 01:53:04.404  1284-1743  CHEST                   com.ubtechinc.alpha2services         I  f8 8f 09 00 00 80 01 34 be ed 
2024-10-23 01:53:04.407  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:04.407  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:04.407  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:04.407  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:04.410  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.chest
2024-10-23 01:53:04.410  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!! powerValue=52
2024-10-23 01:53:04.422  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         I  ches cmd = -128
2024-10-23 01:53:04.438  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:04.438  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:04.468  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:04.468  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:04.492  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:04.492  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:04.546  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:04.547  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:04.547  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:04.547  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:04.548  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:04.548  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:04.559  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:04.559  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:04.686  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:04.686  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:04.686  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:04.687  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:04.688  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:04.688  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:04.689  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:04.689  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:04.744  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:04.745  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:04.827  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:04.827  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:04.846  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:04.847  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:04.863  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:04.864  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:04.880  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:04.881  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:04.947  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:04.947  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:04.947  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:04.947  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:05.045  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:05.045  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:05.049  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:05.049  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:05.065  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:05.065  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:05.082  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:05.082  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:05.132  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:05.132  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:05.183  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:05.183  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:05.232  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:05.233  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:05.260  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:05.260  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:05.278  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:05.278  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:05.317  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:05.317  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:05.321  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:05.321  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:05.456  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:05.457  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:05.457  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:05.457  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:05.460  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:05.461  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:05.463  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:05.463  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:05.522  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:05.523  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:05.597  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:05.598  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:05.634  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:05.634  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:05.655  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:05.655  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:05.669  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:05.669  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:05.733  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:05.733  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:05.733  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:05.733  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:05.808  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:05.809  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:05.821  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:05.821  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:05.833  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:05.833  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:05.835  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:05.835  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:05.896  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:05.896  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:05.949  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:05.949  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:06.007  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.008  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.024  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.025  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.040  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.040  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.088  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:06.088  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:06.092  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.092  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.229  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:06.229  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:06.231  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.231  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.237  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.237  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.250  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.251  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.286  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.286  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.370  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:06.371  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:06.407  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.407  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.436  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.436  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.453  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.453  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.509  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:06.509  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:06.509  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.509  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.582  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.582  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.598  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.598  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.649  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:06.649  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:06.649  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.649  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.676  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.676  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.748  1192-1214  art                     pid-1192                             I  Debugger is no longer active
2024-10-23 01:53:06.773  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:06.773  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:06.780  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.780  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.797  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.798  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.814  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.814  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.861  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.861  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.912  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:06.912  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:06.961  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.961  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.976  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.976  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:06.990  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:06.990  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:07.043  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:07.043  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:07.048  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:07.048  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:07.173  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:07.173  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:07.173  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:07.174  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:07.178  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:07.178  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:07.190  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:07.190  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:07.241  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:07.241  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:07.312  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:07.313  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:07.348  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:07.348  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:07.362  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:07.362  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:07.375  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:07.375  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:07.452  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:07.452  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:07.453  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:07.453  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:07.531  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:07.531  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:07.547  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:07.547  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:07.592  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:07.593  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:07.593  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:07.593  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:07.628  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:07.628  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:07.723  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:07.723  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:07.735  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:07.736  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:07.757  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:07.757  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:07.774  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:07.774  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:07.822  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:07.822  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:07.823  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:07.823  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:07.915  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:07.915  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:07.963  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:07.963  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:07.964  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:07.964  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:07.965  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:07.965  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:08.006  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:08.006  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:08.104  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:08.104  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:08.106  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:08.107  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:08.121  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:08.122  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:08.136  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:08.136  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:08.203  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:08.203  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:08.205  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:08.205  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:08.345  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:08.345  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:08.347  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:08.347  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:08.369  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:08.369  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:08.384  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:08.384  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:08.402  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:08.402  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:08.485  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:08.485  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:08.490  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:08.490  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:08.504  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:08.505  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:08.513  1284-2163  NMT                     com.ubtechinc.alpha2services         W  Player stalled
2024-10-23 01:53:08.515  1284-1284  tts                     com.ubtechinc.alpha2services         D  ttsStreamingFinished for text = "Upgrade was not successful. You can still use the robot. Or you can reboot the robot and restart upgrade.".
2024-10-23 01:53:08.515  1284-1284  tts                     com.ubtechinc.alpha2services         D  onStopped
2024-10-23 01:53:08.515  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  !!!!!! nuance StopTTSPlay
2024-10-23 01:53:08.516  1284-2194  Nuance                  com.ubtechinc.alpha2services         D  !!!!!! nuance onTTsComplete
2024-10-23 01:53:08.516  1284-2194  SpeechManager           com.ubtechinc.alpha2services         D  onTTsComplete mSpeechState:SPEECH_STATE_GRAMMAR
2024-10-23 01:53:08.517  1284-1897  SpeechManager           com.ubtechinc.alpha2services         D  what:1
2024-10-23 01:53:08.518  1284-1897  SpeechManager           com.ubtechinc.alpha2services         D  SpeechManager onServerPlayEnd
2024-10-23 01:53:08.519  1284-1897  AlphaEventManager       com.ubtechinc.alpha2services         D   onEventStop event.index=0
2024-10-23 01:53:08.519  1284-1897  AlphaEventManager       com.ubtechinc.alpha2services         D   mEventQueue.length=0 State = 4
2024-10-23 01:53:08.519  1284-1897  SpeechManager           com.ubtechinc.alpha2services         D  SpeechMainUtil onServerPlayEnd
2024-10-23 01:53:08.519  1284-1897  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!!!!!!!!!!!! onServerPlayEnd
2024-10-23 01:53:08.519  1284-1897  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         V  alpha2TTsFinish :true
2024-10-23 01:53:08.520  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:08.520  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:08.520  1284-1897  Alpha2FirstimeBoot      com.ubtechinc.alpha2services         V  setTTSFinished() : actionFinished :true isTTSFinished :true State : StateEnd
2024-10-23 01:53:08.523  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.LED_ACTION
2024-10-23 01:53:08.523  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!! control_type:1
2024-10-23 01:53:08.523  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!! LED_type=eye_led LED_state=close_led
2024-10-23 01:53:08.525  1284-2194  SpeechManager           com.ubtechinc.alpha2services         D  进入识别
2024-10-23 01:53:08.528  1284-2194  Nuance                  com.ubtechinc.alpha2services         D  ASR startSpeechASR
2024-10-23 01:53:08.528  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR handler 5
2024-10-23 01:53:09.068  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:09.069  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:09.069  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.070  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.075  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:09.075  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:09.075  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.075  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.077  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.077  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.079  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.079  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.080  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.080  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.082  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.082  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.084  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.084  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.086  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.086  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.087  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.087  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.109  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.109  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.124  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.124  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.143  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.143  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.164  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.164  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.204  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:09.205  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:09.205  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:09.205  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:09.259  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.259  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.272  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.272  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.284  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.284  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.345  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:09.345  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:09.345  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:09.345  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:09.356  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.356  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.483  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:09.483  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:09.483  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:09.483  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:09.483  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.483  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.485  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.485  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.486  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.486  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.543  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.544  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.623  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:09.623  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:09.623  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:09.623  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:09.648  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.648  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.662  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.662  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.678  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.678  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.743  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:09.743  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:09.743  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:09.743  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:09.743  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.743  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.840  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.840  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.848  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:09.848  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:09.848  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:09.849  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:09.855  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.855  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.866  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.867  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.930  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:09.930  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:09.983  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:09.983  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:09.983  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:09.983  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:10.034  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:10.034  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:10.048  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:10.048  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:10.060  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:10.061  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:10.123  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:10.123  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:10.124  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:10.124  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:10.124  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:10.124  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:10.222  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:10.223  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:10.226  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:10.227  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:10.227  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:10.227  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:10.237  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:10.237  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:10.249  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:10.249  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:10.314  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:10.314  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:10.367  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:10.367  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:10.367  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:10.367  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=_startLocalRecognition failed, because 
                                                                                                    mIsLocalRecognizing=true
                                                                                                    mIsCloudRecognizing=false 
                                                                                                    Will retry in 100ms
2024-10-23 01:53:10.411  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:10.412  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:10.422  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR LocalListener:_onResult
2024-10-23 01:53:10.422  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=LocalListener:_onResult
2024-10-23 01:53:10.422  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR wanglee the file is:2024-10-23-01-53-00-923
2024-10-23 01:53:10.422  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=local highest conf:-1
2024-10-23 01:53:10.423  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=Local result is invalid, but cloud recognition didn't triggered, maybe caused by leading silence timeout.
2024-10-23 01:53:10.423  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR stopAudioRecord
2024-10-23 01:53:10.423  1284-1284  CustomAudioSource       com.ubtechinc.alpha2services         D  setisWorking=false
2024-10-23 01:53:10.423  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR handler 5
2024-10-23 01:53:10.470  1284-1743  CHEST                   com.ubtechinc.alpha2services         I  f8 8f 09 00 00 80 01 34 be ed 
2024-10-23 01:53:10.963  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:10.964  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  mAudioSource == null
2024-10-23 01:53:10.964  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=Listening...
2024-10-23 01:53:10.969  1284-1284  CustomAudioSource       com.ubtechinc.alpha2services         D  setisWorking=true
2024-10-23 01:53:11.109  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.109  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.111  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.111  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.113  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.chest
2024-10-23 01:53:11.113  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!! powerValue=52
2024-10-23 01:53:11.120  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         I  ches cmd = -128
2024-10-23 01:53:11.121  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.121  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.122  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.122  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.123  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.123  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.124  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.124  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.125  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.125  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.126  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.126  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.127  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.127  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.129  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.129  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.130  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.130  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.131  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.131  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.132  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.132  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.133  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.133  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.134  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.134  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.179  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.179  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.193  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.193  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.206  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.206  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.272  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.272  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.392  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.392  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.419  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.419  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.437  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.437  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.464  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.464  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.606  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.606  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.638  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.638  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.661  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.661  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.682  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.682  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.763  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.763  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.785  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.785  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.806  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.806  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.860  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.860  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.947  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.947  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.963  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.963  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:11.979  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:11.979  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:12.039  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:12.039  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:12.153  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:12.153  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:12.173  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:12.173  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:12.189  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:12.190  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:12.235  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:12.235  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:12.336  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:12.336  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:12.352  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:12.352  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:12.366  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:12.366  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:12.423  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:12.423  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:12.454   464-528   WifiStateMachine        system_process                       E  WifiStateMachine CMD_START_SCAN source -2 txSuccessRate=2.25 rxSuccessRate=1.28 targetRoamBSSID=74:d0:2b:42:fe:a0 RSSI=-60
2024-10-23 01:53:12.454   464-528   WifiStateMachine        system_process                       E  startDelayedScan send -> 10 milli 20000
2024-10-23 01:53:12.455   464-528   WifiStateMachine        system_process                       E  WifiStateMachine CMD_START_SCAN with age=40003 interval=45000 maxinterval=300000
2024-10-23 01:53:12.455   464-528   WifiStateMachine        system_process                       E  WifiStateMachine CMD_START_SCAN full=false
2024-10-23 01:53:12.455   464-528   WifiStateMachine        system_process                       E  WifiStateMachine starting scan for "Office2g"WPA_PSK with 2437
2024-10-23 01:53:12.455   464-528   WifiStateMachine        system_process                       E  [1,729,659,192,455 ms] noteScanstart no scan source uid -2
2024-10-23 01:53:12.521  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:12.521  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:12.535  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:12.535  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:12.544  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:12.544  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:12.611  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:12.612  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:12.671   464-528   WifiStateMachine        system_process                       E  [1,729,659,192,671 ms] noteScanEnd no scan source onTime=0
2024-10-23 01:53:12.674   464-528   WifiStateMachine        system_process                       E  wifi setScanResults statecom.android.server.wifi.WifiStateMachine$ConnectedState@3dbfcd72 sup_state=COMPLETED debouncing=false mConnectionRequests=1 selection=<none>
2024-10-23 01:53:12.716  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:12.716  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:12.733  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:12.734  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:12.753  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:12.753  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:12.812  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:12.812  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:12.924  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:12.924  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:12.944  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:12.944  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:12.961  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:12.961  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:13.007  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:13.007  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:13.100  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:13.100  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:13.115  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:13.115  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:13.129  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:13.130  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:13.194  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:13.194  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:13.300  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:13.300  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:13.316  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:13.317  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:13.330  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:13.331  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:13.394  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:13.394  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:13.509  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:13.510  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:13.531  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:13.531  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:13.548  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:13.548  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:13.582  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:13.582  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:13.681  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:13.681  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:13.696  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:13.696  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:13.709  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:13.709  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:13.775  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:13.775  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:13.897  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:13.897  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:13.916  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:13.916  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:13.931  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:13.932  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:13.960  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:13.960  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:14.064  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:14.065  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:14.081  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:14.081  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:14.093  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:14.093  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:14.151  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:14.151  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:14.257  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:14.257  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:14.270  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:14.270  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:14.282  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:14.282  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:14.343  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:14.343  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:14.448  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:14.448  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:14.463  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:14.463  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:14.475  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:14.475  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:14.536  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:14.537  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:14.641  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:14.641  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:14.655  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:14.655  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:14.667  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:14.667  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:14.728  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:14.728  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:14.835  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:14.835  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:14.850  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:14.850  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:14.865  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:14.865  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:14.922  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:14.923  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:15.020  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:15.020  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:15.035  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:15.035  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:15.049  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:15.050  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:15.115  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:15.115  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:15.217  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:15.217  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:15.237  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:15.237  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:15.250  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:15.250  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:15.303  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:15.304  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:15.423  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:15.423  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:15.441  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:15.441  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:15.459  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:15.459  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:15.503  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:15.503  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:15.621  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:15.621  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:15.645  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:15.645  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:15.662  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:15.662  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:15.699  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:15.699  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:15.828  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:15.828  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:15.855  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:15.855  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:15.876  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:15.876  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:15.889  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:15.890  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.008  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.008  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.034  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.035  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.053  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.054  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.081  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.082  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.178  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.178  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.195  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.195  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.210  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.210  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.267  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.267  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.287  2169-2179  art                     com.android.bluetooth                I  Debugger is no longer active
2024-10-23 01:53:16.390  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.390  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.411  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.411  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.427  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.427  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.460  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.460  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.559  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.559  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.576  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.576  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.593  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.593  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.620  1284-1743  CHEST                   com.ubtechinc.alpha2services         I  f8 8f 09 00 00 80 01 34 be ed 
2024-10-23 01:53:16.622  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.chest
2024-10-23 01:53:16.622  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!! powerValue=52
2024-10-23 01:53:16.630  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         I  ches cmd = -128
2024-10-23 01:53:16.655  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.655  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.759  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.759  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.781  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.781  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.802  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.802  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.851  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.851  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.950  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.950  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.967  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.967  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:16.984  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:16.984  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:17.038  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:17.038  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:17.135  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:17.135  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:17.157  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:17.157  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:17.177  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:17.178  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:17.237  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:17.238  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:17.331  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:17.331  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:17.346  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:17.347  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:17.360  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:17.360  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:17.418  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:17.418  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:17.543  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:17.543  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:17.571  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:17.571  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:17.598  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:17.599  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:17.614  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:17.614  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:17.708  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:17.709  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:17.723  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:17.723  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:17.737  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:17.737  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:17.808  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:17.808  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:17.953  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:17.953  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:17.979  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:17.979  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:17.999  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:17.999  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:18.017  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:18.018  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:18.092  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:18.093  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:18.115  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:18.115  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:18.131  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:18.131  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:18.186  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:18.186  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:18.283  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! scheduleAtFixedRate
2024-10-23 01:53:18.284  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! getHasLogin=2
2024-10-23 01:53:18.284  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! onLineState=available
2024-10-23 01:53:18.284  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! robotHolder=
2024-10-23 01:53:18.306  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:18.306  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:18.333  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:18.333  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:18.352  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:18.352  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:18.383  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:18.383  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:18.473  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:18.473  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:18.487  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:18.487  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:18.499  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:18.499  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:18.568  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:18.568  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:18.704  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:18.705  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:18.734  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:18.734  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:18.761  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:18.761  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:18.779  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:18.779  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:18.870  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:18.870  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:18.893  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:18.893  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:18.915  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:18.915  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:18.956  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:18.956  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:19.056  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:19.056  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:19.073  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:19.073  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:19.086  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:19.086  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:19.153  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:19.153  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:19.265  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:19.265  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:19.292  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:19.292  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:19.318  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:19.318  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:19.348  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:19.348  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:19.443  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:19.443  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:19.464  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:19.464  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:19.486  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:19.486  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:19.536  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:19.536  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:19.650  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:19.650  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:19.669  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:19.669  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:19.689  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:19.689  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:19.726  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:19.726  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:19.831  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:19.831  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:19.849  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:19.849  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:19.866  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:19.866  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:19.919  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:19.919  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:20.017  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:20.017  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:20.040  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:20.040  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:20.062  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:20.063  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:20.108  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:20.108  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:20.204  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:20.204  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:20.220  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:20.220  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:20.234  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:20.234  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:20.300  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:20.300  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:20.429  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:20.430  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:20.449  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:20.449  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:20.466  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR LocalListener:_onResult
2024-10-23 01:53:20.466  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=LocalListener:_onResult
2024-10-23 01:53:20.466  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR wanglee the file is:2024-10-23-01-53-10-967
2024-10-23 01:53:20.466  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=local highest conf:-1
2024-10-23 01:53:20.466  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=Local result is invalid, but cloud recognition didn't triggered, maybe caused by leading silence timeout.
2024-10-23 01:53:20.466  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR stopAudioRecord
2024-10-23 01:53:20.466  1284-1284  CustomAudioSource       com.ubtechinc.alpha2services         D  setisWorking=false
2024-10-23 01:53:20.466  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:20.466  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR handler 5
2024-10-23 01:53:21.006  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:21.007  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  mAudioSource == null
2024-10-23 01:53:21.007  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=Listening...
2024-10-23 01:53:21.008  1284-1284  CustomAudioSource       com.ubtechinc.alpha2services         D  setisWorking=true
2024-10-23 01:53:21.148  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.149  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.151  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.151  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.154  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.154  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.157  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.157  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.159  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.159  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.161  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.161  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.163  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.163  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.165  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.165  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.167  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.167  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.169  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.169  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.171  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.171  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.173  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.173  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.175  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.175  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.187  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.187  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.209  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.209  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.226  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.226  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.263  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.263  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.360  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.360  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.374  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.374  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.386  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.386  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.452  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.452  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.572  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.572  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.594  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.594  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.614  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.614  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.651  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.651  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.749  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.749  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.768  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.768  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.787  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.787  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.831  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.831  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.951  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.952  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:21.977  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:21.978  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.000  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.000  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.034  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.034  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.142  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.142  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.164  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.164  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.185  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.185  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.224  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.224  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.330  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.330  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.351  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.351  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.373  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.373  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.418  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.418  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.519  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.519  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.533  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.533  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.546  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.546  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.600  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.600  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.724  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.724  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.747  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.747  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.765  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.766  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.770  1284-1743  CHEST                   com.ubtechinc.alpha2services         I  f8 8f 09 00 00 80 01 34 be ed 
2024-10-23 01:53:22.772  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.chest
2024-10-23 01:53:22.772  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!! powerValue=52
2024-10-23 01:53:22.782  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         I  ches cmd = -128
2024-10-23 01:53:22.797  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.797  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.901  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.901  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.918  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.918  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.930  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.930  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:22.985  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:22.985  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:23.106  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:23.107  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:23.126  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:23.126  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:23.141  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:23.141  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:23.175  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:23.175  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:23.296  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:23.296  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:23.313  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:23.313  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:23.326  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:23.326  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:23.367  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:23.367  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:23.495  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:23.495  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:23.515  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:23.515  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:23.529  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:23.529  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:23.562  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:23.563  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:23.668  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:23.668  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:23.686  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:23.686  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:23.698  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:23.698  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:23.754  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:23.754  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:23.762  1192-1214  art                     pid-1192                             I  Debugger is no longer active
2024-10-23 01:53:23.856  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:23.856  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:23.871  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:23.872  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:23.883  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:23.884  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:23.943  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:23.943  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:24.050  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:24.050  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:24.066  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:24.066  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:24.080  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:24.080  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:24.144  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:24.144  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:24.233  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:24.233  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:24.247  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:24.247  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:24.260  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:24.260  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:24.328  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:24.329  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:24.441  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:24.441  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:24.460  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:24.460  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:24.477  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:24.478  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:24.531  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:24.531  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:24.628  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:24.629  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:24.651  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:24.651  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:24.671  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:24.671  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:24.721  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:24.721  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:24.815  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:24.816  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:24.831  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:24.831  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:24.845  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:24.845  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:24.903  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:24.903  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:25.050  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:25.050  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:25.071  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:25.071  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:25.088  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:25.089  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:25.102  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:25.102  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:25.194  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:25.194  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:25.209  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:25.209  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:25.222  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:25.222  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:25.288  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:25.288  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:25.441  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:25.441  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:25.466  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:25.466  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:25.483  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:25.483  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:25.500  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:25.500  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:25.594  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:25.594  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:25.615  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:25.615  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:25.631  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:25.631  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:25.682  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:25.682  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:25.804  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:25.804  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:25.829  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:25.829  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:25.845  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:25.845  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:25.868  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:25.868  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:25.992  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:25.992  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.012  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.013  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.029  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.029  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.059  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.059  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.156  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.156  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.171  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.171  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.181  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.181  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.250  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.250  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.352  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.352  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.374  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.375  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.394  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.394  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.443  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.443  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.560  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.560  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.582  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.582  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.601  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.601  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.642  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.643  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.739  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.739  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.760  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.760  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.780  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.780  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.903  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.903  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.940  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.940  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.966  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.966  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:26.991  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:26.992  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:27.018  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:27.018  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:27.120  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:27.120  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:27.134  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:27.134  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:27.146  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:27.146  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:27.212  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:27.213  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:27.314  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:27.314  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:27.328  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:27.328  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:27.340  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:27.340  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:27.400  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:27.400  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:27.533  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:27.533  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:27.556  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:27.558  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:27.573  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:27.573  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:27.601  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:27.601  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:27.706  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:27.707  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:27.727  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:27.727  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:27.743  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:27.743  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:27.785  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:27.785  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:27.908  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:27.909  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:27.934  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:27.936  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:27.954  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:27.955  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:27.984  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:27.984  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:28.077  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:28.077  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:28.093  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:28.093  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:28.108  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:28.108  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:28.208  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:28.209  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:28.282  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:28.282  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:28.298  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:28.298  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:28.312  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:28.312  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:28.362  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:28.362  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:28.461  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:28.461  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:28.474  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:28.474  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:28.485  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:28.485  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:28.548  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:28.549  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:28.668  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:28.668  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:28.685  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:28.685  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:28.702  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:28.702  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:28.743  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:28.743  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:28.847  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:28.848  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:28.863  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:28.865  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:28.875  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:28.875  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:28.930  1284-1743  CHEST                   com.ubtechinc.alpha2services         I  f8 8f 09 00 00 80 01 33 bd ed 
2024-10-23 01:53:28.931  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.chest
2024-10-23 01:53:28.932  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!! powerValue=51
2024-10-23 01:53:28.939  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         I  ches cmd = -128
2024-10-23 01:53:28.949  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:28.949  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:29.037  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:29.038  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:29.053  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:29.053  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:29.067  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:29.067  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:29.138  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:29.139  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:29.241  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:29.241  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:29.259  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:29.259  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:29.276  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:29.276  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:29.326  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:29.326  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:29.431  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:29.431  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:29.449  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:29.449  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:29.465  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:29.466  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:29.518  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:29.518  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:29.615  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:29.615  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:29.633  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:29.633  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:29.651  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:29.651  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:29.710  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:29.710  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:29.813  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:29.813  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:29.828  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:29.828  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:29.842  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:29.842  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:29.900  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:29.900  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:30.030  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:30.030  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:30.048  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:30.048  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:30.062  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:30.062  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:30.091  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:30.091  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:30.212  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:30.212  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:30.233  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:30.233  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:30.250  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:30.250  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:30.284  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:30.284  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:30.409  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:30.409  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:30.426  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:30.426  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:30.441  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:30.441  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:30.471  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:30.471  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:30.479  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR LocalListener:_onResult
2024-10-23 01:53:30.479  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=LocalListener:_onResult
2024-10-23 01:53:30.479  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR wanglee the file is:2024-10-23-01-53-21-007
2024-10-23 01:53:30.479  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=local highest conf:-1
2024-10-23 01:53:30.479  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=Local result is invalid, but cloud recognition didn't triggered, maybe caused by leading silence timeout.
2024-10-23 01:53:30.479  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR stopAudioRecord
2024-10-23 01:53:30.479  1284-1284  CustomAudioSource       com.ubtechinc.alpha2services         D  setisWorking=false
2024-10-23 01:53:30.479  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR handler 5
2024-10-23 01:53:31.013  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR Start local recognition 
2024-10-23 01:53:31.014  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  mAudioSource == null
2024-10-23 01:53:31.015  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=Listening...
2024-10-23 01:53:31.017  1284-1284  CustomAudioSource       com.ubtechinc.alpha2services         D  setisWorking=true
2024-10-23 01:53:31.157  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.157  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.159  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.159  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.160  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.160  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.161  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.161  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.162  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.162  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.163  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.163  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.164  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.164  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.165  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.165  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.167  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.167  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.168  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.168  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.169  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.169  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.170  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.170  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.171  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.171  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.181  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.181  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.204  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.204  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.252  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.252  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.318  1284-2008  XmppPingManager         com.ubtechinc.alpha2services         D  deltaInSeconds=14
2024-10-23 01:53:31.318  1284-2008  XmppPingManager         com.ubtechinc.alpha2services         D  maybeSchedulePingServerTask
2024-10-23 01:53:31.360  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.361  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.386  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.387  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.413  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.413  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.438  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.439  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.545  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.545  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.568  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.568  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.589  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.589  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.632  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.632  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.741  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.741  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.763  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.763  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.785  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.785  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.825  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.825  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.933  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.933  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.960  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.960  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:31.986  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:31.986  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:32.018  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:32.018  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:32.121  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:32.121  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:32.143  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:32.143  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:32.164  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:32.165  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:32.206  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:32.206  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:32.343  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:32.344  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:32.364  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:32.365  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:32.380  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:32.380  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:32.397  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:32.397  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:32.460   464-528   WifiStateMachine        system_process                       E  WifiStateMachine CMD_START_SCAN source -2 txSuccessRate=1.98 rxSuccessRate=1.04 targetRoamBSSID=74:d0:2b:42:fe:a0 RSSI=-60
2024-10-23 01:53:32.461   464-528   WifiStateMachine        system_process                       E  startDelayedScan send -> 11 milli 20000
2024-10-23 01:53:32.461   464-528   WifiStateMachine        system_process                       E  WifiStateMachine CMD_START_SCAN with age=60010 interval=45000 maxinterval=300000
2024-10-23 01:53:32.461   464-528   WifiStateMachine        system_process                       E  WifiStateMachine CMD_START_SCAN try full band scan age=60010 interval=45000 maxinterval=300000
2024-10-23 01:53:32.461   464-528   WifiStateMachine        system_process                       E  WifiStateMachine CMD_START_SCAN full=true
2024-10-23 01:53:32.462   464-528   WifiStateMachine        system_process                       E  WifiStateMachine CMD_START_SCAN bump interval =67500
2024-10-23 01:53:32.464   464-528   WifiStateMachine        system_process                       E  [1,729,659,212,464 ms] noteScanstart no scan source uid -2
2024-10-23 01:53:32.539  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:32.539  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:32.562  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:32.562  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:32.580  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:32.580  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:32.594  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:32.594  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:32.698  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:32.698  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:32.715  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:32.716  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:32.728  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:32.728  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:32.776  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:32.776  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:32.909  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:32.909  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:32.931  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:32.931  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:32.948  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:32.948  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:32.978  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:32.978  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:33.107  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:33.107  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:33.128  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:33.129  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:33.146  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:33.146  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:33.169  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:33.169  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:33.268  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:33.268  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:33.286  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:33.286  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:33.303  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:33.303  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:33.323  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! scheduleAtFixedRate
2024-10-23 01:53:33.323  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! getHasLogin=2
2024-10-23 01:53:33.323  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! onLineState=available
2024-10-23 01:53:33.323  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! robotHolder=
2024-10-23 01:53:33.351  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:33.351  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:33.468  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:33.468  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:33.490  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:33.491  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:33.508  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:33.509  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:33.543  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:33.543  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:33.648  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:33.649  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:33.663  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:33.664  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:33.675  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:33.675  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:33.735  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:33.735  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:33.839  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:33.840  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:33.852  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:33.852  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:33.864  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:33.864  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:33.933  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:33.933  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:34.035  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:34.035  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:34.049  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:34.050  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:34.063  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:34.063  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:34.176  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:34.177  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:34.227  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:34.227  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:34.248  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:34.248  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:34.269  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:34.269  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:34.320  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:34.320  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:34.426  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:34.426  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:34.448  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:34.448  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:34.469  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:34.469  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:34.512  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:34.512  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:34.611  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:34.611  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:34.632  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:34.632  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:34.652  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:34.653  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:34.660   464-528   WifiStateMachine        system_process                       E  [1,729,659,214,659 ms] noteScanEnd no scan source onTime=0
2024-10-23 01:53:34.662   464-528   WifiStateMachine        system_process                       E  wifi setScanResults statecom.android.server.wifi.WifiStateMachine$ConnectedState@3dbfcd72 sup_state=COMPLETED debouncing=false mConnectionRequests=1 selection=<none>
2024-10-23 01:53:34.716  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:34.716  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:34.801  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:34.801  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:34.815  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:34.815  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:34.828  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:34.828  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:34.898  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:34.898  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.007  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.007  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.033  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.033  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.053  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.054  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.070  1284-1743  CHEST                   com.ubtechinc.alpha2services         I  f8 8f 09 00 00 80 01 33 bd ed 
2024-10-23 01:53:35.072  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.chest
2024-10-23 01:53:35.072  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!! powerValue=51
2024-10-23 01:53:35.080  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         I  ches cmd = -128
2024-10-23 01:53:35.082  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.082  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.208  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.208  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.227  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.227  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.242  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.242  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.272  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.272  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.379  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.379  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.394  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.394  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.408  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.408  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.467  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.467  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.575  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.575  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.598  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.598  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.614  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.614  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.660  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.660  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.783  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.784  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.804  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.804  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.818  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.818  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.851  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.851  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.972  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.972  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:35.992  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:35.992  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:36.009  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:36.009  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:36.045  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:36.046  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:36.166  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:36.166  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:36.187  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:36.187  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:36.203  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:36.203  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:36.233  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:36.233  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:36.331  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:36.331  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:36.344  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:36.344  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:36.356  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:36.356  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:36.431  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:36.431  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:36.528  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:36.528  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:36.540  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:36.540  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:36.552  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:36.552  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:36.616  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:36.616  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:36.721  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:36.722  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:36.741  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:36.741  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:36.755  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:36.755  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:36.811  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:36.811  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:36.920  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:36.920  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:36.949  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:36.949  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:36.966  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:36.966  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:37.003  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:37.003  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:37.104  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:37.104  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:37.121  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:37.121  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:37.134  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:37.134  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:37.191  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:37.191  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:37.304  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:37.304  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:37.324  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:37.324  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:37.341  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:37.341  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:37.383  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:37.383  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:37.515  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:37.515  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:37.535  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:37.535  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:37.550  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:37.550  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:37.575  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:37.575  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:37.697  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:37.697  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:37.717  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:37.717  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:37.732  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:37.732  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:37.768  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:37.768  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:37.904  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:37.904  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:37.924  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:37.924  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:37.941  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:37.941  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:37.969  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:37.969  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:38.087  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:38.087  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:38.106  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:38.107  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:38.123  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:38.123  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:38.159  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:38.159  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:38.273  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:38.273  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:38.296  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:38.296  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:38.313  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:38.313  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:38.347  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:38.347  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:38.447  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:38.447  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:38.464  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:38.464  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:38.480  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:38.480  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:38.547  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:38.547  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:38.636  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:38.636  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:38.650  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:38.650  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:38.664  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:38.664  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:38.740  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:38.740  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:38.840  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:38.840  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:38.862  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:38.862  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:38.878  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:38.879  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:38.922  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:38.923  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:39.028  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:39.028  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:39.044  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:39.044  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:39.058  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:39.058  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:39.114  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:39.114  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:39.215  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:39.215  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:39.230  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:39.230  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:39.244  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:39.244  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:39.312  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:39.312  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:39.415  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:39.415  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:39.435  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:39.435  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:39.454  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:39.454  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:39.506  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:39.506  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:39.625  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:39.625  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:39.642  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:39.642  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:39.655  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:39.656  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:39.692  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:39.692  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:39.789  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:39.790  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:39.807  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:39.807  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:39.820  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:39.820  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:39.888  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:39.888  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:39.992  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:39.992  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:40.009  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:40.009  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:40.021  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:40.022  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:40.072  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:40.072  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:40.191  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:40.191  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:40.212  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:40.212  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:40.228  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:40.228  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:40.263  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:40.263  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:40.380  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:40.381  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:40.403  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:40.403  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:40.420  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:40.420  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:40.458  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:40.458  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:40.568  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:40.568  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  customAudioSource.isWorkingNow()
2024-10-23 01:53:40.578  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR LocalListener:_onResult
2024-10-23 01:53:40.579  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=LocalListener:_onResult
2024-10-23 01:53:40.579  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR wanglee the file is:2024-10-23-01-53-31-016
2024-10-23 01:53:40.579  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=local highest conf:-1
2024-10-23 01:53:40.579  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=Local result is invalid, but cloud recognition didn't triggered, maybe caused by leading silence timeout.
2024-10-23 01:53:40.579  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  The error has been 4 times
2024-10-23 01:53:40.579  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  !!!! afterTimeout
2024-10-23 01:53:40.579  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR stopAudioRecord
2024-10-23 01:53:40.579  1284-1284  CustomAudioSource       com.ubtechinc.alpha2services         D  setisWorking=false
2024-10-23 01:53:40.579  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=LocalListener:_onError
2024-10-23 01:53:40.579  1284-1284  Nuance                  com.ubtechinc.alpha2services         I  ASR stopAudioRecord
2024-10-23 01:53:40.579  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR !!!! text=Local Recog Error: code=0, reason=Recognition canceled
2024-10-23 01:53:40.579  1284-1284  Nuance                  com.ubtechinc.alpha2services         D  ASR handler 6
2024-10-23 01:53:40.579  1284-1284  SpeechManager           com.ubtechinc.alpha2services         D  语法识别超时 进入唤醒等待
2024-10-23 01:53:40.583  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.LED_ACTION
2024-10-23 01:53:40.583  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!! control_type:1
2024-10-23 01:53:40.583  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!!!! LED_type=ear_led LED_state=close_led
2024-10-23 01:53:40.583  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!!!!! stop ear led
2024-10-23 01:53:40.583  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.robot.tts_hint_wakeup
2024-10-23 01:53:40.583  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!! TTS_HINT_EVENT
2024-10-23 01:53:40.583  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!! hintString=
2024-10-23 01:53:40.583  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!! actionString=
2024-10-23 01:53:40.583  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  hintSrting=asr_timeout
2024-10-23 01:53:40.587  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:40.599  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:40.647  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:40.770  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:40.789  1192-1214  art                     pid-1192                             I  Debugger is no longer active
2024-10-23 01:53:40.791  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:40.808  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:40.845  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:40.938  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:40.951  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:40.963  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:41.060  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:41.121  1284-1897  SpeechManager           com.ubtechinc.alpha2services         D  what:3
2024-10-23 01:53:41.123  1284-1897  IflytekWakeUp5mic       com.ubtechinc.alpha2services         D  startRecording
2024-10-23 01:53:41.125  1284-1897  IflyteckEngine          com.ubtechinc.alpha2services         D  startRecording
2024-10-23 01:53:41.130  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.robot.tts_hint_wakeup
2024-10-23 01:53:41.130  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!!! TTS_HINT_EVENT
2024-10-23 01:53:41.130  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!! hintString=
2024-10-23 01:53:41.130  1284-1284  <no-tag>                com.ubtechinc.alpha2services         D  !!! actionString=
2024-10-23 01:53:41.130  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  hintSrting=enter_wakeup
2024-10-23 01:53:41.155  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:41.176  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:41.192  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:41.220  1284-1743  CHEST                   com.ubtechinc.alpha2services         I  f8 8f 09 00 00 80 01 33 bd ed 
2024-10-23 01:53:41.222  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.chest
2024-10-23 01:53:41.222  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!! powerValue=51
2024-10-23 01:53:41.229  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         I  ches cmd = -128
2024-10-23 01:53:41.230  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:41.343  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:41.356  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:41.368  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:41.415  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:41.533  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:41.552  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:41.568  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:41.610  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:41.711  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:41.725  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:41.737  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:41.805  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:41.942  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:41.963  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:41.980  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:41.993  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:42.138  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:42.161  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:42.177  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:42.191  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:42.303  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:42.325  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:42.339  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:42.378  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:42.496  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:42.518  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:42.537  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:42.575  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:42.697  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:42.718  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:42.733  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:42.760  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:42.890  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:42.909  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:42.925  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:42.951  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:43.065  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:43.093  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:43.116  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:43.148  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:43.279  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:43.298  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:43.311  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:43.336  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:43.478  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:43.497  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:43.517  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:43.531  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:43.642  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:43.661  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:43.677  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:43.724  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:43.838  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:43.857  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:43.874  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:43.919  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:44.025  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:44.045  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:44.062  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:44.104  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:44.220  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:44.243  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:44.260  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:44.305  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:44.403  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:44.418  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:44.431  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:44.490  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:44.617  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:44.641  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:44.661  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:44.683  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:44.832  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:44.859  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:44.878  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:44.891  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.013  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.038  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.057  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.072  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.189  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.213  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.230  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.260  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.369  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.390  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.405  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.459  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.604  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.631  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.651  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.666  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.770  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.793  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.810  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.840  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.952  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.978  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:45.998  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:46.028  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:46.155  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:46.179  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:46.194  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:46.220  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:46.320  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:46.340  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:46.358  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:46.409  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:46.537  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:46.561  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:46.580  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:46.601  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:46.741  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:46.763  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:46.779  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:46.797  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:46.926  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:46.947  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:46.961  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:46.987  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:47.108  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:47.129  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:47.146  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:47.182  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:47.288  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:47.306  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:47.317  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:47.358  1284-2008  XmppPingManager         com.ubtechinc.alpha2services         D  deltaInSeconds=0
2024-10-23 01:53:47.358  1284-2008  XmppPingManager         com.ubtechinc.alpha2services         D  maybeSchedulePingServerTask
2024-10-23 01:53:47.367  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:47.380  1284-1743  CHEST                   com.ubtechinc.alpha2services         I  f8 8f 09 00 00 80 01 33 bd ed 
2024-10-23 01:53:47.381  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.chest
2024-10-23 01:53:47.382  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!! powerValue=51
2024-10-23 01:53:47.389  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         I  ches cmd = -128
2024-10-23 01:53:47.465  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:47.477  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:47.489  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:47.559  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:47.668  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:47.685  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:47.697  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:47.752  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:47.877  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:47.897  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:47.914  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:47.951  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:48.068  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:48.091  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:48.108  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:48.142  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:48.239  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:48.252  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:48.263  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:48.328  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:48.363  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! scheduleAtFixedRate
2024-10-23 01:53:48.363  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! getHasLogin=2
2024-10-23 01:53:48.363  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! onLineState=available
2024-10-23 01:53:48.363  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! robotHolder=
2024-10-23 01:53:48.433  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:48.450  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:48.467  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:48.519  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:48.650  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:48.667  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:48.679  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:48.711  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:48.843  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:48.866  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:48.882  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:48.911  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:49.008  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:49.020  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:49.032  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:49.103  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:49.200  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:49.211  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:49.225  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:49.290  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:49.437  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:49.460  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:49.479  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:49.496  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:49.587  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:49.602  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:49.616  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:49.674  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:49.804  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:49.827  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:49.847  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:49.870  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:49.999  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:50.024  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:50.043  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:50.066  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:50.158  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:50.174  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:50.189  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:50.266  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:50.422  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:50.438  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:50.452  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:50.465  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:50.538  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:50.553  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:50.566  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:50.661  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:50.749  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:50.768  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:50.784  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:50.824  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:50.959  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:50.983  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.003  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.025  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.138  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.161  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.176  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.225  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.330  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.357  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.377  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.401  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.538  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.560  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.577  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.602  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.726  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.745  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.762  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.797  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.924  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.946  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.966  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:51.983  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:52.090  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:52.111  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:52.129  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:52.172  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:52.308  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:52.329  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:52.349  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:52.366  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:52.464   464-528   WifiStateMachine        system_process                       E  WifiStateMachine CMD_START_SCAN source -2 txSuccessRate=2.21 rxSuccessRate=1.48 targetRoamBSSID=74:d0:2b:42:fe:a0 RSSI=-60
2024-10-23 01:53:52.464   464-528   WifiStateMachine        system_process                       E  startDelayedScan send -> 12 milli 20000
2024-10-23 01:53:52.464   464-528   WifiStateMachine        system_process                       E  WifiStateMachine CMD_START_SCAN with age=20003 interval=67500 maxinterval=300000
2024-10-23 01:53:52.464   464-528   WifiStateMachine        system_process                       E  WifiStateMachine CMD_START_SCAN full=false
2024-10-23 01:53:52.464   464-528   WifiStateMachine        system_process                       E  WifiStateMachine starting scan for "Office2g"WPA_PSK with 2437
2024-10-23 01:53:52.465   464-528   WifiStateMachine        system_process                       E  [1,729,659,232,465 ms] noteScanstart no scan source uid -2
2024-10-23 01:53:52.489  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:52.506  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:52.518  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:52.551  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:52.683   464-528   WifiStateMachine        system_process                       E  [1,729,659,232,682 ms] noteScanEnd no scan source onTime=0
2024-10-23 01:53:52.688   464-528   WifiStateMachine        system_process                       E  wifi setScanResults statecom.android.server.wifi.WifiStateMachine$ConnectedState@3dbfcd72 sup_state=COMPLETED debouncing=false mConnectionRequests=1 selection=<none>
2024-10-23 01:53:52.692  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:52.713  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:52.731  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:52.748  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:52.875  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:52.898  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:52.917  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:52.944  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:53.034  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:53.050  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:53.063  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:53.131  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:53.237  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:53.255  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:53.270  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:53.319  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:53.443  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:53.466  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:53.485  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:53.518  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:53.520  1284-1743  CHEST                   com.ubtechinc.alpha2services         I  f8 8f 09 00 00 80 01 33 bd ed 
2024-10-23 01:53:53.522  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.chest
2024-10-23 01:53:53.522  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!! powerValue=51
2024-10-23 01:53:53.530  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         I  ches cmd = -128
2024-10-23 01:53:53.637  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:53.660  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:53.678  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:53.706  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:53.813  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:53.836  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:53.852  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:53.895  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.021  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.040  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.056  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.100  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.201  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.219  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.238  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.280  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.404  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.425  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.440  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.471  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.603  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.626  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.643  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.664  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.779  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.801  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.818  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.863  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.968  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.984  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:54.998  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:55.051  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:55.188  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:55.211  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:55.231  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:55.248  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:55.368  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:55.385  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:55.397  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:55.431  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:55.563  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:55.586  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:55.603  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:55.627  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:55.753  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:55.776  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:55.790  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:55.819  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:55.945  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:55.965  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:55.982  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:56.013  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:56.121  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:56.141  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:56.158  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:56.199  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:56.298  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:56.315  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:56.331  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:56.394  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:56.528  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:56.550  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:56.567  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:56.592  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:56.683  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:56.695  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:56.707  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:56.775  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:56.872  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:56.884  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:56.893  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:56.974  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:57.073  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:57.088  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:57.100  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:57.161  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:57.298  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:57.321  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:57.338  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:57.362  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:57.466  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:57.482  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:57.494  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:57.544  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:57.666  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:57.686  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:57.700  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:57.739  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:57.815  1192-1214  art                     pid-1192                             I  Debugger is no longer active
2024-10-23 01:53:57.867  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:57.887  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:57.900  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:57.930  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:58.061  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:58.084  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:58.101  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:58.123  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:58.251  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:58.267  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:58.282  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:58.311  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:58.443  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:58.467  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:58.483  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:58.511  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:58.608  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:58.622  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:58.634  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:58.695  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:58.804  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:58.819  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:58.835  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:58.908  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:59.038  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:59.057  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:59.075  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:59.091  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:59.203  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:59.224  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:59.239  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:59.271  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:59.424  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:59.437  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:59.450  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:59.465  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:59.561  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:59.585  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:59.607  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:59.662  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:59.680  1284-1743  CHEST                   com.ubtechinc.alpha2services         I  f8 8f 09 00 00 80 01 33 bd ed 
2024-10-23 01:53:59.683  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.chest
2024-10-23 01:53:59.683  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!! powerValue=51
2024-10-23 01:53:59.692  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         I  ches cmd = -128
2024-10-23 01:53:59.757  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:59.772  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:59.786  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:59.851  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:53:59.980  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.009  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.040  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.054  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.138  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.151  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.161  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.229  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.348  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.373  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.390  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.431  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.544  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.569  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.587  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.623  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.720  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.739  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.755  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.808  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.935  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.954  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:00.971  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:01.000  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:01.097  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:01.110  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:01.122  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:01.191  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:01.326  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:01.347  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:01.364  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:01.393  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:01.515  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:01.536  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:01.552  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:01.583  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:01.703  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:01.726  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:01.743  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:01.778  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:01.901  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:01.922  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:01.937  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:01.964  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:02.098  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:02.120  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:02.137  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:02.160  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:02.289  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:02.312  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:02.330  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:02.349  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:02.461  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:02.482  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:02.499  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:02.543  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:02.653  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:02.676  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:02.693  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:02.735  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:02.837  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:02.855  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:02.870  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:02.919  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.061  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.085  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.103  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.120  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.229  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.251  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.268  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.304  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.404  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! scheduleAtFixedRate
2024-10-23 01:54:03.404  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! getHasLogin=2
2024-10-23 01:54:03.404  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! onLineState=available
2024-10-23 01:54:03.404  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! robotHolder=
2024-10-23 01:54:03.436  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.456  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.473  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.503  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.625  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.648  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.664  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.695  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.793  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.813  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.829  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.882  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.984  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:03.999  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:04.013  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:04.099  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:04.183  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:04.206  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:04.220  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:04.283  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:04.408  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:04.431  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:04.450  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:04.467  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:04.560  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:04.575  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:04.586  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:04.650  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:04.771  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:04.790  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:04.807  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:04.839  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:04.963  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:04.985  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.001  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.031  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.137  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.157  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.171  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.234  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.332  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.348  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.362  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.419  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.520  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.535  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.547  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.610  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.745  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.766  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.785  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.806  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.820  1284-1743  CHEST                   com.ubtechinc.alpha2services         I  f8 8f 09 00 00 80 01 33 bd ed 
2024-10-23 01:54:05.822  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.chest
2024-10-23 01:54:05.822  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!! powerValue=51
2024-10-23 01:54:05.830  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         I  ches cmd = -128
2024-10-23 01:54:05.927  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.947  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.964  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:05.999  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:06.095  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:06.110  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:06.125  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:06.187  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:06.288  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:06.301  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:06.313  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:06.375  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:06.488  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:06.507  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:06.519  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:06.567  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:06.692  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:06.714  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:06.731  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:06.764  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:06.902  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:06.925  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:06.943  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:06.956  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:07.080  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:07.102  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:07.119  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:07.147  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:07.284  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:07.301  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:07.318  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:07.344  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:07.448  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:07.465  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:07.482  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:07.527  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:07.662  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:07.683  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:07.700  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:07.729  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:07.823  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:07.838  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:07.852  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:07.914  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:08.041  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:08.063  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:08.079  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:08.103  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:08.225  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:08.245  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:08.262  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:08.303  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:08.417  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:08.431  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:08.445  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:08.490  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:08.612  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:08.633  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:08.650  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:08.680  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:08.806  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:08.826  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:08.842  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:08.879  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.004  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.025  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.040  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.064  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.191  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.212  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.228  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.255  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.371  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.393  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.411  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.455  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.562  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.581  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.600  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.641  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.775  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.800  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.820  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.841  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.930  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.945  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:09.959  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:10.046  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:10.159  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:10.178  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:10.197  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:10.218  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:10.349  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:10.375  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:10.395  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:10.412  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:10.543  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:10.566  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:10.586  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:10.608  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:10.719  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:10.745  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:10.765  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:10.802  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:10.915  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:10.940  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:10.960  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:10.989  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:11.123  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:11.145  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:11.165  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:11.183  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:11.289  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:11.316  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:11.335  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:11.386  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:11.476  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:11.492  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:11.509  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:11.564  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:11.662  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:11.679  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:11.696  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:11.765  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:11.862  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:11.878  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:11.893  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:11.948  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:11.970  1284-1743  CHEST                   com.ubtechinc.alpha2services         I  f8 8f 09 00 00 80 01 33 bd ed 
2024-10-23 01:54:11.972  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.chest
2024-10-23 01:54:11.972  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!! powerValue=51
2024-10-23 01:54:11.980  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         I  ches cmd = -128
2024-10-23 01:54:12.045  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:12.060  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:12.074  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:12.140  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:12.253  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:12.274  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:12.290  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:12.345  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:12.436  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:12.451  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:12.464   464-528   WifiStateMachine        system_process                       E  WifiStateMachine CMD_START_SCAN source -2 txSuccessRate=2.29 rxSuccessRate=1.36 targetRoamBSSID=74:d0:2b:42:fe:a0 RSSI=-60
2024-10-23 01:54:12.464   464-528   WifiStateMachine        system_process                       E  startDelayedScan send -> 13 milli 20000
2024-10-23 01:54:12.465   464-528   WifiStateMachine        system_process                       E  WifiStateMachine CMD_START_SCAN with age=40004 interval=67500 maxinterval=300000
2024-10-23 01:54:12.465   464-528   WifiStateMachine        system_process                       E  WifiStateMachine CMD_START_SCAN full=false
2024-10-23 01:54:12.465   464-528   WifiStateMachine        system_process                       E  WifiStateMachine starting scan for "Office2g"WPA_PSK with 2437
2024-10-23 01:54:12.466  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:12.466   464-528   WifiStateMachine        system_process                       E  [1,729,659,252,466 ms] noteScanstart no scan source uid -2
2024-10-23 01:54:12.523  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:12.659  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:12.675   464-528   WifiStateMachine        system_process                       E  [1,729,659,252,675 ms] noteScanEnd no scan source onTime=0
2024-10-23 01:54:12.679   464-528   WifiStateMachine        system_process                       E  wifi setScanResults statecom.android.server.wifi.WifiStateMachine$ConnectedState@3dbfcd72 sup_state=COMPLETED debouncing=false mConnectionRequests=1 selection=<none>
2024-10-23 01:54:12.682  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:12.697  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:12.717  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:12.846  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:12.866  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:12.881  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:12.905  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:13.014  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:13.034  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:13.051  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:13.104  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:13.197  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:13.212  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:13.226  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:13.324  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:13.403  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:13.424  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:13.439  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:13.480  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:13.624  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:13.644  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:13.661  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:13.681  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:13.805  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:13.824  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:13.841  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:13.865  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:13.980  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.002  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.017  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.058  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.173  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.194  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.210  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.257  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.371  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.397  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.416  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.443  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.555  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.579  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.596  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.641  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.777  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.797  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.817  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.831  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.844  1192-1214  art                     pid-1192                             I  Debugger is no longer active
2024-10-23 01:54:14.956  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.976  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:14.989  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:15.016  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:15.115  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:15.130  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:15.144  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:15.230  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:15.324  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:15.340  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:15.356  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:15.404  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:15.513  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:15.533  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:15.549  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:15.591  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:15.721  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:15.745  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:15.763  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:15.788  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:15.917  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:15.939  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:15.956  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:15.984  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:16.104  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:16.127  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:16.146  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:16.175  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:16.297  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:16.316  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:16.331  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:16.359  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:16.489  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:16.511  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:16.528  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:16.561  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:16.689  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:16.717  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:16.736  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:16.752  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:16.874  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:16.895  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:16.914  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:16.938  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:17.062  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:17.087  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:17.106  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:17.135  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:17.268  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:17.291  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:17.313  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:17.327  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:17.427  1284-2008  XmppPingManager         com.ubtechinc.alpha2services         D  deltaInSeconds=15
2024-10-23 01:54:17.427  1284-2008  XmppPingManager         com.ubtechinc.alpha2services         D  maybeSchedulePingServerTask
2024-10-23 01:54:17.451  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:17.465  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:17.479  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:17.512  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:17.641  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:17.662  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:17.678  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:17.708  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:17.853  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:17.879  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:17.898  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:17.912  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:17.994  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:18.009  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:18.022  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:18.090  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:18.130  1284-1743  CHEST                   com.ubtechinc.alpha2services         I  f8 8f 09 00 00 80 01 33 bd ed 
2024-10-23 01:54:18.133  1284-1284  AlphaEventManager       com.ubtechinc.alpha2services         D  onReceive com.ubtechinc.services.chest
2024-10-23 01:54:18.133  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         D  !!! powerValue=51
2024-10-23 01:54:18.142  1284-1284  AlphaMainSeviceImpl     com.ubtechinc.alpha2services         I  ches cmd = -128
2024-10-23 01:54:18.200  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:18.219  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:18.238  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:18.280  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:18.432  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:18.434  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! scheduleAtFixedRate
2024-10-23 01:54:18.434  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! getHasLogin=2
2024-10-23 01:54:18.434  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! onLineState=available
2024-10-23 01:54:18.434  1284-1956  <no-tag>                com.ubtechinc.alpha2services         D  !!!! robotHolder=
2024-10-23 01:54:18.459  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:18.478  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:18.492  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:18.583  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:18.603  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:18.621  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:18.665  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:18.807  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:18.829  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:18.847  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:18.860  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.005  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.026  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.045  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.057  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.173  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.196  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.213  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.241  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.378  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.397  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.408  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.431  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.564  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.586  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.606  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.632  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.752  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.775  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.793  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.817  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.939  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.961  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:19.978  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:20.013  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:20.150  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:20.173  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:20.190  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:20.206  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:20.341  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:20.362  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:20.383  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:20.398  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:20.521  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:20.544  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:20.561  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:20.594  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:20.691  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:20.707  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:20.720  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:20.777  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:20.878  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:20.893  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:20.907  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:20.971  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:21.073  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:21.090  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:21.105  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:21.159  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:21.293  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:21.316  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:21.335  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:21.361  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:21.481  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:21.504  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:21.519  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:21.548  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:21.676  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:21.699  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:21.716  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:21.745  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:21.841  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:21.856  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:21.867  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:21.927  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:22.038  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:22.062  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:22.080  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:22.122  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:22.221  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:22.240  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:22.253  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:22.311  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:22.443  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:22.467  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:22.484  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:22.512  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:22.608  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:22.623  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
2024-10-23 01:54:22.635  1284-1284  IflytekASR5micTest      com.ubtechinc.alpha2services         I  channel:2 input data:1536
