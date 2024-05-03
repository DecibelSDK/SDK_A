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
            targets: ["SDK_A"]),
    ],
    targets: [
            .binaryTarget(
                name: "SDK_A",
                path: "SDK-A.xcframework"
            )
    ]
)
