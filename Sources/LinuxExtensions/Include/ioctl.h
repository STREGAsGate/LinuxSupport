#include <sys/ioctl.h>

// Non-variadic wrappers
int ioctl_value(int fd, int request, int value);
int ioctl_ptr(int fd, int request, void* ptr);