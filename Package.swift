// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CubiCapture",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CubiCaptureSDK",
            type: .dynamic,
            targets: ["CubiCapture", "CubiCaptureDeps"]),
    ],
    dependencies: [
        .package(url: "https://github.com/weichsel/ZIPFoundation.git", from: "0.9.19"),
        .package(url: "https://github.com/marmelroy/Zip.git", from: "2.1.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "CubiCaptureDeps",
            dependencies: ["ZIPFoundation", "Zip"]),
        .binaryTarget(name: "CubiCapture", path: "./CubiCapture.xcframework")
    ]
)
