//
//  Workspace.swift
//  ProjectDescriptionHelpers
//
//  Created by 구본의 on 2023/08/28.
//

import ProjectDescription

let appName = "SuperApp"

let workspace = Workspace(
  name: appName,
  projects: ["./**"]
)
