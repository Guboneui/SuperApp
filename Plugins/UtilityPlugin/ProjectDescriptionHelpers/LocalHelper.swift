import Foundation
import ProjectDescription

extension TargetDependency {
  public struct Feature {
    public struct Finance {
      public struct Data {}
      public struct Domain {}
      public struct UserInterface {}
    }
    
    public struct Profile {
      public struct Data {}
      public struct Domain {}
      public struct UserInterface {}
    }
    
    public struct Transport {
      public struct Data {}
      public struct Domain {}
      public struct UserInterface {}
    }
    
    public struct MainDependency {}
  }
  
  public struct Core {}
  public struct ResourceKit {}
}

public extension TargetDependency.Core {
  static let forderName = "Core"
  static func project(
    name: String,
    isInterface: Bool
  ) -> TargetDependency {
    let postfix: String = isInterface ? "" : "Impl"
    return .project(
      target: "\(name)\(postfix)",
      path: .relativeToRoot("\(forderName)")
    )
  }
  
  static let Core = project(name: "Core", isInterface: true)
  static let CoreImpl = project(name: "Core", isInterface: false)
}

public extension TargetDependency.ResourceKit {
  static let folderName = "ResourceKit"
  static func project(name: String) -> TargetDependency {
    return .project(
      target: "\(name)",
      path: .relativeToRoot("\(folderName)")
    )
  }
  
  static let ResourceKit = project(name: "ResourceKit")
}

// MARK: - Features/Finance
public extension TargetDependency.Feature.Finance {
  static let folderName = "Finance"
  static func project(name: String, isInterface: Bool) -> TargetDependency {
    let postfix: String = isInterface ? "" : "Impl"
    return .project(target: "\(folderName)\(name)\(postfix)",
                    path: .relativeToRoot("Features/\(folderName)/\(folderName)\(name)"))
  }
}

public extension TargetDependency.Feature.Finance.UserInterface {
  static let Interface = TargetDependency.Feature.Finance.project(name: "UserInterface", isInterface: true)
  static let Implement = TargetDependency.Feature.Finance.project(name: "UserInterface", isInterface: false)
}

public extension TargetDependency.Feature.Finance.Domain {
  static let Interface = TargetDependency.Feature.Finance.project(name: "Domain", isInterface: true)
  static let Implement = TargetDependency.Feature.Finance.project(name: "Domain", isInterface: false)
}

public extension TargetDependency.Feature.Finance.Data {
  static let Interface = TargetDependency.Feature.Finance.project(name: "Data", isInterface: true)
  static let Implement = TargetDependency.Feature.Finance.project(name: "Data", isInterface: false)
}

// MARK: - Features/Transport
public extension TargetDependency.Feature.Transport {
  static let folderName = "Transport"
  static func project(name: String, isInterface: Bool) -> TargetDependency {
    let postfix: String = isInterface ? "" : "Impl"
    return .project(target: "\(folderName)\(name)\(postfix)",
                    path: .relativeToRoot("Features/\(folderName)"))
  }
}

public extension TargetDependency.Feature.Transport.UserInterface {
  static let Interface = TargetDependency.Feature.Transport.project(name: "UserInterface", isInterface: true)
  static let Implement = TargetDependency.Feature.Transport.project(name: "UserInterface", isInterface: false)
}

public extension TargetDependency.Feature.Transport.Domain {
  static let Interface = TargetDependency.Feature.Transport.project(name: "Domain", isInterface: true)
  static let Implement = TargetDependency.Feature.Transport.project(name: "Domain", isInterface: false)
}

public extension TargetDependency.Feature.Transport.Data {
  static let Interface = TargetDependency.Feature.Transport.project(name: "Data", isInterface: true)
  static let Implement = TargetDependency.Feature.Transport.project(name: "Data", isInterface: false)
}


// MARK: - Features/Profile
public extension TargetDependency.Feature.Profile {
  static let folderName = "Profile"
  static func project(name: String, isInterface: Bool) -> TargetDependency {
    let postfix: String = isInterface ? "" : "Impl"
    return .project(target: "\(folderName)\(name)\(postfix)",
                    path: .relativeToRoot("Features/\(folderName)"))
  }
}

public extension TargetDependency.Feature.Profile.UserInterface {
  static let Interface = TargetDependency.Feature.Profile.project(name: "UserInterface", isInterface: true)
  static let Implement = TargetDependency.Feature.Profile.project(name: "UserInterface", isInterface: false)
}

public extension TargetDependency.Feature.Profile.Domain {
  static let Interface = TargetDependency.Feature.Profile.project(name: "Domain", isInterface: true)
  static let Implement = TargetDependency.Feature.Profile.project(name: "Domain", isInterface: false)
}

public extension TargetDependency.Feature.Profile.Data {
  static let Interface = TargetDependency.Feature.Profile.project(name: "Data", isInterface: true)
  static let Implement = TargetDependency.Feature.Profile.project(name: "Data", isInterface: false)
}
