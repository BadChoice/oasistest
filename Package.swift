// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Oasis",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .executable(
            name: "Oasis",
            targets: ["Oasis"]),
    ],
    dependencies: [
        .package(url: "https://github.com/migueldeicaza/SwiftGodot", revision: "1359586f2332d500d30661158e062a0e9f97751c"),
        .package(url: "https://github.com/migueldeicaza/SwiftGodotKit", revision: "7cc075bf2ef51546c28d4bbc27156cbf627d08a8")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        .executableTarget(
            name: "Oasis",
            dependencies: ["SwiftGodot", "SwiftGodotKit"],
            resources: [
                .copy("Project"),
            ]
        ),
        .testTarget(
            name: "OasisTests",
            dependencies: ["Oasis"]),
    ]
)
