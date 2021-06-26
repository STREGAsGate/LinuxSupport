// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "X11",
    products: [
        .library(name: "X11", type: .static, targets: ["X11"]),
    ],
    dependencies: [
        .package(path: "./Sources/X11Ext"),
    ],
    targets: [
        .systemLibrary(name: "X11Lib", path: "./Sources/X11Lib"),
        .target(name: "X11", dependencies: ["X11Lib", "X11Ext"]),
    ]
)
 