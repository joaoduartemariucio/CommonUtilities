// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CommonUtilities",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CommonUtilities",
            targets: ["CommonUtilities"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/kean/Nuke.git", from: "10.3.1")
    ],
    targets: [
        .target(
            name: "CommonUtilities",
            dependencies: [
                "Nuke"
            ],
            path: "CommonUtilities"
        )
    ]
)
