//
//  a.swift
//  ProjectDescriptionHelpers
//
//  Created by 구본의 on 2023/08/29.
//

import UIKit
import HomeUserInterface
import HomeUserInterfaceImpl

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
  ) -> Bool {
    makeWindow()
    return true
  }
}

private extension AppDelegate {
  func makeWindow() {
    window = UIWindow(frame: UIScreen.main.bounds)
    let rootVC = AppRootTabbarController()
    
    window?.rootViewController = rootVC
    window?.makeKeyAndVisible()
  }
}
