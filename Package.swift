// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  
//  Copyright © 2023 Medallia. Use subject to licensing terms.

import PackageDescription

let package = Package(
    name: "sdk-a",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "sdk-a",
            targets: ["SDK_A"]
        ),
    ],
    dependencies: [
        .package(
            name: "sdk-br",
            url: "https://github.com/DecibelSDK/SDK_BR.git",
            from: "1.0.0"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "SDK_A",
            path: "SDK_A.xcframework"
        ),
        .binaryTarget(
            name: "SDK_BR",
            url: "https://github.com/DecibelSDK/SDK_BR/blob/main/SDK_BR.xcframework.zip",
            checksum: "5bc54cca3f15b7dea50e83266475e9fcda53777e2856abb5a9c9617533c98cf2"
        )
    ]
)
