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
            url: "https://github.com/Truvideo/truvideo-sdk-ios-media/releases/download/78.1.1-RC.63/TruvideoSdkMedia.xcframework.zip",
            checksum: "1fe6e3daaec212cc7e38f4729114773cc7653e7bd9ebcc566918356b14b23488"
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
