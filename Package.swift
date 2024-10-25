// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "TruvideoSdkMedia",
    products: [
        .library(
            name: "TruvideoSdkMedia",
            targets: ["TruvideoSdkMediaTargets"]),
    ],
    dependencies: [
        .package(url: "https://github.com/aws-amplify/aws-sdk-ios-spm", exact: "2.33.4")
    ],
    targets: [
        .binaryTarget(
            name: "TruvideoSdkMedia",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-media/releases/download/76.1.1-BETA.35/TruvideoSdkMedia.xcframework.zip",
            checksum: "705df74b51f918ad9352deed10fc68d491d8e44e41f1c8789078b92efd5d4f88"
        ),
        .target(
            name: "TruvideoSdkMediaTargets",
            dependencies: [
                .target(name: "TruvideoSdkMedia"),
                .product(name: "AWSS3", package: "aws-sdk-ios-spm"),
                .product(name: "AWSCore", package: "aws-sdk-ios-spm"),
                .product(name: "AWSCognitoIdentityProvider", package: "aws-sdk-ios-spm"),
                .product(name: "AWSCognitoIdentityProviderASF", package: "aws-sdk-ios-spm")
            ],
            path: "Sources"
        )
    ]
)
