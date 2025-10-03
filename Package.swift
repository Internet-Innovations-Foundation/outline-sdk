// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "Outline MobileProxy",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Outline MobileProxy",
            targets: ["MobileProxyFramework"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MobileProxyFramework",
            url: "https://github.com/Internet-Innovations-Foundation/outline-sdk/mobileproxy.xcframework.zip",
            checksum: "1c9637f10f4f7534472d159af07b893ff4df5c2f7d1af4ca464868e667ea37a3"
        ),
    ]
)