// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "X11",
    products: [
        .library(name: "X11", type: .static, targets: ["X11"]),

    ],
    dependencies: [
        .package(url: "https://github.com/STREGAsGate/_X11.git", .branch("master")),

    ],
    targets: [
        .target(name: "X11",
                dependencies: [.product(name: "_X11SystemLibrary", package: "_X11"),
                               .product(name: "_X11LibraryExtensions", package: "_X11")]),
    ]
)
