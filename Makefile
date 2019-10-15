# Makefile – makefile of our first driver

# if KERNELRELEASE is not defined, we've been called directly from the command line.
# Invoke the kernel build system.
ifeq (${KERNELRELEASE},)
	KERNEL_SOURCE := /lib/modules/$(shell uname -r)/build
	#KERNEL_SOURCE := /home/fabatera/Desktop/linux_docker/linux
	PWD := $(shell pwd)
default:
	$(info ***Nothing to do here***)
	# ${MAKE} -C ${KERNEL_SOURCE} KBUILD_EXTMOD=${PWD} modules

all: clean ofd

ofd:
	$(info ***first_driver***)
	${MAKE} -C ${KERNEL_SOURCE} KBUILD_EXTMOD=${PWD}/first_driver modules

clean:
	$(info ***clean***)
	${MAKE} -C ${KERNEL_SOURCE} KBUILD_EXTMOD=${PWD} clean

# Otherwise KERNELRELEASE is defined; we've been invoked from the
# kernel build system and can use its language.
# else
# 	obj-m := aofd.o
endif