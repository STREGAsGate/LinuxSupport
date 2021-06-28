import LinuxExtensions

@_transparent
public func EVIOCGBIT(_ flag: Int32, _ count: Int32) -> UInt32 {
    return ((2) << (((0 + 8) + 8) + 14)) 
            | ((UInt32(Character("E").asciiValue!)) << (0 + 8)) 
            | ((32 + UInt32(flag)) << 0) 
            | (UInt32(count) << ((0 + 8) + 8))
}

@_transparent
public func ioctl(_ fd: Int32, _ request: Int32, _ ptr: UnsafeMutableRawPointer) -> Int32 {
    return ioctl_ptr(fd, request, ptr)
}

@_transparent
public func ioctl(_ fd: Int32, _ request: Int32, _ value: Int32) -> Int32 {
    return ioctl_value(fd, request, value)
}