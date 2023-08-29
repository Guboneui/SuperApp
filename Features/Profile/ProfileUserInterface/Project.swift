//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 구본의 on 2023/08/29.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
  name: "ProfileUserInterface",
  targets: [
    Target(
      name: "ProfileUserInterface",
      platform: .iOS,
      product: .framework,
      bundleId: "com.boni.ProfileUserInterface",
      sources: ["Sources/**"],
      dependencies: []
    )
  ]
)
