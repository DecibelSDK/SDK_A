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
            name: "sdk-br",
            targets: ["SDK_BR"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "SDK_A",
            path: "SDK_A.xcframework"
        ),
        .binaryTarget(
            name: "SDK_BR",
            url: "https://dl.google.com/firebase/ios/swiftpm/10.25.0/FirebaseAnalytics.zip",
            checksum: "b2a313c4d58a6eee38b4e5b50462a889fbeb5bc9c1fd35d5f1579ec8e0b68463"
        ),
    ]
)
