// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MSGraphClientModels",
    products: [
        .library(
            name: "MSGraphClientModels",
            targets: [
                "MSGraphClientModels_SPM"
            ]
        ),
    ],

    // rename the main target to avoid the incomplete MSGraphClientModels.h
    // header being picked automatically as an umbrella header
    targets: [
        .target(
            name: "MSGraphClientModels_SPM",
            path: ".",
            sources: [
                "BaseModels",
                "GeneratedModels"
            ],
            cSettings: [
                .headerSearchPath("BaseModels"), 
                .headerSearchPath("GeneratedModels")
            ]
        )
    ]
)
