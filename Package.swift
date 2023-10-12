// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.8.0-7"

let package = Package(
    name: "BNBHands",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBHands",
            targets: [
                "BNBHandsBNBHandsTarget",
                "BNBHandsBNBSdkCoreTarget",
                "BNBHandsBNBEffectPlayerTarget",
                "BNBHandsBNBScriptingTarget"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/PiotrBanuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/PiotrBanuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/PiotrBanuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBHands",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.8.0-58-g46079e7d74/BNBHands.zip",
            checksum: "723e6297ea1a302c5e71e9317aebca48ae8f71c7887d03c52d0a2a3d3b0bc36a"
        ),
        .target(
            name: "BNBHandsBNBSdkCoreTarget",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBHandsBNBEffectPlayerTarget",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBHandsBNBScriptingTarget",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
    ]
)
