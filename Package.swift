// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "findme",
    platforms: [
        .macOS(.v10_14)
    ],
    targets: [
        .target(
            name: "findme",
            dependencies: []),
    ]
)
