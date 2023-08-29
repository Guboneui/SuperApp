//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 구본의 on 2023/08/29.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
  name: "Profile",
  targets: [
    Target(
      name: "Profile",
      platform: .iOS,
      product: .app,
      bundleId: "com.boni.Profile",
      sources: ["Sources/**"],
      dependencies: []
    )
  ]
)
