//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 구본의 on 2023/08/29.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
  name: "FinanceUserInterface",
  targets: [
    Target(
      name: "FinanceUserInterface",
      platform: .iOS,
      product: .framework,
      bundleId: "com.boni.FinanceUserInterface",
      sources: ["Sources/**"],
      dependencies: [
      ]
    )
  ]
)
