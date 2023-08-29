//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 구본의 on 2023/08/29.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
  name: "App",
  targets: [
    Target(
      name: "App",
      platform: .iOS,
      product: .app,
      bundleId: "com.boni.app",
      sources: ["Sources/**"],
      dependencies: [
        .project(target: "DataImpl", path: "../Data"),
        .project(target: "Data", path: "../Data")
      ]
    )
  ]
)
