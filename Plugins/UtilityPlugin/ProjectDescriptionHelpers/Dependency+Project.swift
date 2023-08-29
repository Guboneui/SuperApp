import Foundation
import ProjectDescription

extension TargetDependency {
  public struct Feature {
    public struct Home {
      public struct UserInterface {}
    }
    
    public struct Feed {
      public struct Data {}
      public struct Domain {}
      public struct UserInterface {}
    }
    
    public struct Profile {
      public struct Data {}
      public struct Domain {}
      public struct UserInterface {}
    }
    
    public struct Shop {
      public struct Data {}
      public struct Domain {}
      public struct UserInterface {}
    }
    
    public struct MainDependency {}
  }
  
  public struct Core {}
  public struct ResourceKit {}
  public struct ThirdParty {}
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
  
  static let Interface = project(name: "Core", isInterface: true)
  static let Implement = project(name: "Core", isInterface: false)
}

public extension TargetDependency.ResourceKit {
  static let folderName = "ResourceKit"
  static func project(name: String) -> TargetDependency {
    return .project(
      target: "\(name)",
      path: .relativeToRoot("\(folderName)")
    )
  }
  
  static let Implement = project(name: "ResourceKit")
}

// MARK: - Features/Home
public extension TargetDependency.Feature.Home {
  static let folderName = "Home"
  static func project(name: String, isInterface: Bool) -> TargetDependency {
    let postfix: String = isInterface ? "" : "Impl"
    return .project(
      target: "\(folderName)\(name)\(postfix)",
      path: .relativeToRoot("Features/\(folderName)/\(folderName)\(name)")
    )
  }
}

public extension TargetDependency.Feature.Home.UserInterface {
  static let Interface = TargetDependency.Feature.Home.project(name: "UserInterface", isInterface: true)
  static let Implement = TargetDependency.Feature.Home.project(name: "UserInterface", isInterface: false)
}

// MARK: - Features/Feed
public extension TargetDependency.Feature.Feed {
  static let folderName = "Feed"
  static func project(name: String, isInterface: Bool) -> TargetDependency {
    let postfix: String = isInterface ? "" : "Impl"
    return .project(target: "\(folderName)\(name)\(postfix)",
                    path: .relativeToRoot("Features/\(folderName)/\(folderName)\(name)"))
  }
}

public extension TargetDependency.Feature.Feed.UserInterface {
  static let Interface = TargetDependency.Feature.Feed.project(name: "UserInterface", isInterface: true)
  static let Implement = TargetDependency.Feature.Feed.project(name: "UserInterface", isInterface: false)
}

public extension TargetDependency.Feature.Feed.Domain {
  static let Interface = TargetDependency.Feature.Feed.project(name: "Domain", isInterface: true)
  static let Implement = TargetDependency.Feature.Feed.project(name: "Domain", isInterface: false)
}

public extension TargetDependency.Feature.Feed.Data {
  static let Interface = TargetDependency.Feature.Feed.project(name: "Data", isInterface: true)
  static let Implement = TargetDependency.Feature.Feed.project(name: "Data", isInterface: false)
}

// MARK: - Features/Shop
public extension TargetDependency.Feature.Shop {
  static let folderName = "Shop"
  static func project(name: String, isInterface: Bool) -> TargetDependency {
    let postfix: String = isInterface ? "" : "Impl"
    return .project(target: "\(folderName)\(name)\(postfix)",
                    path: .relativeToRoot("Features/\(folderName)/\(folderName)\(name)"))
  }
}

public extension TargetDependency.Feature.Shop.UserInterface {
  static let Interface = TargetDependency.Feature.Shop.project(name: "UserInterface", isInterface: true)
  static let Implement = TargetDependency.Feature.Shop.project(name: "UserInterface", isInterface: false)
}

public extension TargetDependency.Feature.Shop.Domain {
  static let Interface = TargetDependency.Feature.Shop.project(name: "Domain", isInterface: true)
  static let Implement = TargetDependency.Feature.Shop.project(name: "Domain", isInterface: false)
}

public extension TargetDependency.Feature.Shop.Data {
  static let Interface = TargetDependency.Feature.Shop.project(name: "Data", isInterface: true)
  static let Implement = TargetDependency.Feature.Shop.project(name: "Data", isInterface: false)
}


// MARK: - Features/Profile
public extension TargetDependency.Feature.Profile {
  static let folderName = "Profile"
  static func project(name: String, isInterface: Bool) -> TargetDependency {
    let postfix: String = isInterface ? "" : "Impl"
    return .project(target: "\(folderName)\(name)\(postfix)",
                    path: .relativeToRoot("Features/\(folderName)/\(folderName)\(name)"))
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

public extension TargetDependency.ThirdParty {
  static let main = [
    RxSwift
  ]
  
  static let RxSwift = TargetDependency.external(name: "RxSwift")
  static let RxCocoa = TargetDependency.external(name: "RxCocoa")
  static let RxGesture = TargetDependency.external(name: "RxGesture")
  static let SnapKit = TargetDependency.external(name: "SnapKit")
}
