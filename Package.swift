// swift-tools-version:5.53
import PackageDescription

let package = Package(
    name: "Mobileproxy",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "Mobileproxy", targets: ["mobileproxy"])
    ],
    targets: [
        .binaryTarget(
            name: "mobileproxy",
            url: "https://github.com/Internet-Innovations-Foundation/outline-sdk/releases/download/1.0.7/mobileproxy.xcframework.zip",
            checksum: "6df5a6eee1ddb53f28243ae10583779f9a2e233b83ff19116a5696a87784c6a3"
        )
    ]
) 