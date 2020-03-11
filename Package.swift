// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Math3d",
    products: [
      .library(
        name: "Math3d",
        targets: ["Math3d"]
      ),
      // A utility for generating some Math3d source files
      .executable(
        name: "Gen",
        targets: ["Gen"]
      )
    ],
    dependencies: [
    ],
    targets: [
      .target(
        name: "Gen",
        dependencies: []
      ),
      .target(
        name: "Math3d",
        dependencies: []
      ),
      .testTarget(
        name: "Math3dTests",
        dependencies: ["Math3d"]
      ),
    ]
)

