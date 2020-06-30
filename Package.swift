// swift-tools-version:5.0
//
//  Package.swift
//  NoMAD-ADAuth
//
//  Created by Joel Rennich on 6/29/20.
//  Copyright © 2020 Orchard & Grove Inc. All rights reserved.
//

import PackageDescription

let package = Package(
  name: "NoMAD-ADAuth",
  platforms: [
    .macOS(.v10_12),
  ],
  products: [
    .library(
      name: "NoMAD_ADAuth",
      targets: ["NoMAD_ADAuth"]
    ),
  ],
  dependencies: [],
  targets: [
    .target(
      name: "NoMAD_ADAuth"
    )
  ]
)
