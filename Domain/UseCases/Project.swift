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
  name: "UseCases",
  platform: .iOS,
  iOSTargetVersion: "15.0",
  interfaceDependencies: [
    .Data.Repositories.Interface,
    .Domain.Entity.Implement
  ],
  implementDependencies: [
    .Data.Repositories.Implement
  ]
)
