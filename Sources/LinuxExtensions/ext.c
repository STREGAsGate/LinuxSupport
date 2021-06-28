#include "Include/ext.h"

// Non-variadic wrapper
XIC XCreateIC_Ext(XIM im, Window window) {
    return XCreateIC(im, 
                     XNInputStyle, XIMPreeditNothing | XIMStatusNothing,
                     XNClientWindow, window,
                     XNFocusWindow,  window,
                     NULL);
}
