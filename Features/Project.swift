//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 구본의 on 2023/09/06.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.staticLibrary(
  name: "Features",
  platform: .iOS,
  iOSTargetVersion: "15.0",
  dependencies: []
)

