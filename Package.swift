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
                targets: ["sdk-a"]
            )
        ],
        dependencies: [
            .package(
                url: "https://github.com/DecibelSDK/SDK_BR.git",
                from: "1.0.0"
            )
        ],
        targets: [
            .binaryTarget(
                name: "SDK_A",
                path: "Sources/SDK_A.xcframework"
            ),
            .target(
                name: "sdk-a",
                dependencies: ["SDK_A", "SDK_BR"],
                path: "Sources"
            ),
        ]
    )
