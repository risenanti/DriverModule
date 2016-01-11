#include <linux/init.h>
#include <linux/module.h>
MODULE_LICENSE("Risen");

static int hello_init(void)
{
    printk(KERN_DEBUG "Hello, world\n");
    return 0;
}

static void hello_exit(void)
{
    printk(KERN_DEBUG "Goodbye, cruel world\n");
}

module_init(hello_init);
module_exit(hello_exit);
