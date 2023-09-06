//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 구본의 on 2023/08/29.
//

import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let setting: Settings = .settings(
  base: [
    "DEVELOPMENT_TEAM": "VKGAQDGK5R"
  ],
  configurations: [],
  defaultSettings: .recommended
)

let moduleDependency: [TargetDependency] = [
  .Feature.Main
//  .Feature.Home.UserInterface.Interface,
//  .Feature.Home.UserInterface.Implement,
//
//  .Feature.Feed.UserInterface.Interface,
//  .Feature.Feed.UserInterface.Implement,
//
//  .Feature.Shop.UserInterface.Interface,
//  .Feature.Shop.UserInterface.Implement,
//
//  .Feature.Profile.UserInterface.Interface,
//  .Feature.Profile.UserInterface.Implement
]

let target =  Target(
  name: "App",
  platform: .iOS,
  product: .app,
  bundleId: "com.boni.app",
  infoPlist: .extendingDefault(with: [
    "CFBundleDevelopmentRegion": "ko_KR",
    "UILaunchStoryboardName": "LaunchScreen"
  ]),
  sources: ["Sources/**"],
  resources: ["Resources/**"],
  dependencies: moduleDependency + TargetDependency.ThirdParty.main,
  settings: setting
)

let project = Project(
  name: "App",
  targets: [target]
)
