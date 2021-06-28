// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LinuxSupport",
    products: [
        .library(name: "LinuxSupport", type: .static, targets: ["LinuxSupport"]),
    ],
    dependencies: [

    ],
    targets: [
        .systemLibrary(name: "LinuxImports", path: "Sources/LinuxImports"),
        .target(name: "LinuxExtensions", publicHeadersPath: "Include"),

        .target(name: "LinuxSupport", dependencies: ["LinuxImports", "LinuxExtensions"]),
    ],
    cLanguageStandard: .gnu11
)
