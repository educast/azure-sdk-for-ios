// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "AzureStorageBlob",
  platforms: [
    .iOS(.v14),
  ],
  products: [
    .library(
      name: "AzureStorageBlob",
      targets: ["AzureStorageBlob"]
    ),
  ],
  dependencies: [
    .package(name: "AzureCore", url: "https://github.com/Azure/SwiftPM-AzureCore.git", from: "1.0.0-beta.12"),
  ],
  targets: [
    .target(
        name: "AzureStorageBlob",
        dependencies: [
          "AzureCore"
        ],
        resources: [.copy("Data/AzureStorage.xcdatamodeld")]
    ),
  ]
)
