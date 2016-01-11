# if KERNELRELEASE is defined, we've been invoked from the
# kernel build system and can use its language.
ifneq (${KERNELRELEASE},)
obj-m := hello.o
# Otherwise we were called directly from the command line.
# Invoke the kernel build system.
  else
    KERNEL_SOURCE := /usr/src/linux-headers-3.16.0-38-generic
    PWD := $(shell pwd)
default:
	${MAKE} -C ${KERNEL_SOURCE} SUBDIRS=${PWD} modules

clean:
	${MAKE} -C ${KERNEL_SOURCE} SUBDIRS=${PWD} clean
endif
