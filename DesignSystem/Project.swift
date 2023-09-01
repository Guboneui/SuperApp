//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 구본의 on 2023/09/01.
//

import ProjectDescription
import ProjectDescriptionHelpers

let infoPlist: [String: InfoPlist.Value] = [
  "CFBundleDevelopmentRegion": "ko_KR"
]

let project = Project.framework(
  name: "DesignSystem",
  platform: .iOS,
  iOSTargetVersion: "15.0",
  infoPlist: infoPlist
)
