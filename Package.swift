// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Mobileproxy",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "Mobileproxy", targets: ["mobileproxy"])
    ],
    targets: [
        .binaryTarget(
            name: "mobileproxy",
            url: "https://github.com/Internet-Innovations-Foundation/outline-sdk/releases/download/1.0.6/mobileproxy.xcframework.zip",
            checksum: "1c9637f10f4f7534472d159af07b893ff4df5c2f7d1af4ca464868e667ea37a3"
        )
    ]
)