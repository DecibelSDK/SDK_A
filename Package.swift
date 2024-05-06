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
            targets: ["SDK_A", "SDK_BR"]
        ),
    ],
//    dependencies: [
//        .package(
//            name: "sdk-br",
//            url: "https://github.com/DecibelSDK/SDK_BR.git",
//            from: "1.0.0"
//        ),
//    ],
    targets: [
        .binaryTarget(
            name: "SDK_A",
            path: "SDK_A.xcframework"
        ),
        .binaryTarget(
            name: "SDK_BR",
            url: "https://www.icloud.com/iclouddrive/0e5txnfh_Pwa58VU8cY-VX-cw#SDK%5FBR.xcframework.zip",
            checksum: "5bc54cca3f15b7dea50e83266475e9fcda53777e2856abb5a9c9617533c98cf2"
        ),
//        .target(
//            name: "FrameworkCTargets",
//            dependencies: [
//                .target(name: "SDK_A", condition: .when(platforms: .some([.iOS]))),
//                .product(name: "SDK_BR", package: "sdk-br", condition: .when(platforms: .some([.iOS])))
//               .target(name: "FrameworkC", condition: .when(platforms: .some([.iOS])))
//            ],
//            path: "FrameworkCTargets"
//        )
    ]
)
