// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NoMAD-ADAuth",
    products: [
        .library(name: "NoMAD-ADAuth", targets: ["NoMAD-ADAuth"]),
    ],
    targets: [
        .target(
            name: "NoMAD-ADAuth",
            dependencies: [
                .target(name: "NoMADPRIVATE")
            ],
            path: "NoMAD-ADAuth",
            exclude: ["ObjC", "FRAMEWORK.md", "Info.plist"]
        ),
        .target(
            name: "NoMADPRIVATE",
            path: "NoMAD-ADAuth/ObjC"
        ),
    ]
)
