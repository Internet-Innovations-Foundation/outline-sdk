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
            url: "https://github.com/Internet-Innovations-Foundation/outline-sdk/releases/download/1.0.8/mobileproxy.xcframework.zip",
            checksum: "414b71479d9aebc1adfd341e3083ffd4ffd4e95956a89055577cab0ae29fffc0"
        )
    ]
) 