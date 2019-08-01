// swift-tools-version:5.0
//
// Use command "swift package generate-xcodeproj --xcconfig-overrides ./Sources/ios.xcconfig" to generate for iOS
//
import PackageDescription

let package = Package(
    name: "JWT",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(name: "JWT", targets: ["JWT"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "JWA",
            dependencies: [],
            exclude: ["HMAC/HMACCryptoSwift.swift"]),
        .target(
            name: "JWT",
            dependencies: ["JWA"]),
        .testTarget(
            name: "JWATests",
            dependencies: ["JWA"]),
        .testTarget(
            name: "JWTTests",
            dependencies: ["JWT"])
    ]
)
