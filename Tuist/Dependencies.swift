//
//  Dependencies.swift
//  Config
//
//  Created by 구본의 on 2023/08/29.
//

import ProjectDescription

let spm = SwiftPackageManagerDependencies([
  .remote(url: "https://github.com/ReactiveX/RxSwift", requirement: .upToNextMajor(from: "6.5.0")),
  .remote(url: "https://github.com/RxSwiftCommunity/RxGesture", requirement: .upToNextMinor(from: "4.0.0")),
  .remote(url: "https://github.com/SnapKit/SnapKit", requirement: .upToNextMajor(from: "5.0.0")),
  .remote(url: "https://github.com/onevcat/Kingfisher", requirement: .upToNextMajor(from: "7.0"))
])

let dependencies = Dependencies(
  swiftPackageManager: spm,
  platforms: [.iOS]
)
