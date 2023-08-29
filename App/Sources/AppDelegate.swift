//
//  a.swift
//  ProjectDescriptionHelpers
//
//  Created by 구본의 on 2023/08/29.
//

import UIKit
import Data
import DataImpl

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
    let repository: AccountRepository = AccountRepositoryImpl()
    let rootVC = ViewController(repository: repository)
    
    window?.rootViewController = rootVC
    window?.makeKeyAndVisible()
  }
}
