#/bin/bash

vgchange -ay//

DEVICE_FS = 'blkid -o value -s TYPE ${DEVICE}'//it gives create to the file system

/this all command to use format device no need all execute
if [ "'echo -n $DEVICE_FS'" == "" ]; then
    pvcreate ${DEVICE}
  vgcreate data ${DEVICE}
  lvcreate ==name volume -l 100%FREE data
  mkf.ext4/dev/data/volume1 //create file system

fi

mkdir -p /data
echo '/dev/data/volume1/data ext4 defaults 0 0' >> /etc/fstab 
mount /data