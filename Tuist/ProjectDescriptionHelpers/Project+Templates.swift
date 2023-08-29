import ProjectDescription

extension Project {
  private static let organizationName = "com.boni"
  
  public static func app(
    name: String,
    platform: Platform,
    iOSTargetVersion: String,
    infoPlist: String,
    dependencies: [TargetDependency] = []
  ) -> Project {
    
    let targets = makeAppTargets(
      name: name,
      platform: platform,
      iOSTargetVersion: iOSTargetVersion,
      infoPlist: infoPlist,
      dependencies: dependencies
    )
    
    return Project(
      name: name,
      organizationName: organizationName,
      targets: targets
    )
  }
  
  public static func frameworkWithDemoApp(
    name: String,
    platform: Platform,
    iOSTargetVersion: String,
    infoPlist: [String: InfoPlist.Value] = [:],
    dependencies: [TargetDependency] = []
  ) -> Project {
    var targets = makeFrameworkTargets(
      name: name,
      platform: platform,
      iOSTargetVersion: iOSTargetVersion,
      dependencies: dependencies
    )
    
    let demoAppTargets = makeAppTargets(
      name: name + "DemoApp",
      platform: platform,
      iOSTargetVersion: iOSTargetVersion,
      infoPlist: infoPlist,
      dependencies: [.target(name: name)]
    )
    
    targets.append(contentsOf: demoAppTargets)
    
    return Project(
      name: name,
      organizationName: organizationName,
      targets: targets
    )
  }
  
  public static func framework(
    name: String,
    platform: Platform,
    iOSTargetVersion: String,
    dependencies: [TargetDependency] = []
  ) -> Project {
    let targets = makeFrameworkTargets(
      name: name,
      platform: platform,
      iOSTargetVersion: iOSTargetVersion,
      dependencies: dependencies
    )
    
    return Project(
      name: name,
      organizationName: organizationName,
      targets: targets
    )
  }
}

extension Project {
  
  static func makeFrameworkTargets(
    name: String,
    platform: Platform,
    iOSTargetVersion: String,
    dependencies: [TargetDependency] = []
  ) -> [Target] {
    let sources = Target(
      name: name, platform: platform, product: .framework, bundleId: "\(organizationName).\(name)",
      deploymentTarget: .iOS(targetVersion: iOSTargetVersion, devices: [.iphone]),
      infoPlist: .default,
      sources: ["Sources/**"],
      resources: ["Resources/**"],
      dependencies: dependencies
    )
    
    return [sources]
  }
  
  static func makeAppTargets(
    name: String,
    platform: Platform,
    iOSTargetVersion: String,
    infoPlist: [String: InfoPlist.Value] = [:],
    dependencies: [TargetDependency] = []
  ) -> [Target] {
    
    let mainTarget = Target(
      name: name,
      platform: platform,
      product: .app,
      bundleId: "\(organizationName).\(name)",
      deploymentTarget: .iOS(targetVersion: iOSTargetVersion, devices: .iphone),
      infoPlist: .extendingDefault(with: infoPlist),
      sources: ["Sources/**"],
      resources: ["Resources/**"],
      dependencies: dependencies
    )
    
    return [mainTarget]
  }
  
  static func makeAppTargets(
    name: String,
    platform: Platform,
    iOSTargetVersion: String,
    infoPlist: String,
    dependencies: [TargetDependency] = []
  ) -> [Target] {
    
    let mainTarget = Target(
      name: name,
      platform: platform,
      product: .app,
      bundleId: "\(organizationName).\(name)",
      deploymentTarget: .iOS(targetVersion: iOSTargetVersion, devices: .iphone),
      infoPlist: InfoPlist(stringLiteral: infoPlist),
      sources: ["Sources/**"],
      resources: ["Resources/**"],
      dependencies: dependencies
    )
    
    return [mainTarget]
  }
}
