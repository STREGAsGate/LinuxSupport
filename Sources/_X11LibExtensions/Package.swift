// swift-tools-version:5.3
/**
 * Copyright (c) 2021 Dustin Collins (Strega's Gate)
 * All Rights Reserved.
 * Licensed under Apache License v2.0
 * 
 * Find me on https://www.YouTube.com/STREGAsGate, or social media @STREGAsGate
 *
 * This package includes unmodified sourcecode for zlib.
 * https://zlib.net/
 *
 * This package includes unmodified sourcecode for libpng.
 * http://www.libpng.org/
 */

import PackageDescription

let package = Package(
    name: "X11Extensions",
    products: [
        .library(name: "X11Extensions", targets: ["X11Extensions"])
    ],
    targets: [
        .target(name: "X11Extensions", publicHeadersPath: "Include")
    ],
    cLanguageStandard: .c99
)
