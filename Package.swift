//
//  Package.swift
//  NoMAD-ADAuth
//
//  Created by Josh Wisenbaker on 5/4/23.
//  Copyright © 2023 Orchard & Grove Inc. All rights reserved.
//

// swift-tools-version:5.7
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
