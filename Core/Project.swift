//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 구본의 on 2023/08/29.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.invertedDualTargetProject(
    name: "Core",
    platform: .iOS,
    iOSTargetVersion: "15.0"
)
