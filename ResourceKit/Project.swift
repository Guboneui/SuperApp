//
//  Project.swift
//  SuperAppManifests
//
//  Created by 구본의 on 2023/08/29.
//

import ProjectDescription
import ProjectDescriptionHelpers

let infoPlist: [String: InfoPlist.Value] = [
  "CFBundleDevelopmentRegion": "ko_KR"
]

let project = Project.framework(
  name: "ResourceKit",
  platform: .iOS,
  iOSTargetVersion: "15.0",
  infoPlist: infoPlist
)
