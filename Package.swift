// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "TPNMediationPangleAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TPNMediationPangleAdapter",
            targets: ["TPNMediationPangleAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/topon-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/bytedance/AdsGlobalPackage.git", exact: "8.4.0-release.8")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkPangleAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkPangleAdapter/8040008.2.10/AnyThinkPangleAdapter-8040008.2.10.zip",
            checksum: "f32b7f0abeade23f54d927ef9d5b69aabf07ba9ed0bd0b6c4d82ef69e6c80ac0"
        ),
        .target(
            name: "TPNMediationPangleAdapterTarget",
            dependencies: [
                "AnyThinkPangleAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "AdsGlobalPackage", package: "AdsGlobalPackage")
            ],
            path: "Sources/TPNMediationPangleAdapterTarget"
        )
    ]
)