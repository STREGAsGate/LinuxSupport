// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "X11",
    products: [
        .library(name: "X11", type: .static, targets: ["X11"]),
    ],
    dependencies: [

    ],
    targets: [
        .systemLibrary(name: "_X11SystemLibrary", path: "Sources/_X11SystemLibrary"),
        .target(name: "_X11", publicHeadersPath: "Include"),
        .target(name: "X11",
                dependencies: ["_X11SystemLibrary",
                               "_X11"]),
    ]
)
