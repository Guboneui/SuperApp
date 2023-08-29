//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 구본의 on 2023/08/30.
//

import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.invertedDualTargetProject(
  name: "HomeUserInterface",
  platform: .iOS,
  iOSTargetVersion: "15.0",
  interfaceDependencies: [],
  implementDependencies: [
    .ResourceKit.Implement
  ]
)
