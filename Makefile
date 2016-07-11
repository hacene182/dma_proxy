obj-m += dma_proxy.o

#set KDIR to kernel source root
KERNEL_SRC = /lib/modules/$(shell uname -r)/build/
#set BUILD_DIR to desired build directory
SRC := $(shell pwd)

all:
	$(MAKE) O=$(BUILD_DIR) -C $(KDIR) M=$(shell pwd) modules

clean:
	$(MAKE) O=$(BUILD_DIR) -C $(KDIR) M=$(shell pwd) clean
