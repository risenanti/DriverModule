# if KERNELRELEASE is defined, we've been invoked from the
# kernel build system and can use its language.
ifneq (${KERNELRELEASE},)
obj-m := hello.o
# Otherwise we were called directly from the command line.
# Invoke the kernel build system.
  else
    KERNEL_SOURCE := /lib/modules/4.10.0-32-generic/build
    PWD := $(shell pwd)
default:
	${MAKE} -C ${KERNEL_SOURCE} SUBDIRS=${PWD} modules

clean:
	${MAKE} -C ${KERNEL_SOURCE} SUBDIRS=${PWD} clean
endif
