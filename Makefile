obj-m += dm-dedup.o

dm-dedup-objs := dm-dedup-cbt.o dm-dedup-hash.o dm-dedup-ram.o dm-dedup-check.o dm-dedup-rw.o dm-dedup-target.o

EXTRA_CFLAGS := -I/root/kernel/linux-source-4.19/drivers/md

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

install:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules_install

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
