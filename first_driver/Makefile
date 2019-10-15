# Makefile – makefile of our first driver

# if KERNELRELEASE is not defined, we've been called directly from the command line.
# Invoke the kernel build system.
# ifeq (${KERNELRELEASE},)
# 	$(info ***KERNELRELEASE***)
# 	KERNEL_SOURCE := /lib/modules/$(shell uname -r)/build
# 	#KERNEL_SOURCE := /home/fabatera/Desktop/linux_docker/linux
# 	PWD := $(shell pwd)
# default:
# 	$(info ***default***)
# 	${MAKE} -C ${KERNEL_SOURCE} KBUIL_EXTMOD=${PWD} modules

# clean:
# 	$(info ***clean***)
# 	${MAKE} -C ${KERNEL_SOURCE} SUBDIRS=${PWD} clean

# # Otherwise KERNELRELEASE is defined; we've been invoked from the
# # kernel build system and can use its language.
# else
obj-m := ofd.o
# endif