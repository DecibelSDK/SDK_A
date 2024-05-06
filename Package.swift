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
        .library(
            name: "sdk-all",
            targets: ["SDK_ALL"]
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
        .target(
            name: "SDK_ALL",
            dependencies: ["sdk-a", "sdk-br"],
            path: "/"
        )
    ]
)
