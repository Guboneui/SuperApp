//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 구본의 on 2023/08/29.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
  name: "Transport",
  targets: [
    Target(
      name: "Transport",
      platform: .iOS,
      product: .framework,
      bundleId: "com.boni.Transport",
      sources: ["Sources/**"],
      dependencies: []
    )
  ]
)
