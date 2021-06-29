// Game Controllers
#include "Include/ioctl.h"
#include <linux/types.h>

struct input_absinfo {
	int value;
	__s32 minimum;
	__s32 maximum;
	__s32 fuzz;
	__s32 flat;
	__s32 resolution;
};

int ioctl_ptr(int fd, int request, void* ptr) {
    return ioctl(fd, request, ptr);
}
int ioctl_value(int fd, int request, int value) {
    return ioctl(fd, request, value);
}

int EVIOCGBIT(int ev, int len) {
    return _IOC(_IOC_READ, 'E', 0x20 + (ev), len);
}

int EVIOCGABS(int abs) {
     return _IOR('E', 0x40 + (abs), struct input_absinfo);
}
