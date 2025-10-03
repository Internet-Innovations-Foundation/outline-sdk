// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "OutlineSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "OutlineSDK",
            targets: ["OutlineSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "OutlineSDK",
            url: "https://raw.githubusercontent.com/Internet-Innovations-Foundation/outline-sdk/refs/heads/main/mobileproxy.xcframework.zip",
            checksum: "1c9637f10f4f7534472d159af07b893ff4df5c2f7d1af4ca464868e667ea37a3"
        ),
    ]
) 