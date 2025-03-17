// swift-tools-version: 6.0

import PackageDescription
import CompilerPluginSupport

let package = Package(
    name: "KeyPathIterable",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_15),
        .tvOS(.v12),
        .watchOS(.v4)
    ],
    products: [
        .library(
            name: "KeyPathIterable",
            targets: ["KeyPathIterable"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-syntax.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "KeyPathIterable",
            dependencies: [
                "KeyPathIterableMacrosPlugin"
            ]
        ),
        .macro(
            name: "KeyPathIterableMacrosPlugin",
            dependencies: [
                .product(name: "SwiftSyntax", package: "swift-syntax"),
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax"),
                .product(name: "SwiftSyntaxBuilder", package: "swift-syntax"),
                .product(name: "SwiftParserDiagnostics", package: "swift-syntax"),
            ]
        ),
        .testTarget(
            name: "KeyPathIterableTests",
            dependencies: ["KeyPathIterable"]
        ),
    ],
    swiftLanguageModes: [.v6]
)
