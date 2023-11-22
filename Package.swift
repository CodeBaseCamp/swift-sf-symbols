// swift-tools-version: 5.8

import PackageDescription

let package = Package(
  name: "swift-sf-symbols",
  products: [
    .library(name: "SFSymbols", targets: ["SFSymbols"]),
  ],
  dependencies: [],
  targets: [
    .target(name: "SFSymbols", dependencies: []),
  ]
)
