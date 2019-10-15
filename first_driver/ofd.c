/* ofd.c – Our First Driver code */

#include <linux/module.h>
#include <linux/version.h>
#include <linux/kernel.h>

static int __init ofd_init(void) /* Constructor */
{
    pr_info("ofd registered\n");
    pr_err("LINUX_VERSION_CODE = %d , KERNEL_VERSION = %d \n", LINUX_VERSION_CODE, KERNEL_VERSION(5,0,0));
    return 0;
}

static void __exit ofd_exit(void) /* Destructor */
{
    pr_info("ofd unregistered\n");
}

module_init(ofd_init);

module_exit(ofd_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Fabiano Ferronato <fabiferro@hotmail.com>");
MODULE_DESCRIPTION("Our First Driver");