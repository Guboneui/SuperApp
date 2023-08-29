//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 구본의 on 2023/08/29.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
  name: "Finance",
  targets: [
    Target(
      name: "Finance",
      platform: .iOS,
      product: .framework,
      bundleId: "com.boni.Finance",
      sources: ["Sources/**"],
      dependencies: []
    )
  ]
)
