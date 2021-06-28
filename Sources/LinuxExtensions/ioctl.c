// Game Controllers
#include "Include/ioctl.h"

int ioctl_ptr(int fd, int request, void* ptr) {
    return ioctl(fd, request, ptr);
}

int ioctl_value(int fd, int request, int value) {
    return ioctl(fd, request, value);
}