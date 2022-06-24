// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Kinetic",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_12)
    ],
    products: [
        .library(
            name: "Kinetic",
            targets: ["Kinetic"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ajamaica/Solana.swift", revision: "f487b25"),
//        .package(name: "Solana.swift", path: "../../Solana.swift"),
        .package(name: "OpenAPIClient", path: "../OpenAPIClient"),
    ],
    targets: [
        .target(
            name: "Kinetic",
            dependencies: [
                .product(name: "Solana", package: "Solana.swift"),
                .product(name: "OpenAPIClient", package: "OpenAPIClient")
            ]),
        .testTarget(
            name: "KineticTests",
            dependencies: ["Kinetic"]),
    ]
)
