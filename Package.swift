// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxSpriteKit",
    platforms: [.iOS(.v12), .macOS(.v10_14), .tvOS(.v12), .watchOS(.v4)],
    products: [
        .library(
            name: "RxSpriteKit",
            targets: ["RxSpriteKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "5.0"),
    ],
    targets: [
        .target(
            name: "RxSpriteKit",
            dependencies: ["RxSwift"]),
        .testTarget(
            name: "RxSpriteKitTests",
            dependencies: ["RxSpriteKit"]),
    ]
)
