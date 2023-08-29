//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 구본의 on 2023/08/29.
//

import ProjectDescription
import ProjectDescriptionHelpers

let setting: Settings = .settings(
  base: [
    "DEVELOPMENT_TEAM": "VKGAQDGK5R"
  ],
  configurations: [],
  defaultSettings: .recommended
)


let project = Project(
  name: "App",
  targets: [
    Target(
      name: "App",
      platform: .iOS,
      product: .app,
      bundleId: "com.boni.app",
      infoPlist: .extendingDefault(with: [
        "UILaunchStoryboardName": "LaunchScreen"
      ]),
      sources: ["Sources/**"],
      dependencies: [
        .project(target: "DataImpl", path: "../Data"),
        .project(target: "Data", path: "../Data"),
        .project(target: "Finance", path: "../Features/Finance"),
        .project(target: "ResourceKit", path: "../ResourceKit")
      ],
      settings: setting
    )
  ]
)
