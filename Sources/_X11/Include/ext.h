#include "X11/Xlib.h"
#include "X11/X.h"

// Non-variadic wrapper
XIC XCreateIC_Ext(XIM im, Window window);
