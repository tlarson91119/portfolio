A while ago I got my hands on a used HPE Proliant DL360 Gen9 for cheap.
There was some structural damage on the chassis that prevented certain drive caddies
from being inserted properly. After removing the hardware, I was able to straighten
out the chassis so that the caddies would fit in all of the available spaces.
The POST was successful and even the smart storage battery is healthy.

![alt text](proliant-hardware.jpg)

After looking through the UEFI settings and figuring out how to access the Smart
Array Controller, I popped in a single 120GB SSD for the OS and four 1TB SAS
disks. I placed the 4 SAS drives in a RAID10 array because I wanted to store
virtual machines on it. I chose Ubuntu Server 22.04.3 for the OS which runs
KVM/QEMU for the VMs.
Later on, I added another three 15k RPM SAS disks which are each 146GB. They're
pretty small, but I was mainly interested in testing the performance of the
disks in a RAID5 array. It gave me just under 300GB to work with. Despite
setting up the RAID5 array to do a benchmark, I ended up leaving it there
and setup a Samba file share to mess with. Honestly, if I needed a system
for backing up files, I'd try to find a small and low-power system dedicated
as a file server.

So, now there's a RAID10 and a RAID5 array in it. The Ubuntu Server installation
went well on the 120GB SSD and it took me a couple days to learn and figure
out how to setup the virtualization with KVM/QEMU. Its default configuration
wanted to store the VM disks on the tiny SSD so I figured out how to configure
libvirt to use a directory on the much larger RAID10 volume.

The server has been running great over the past month, but it's a little dusty
already. I've been using SSH with public-key security to access the server
from my regular desktop. I also use Virtual Machine Manager on my desktop
as well to remotely manage the VMs and its Spice client to control the
VMs.

It's amazing. The server is tucked away and I found the ILO subsystem useful
for rebooting or checking the state of the server if, for some reason, the OS fails to
boot. However, there were some cases where I needed to interact directly with
the server to troubleshoot some issues with Ubuntu.
When everything is running right, I can work with the system remotely from
the comfort of my main desktop.