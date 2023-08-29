//
//  AppRootTabbarController.swift
//  App
//
//  Created by 구본의 on 2023/08/30.
//

import UIKit
import FeedUserInterfaceImpl
import HomeUserInterfaceImpl
import ProfileUserInterfaceImpl
import ShopUserInterfaceImpl
import FeedUserInterface
import UseCasesImpl
import Repositories
import Entity

// 임시

final class FeedRepositoryImpl: FeedRepository {
  func fetchFeedList() -> Result<Feed, Error> {
    return .success(Feed(feedName: "Test Feed", count: 10))
  }
  
  
}

final class AppRootTabbarController: UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tabBar.backgroundColor = .gray
    let feedVC = setupFeedVC()
    let homeVC = setupHomeVC()
    let shopVC = setupShopVC()
    let profileVC = setupProfileVC()
    
    viewControllers = [homeVC, feedVC, shopVC, profileVC]
  }
}

private extension AppRootTabbarController {
  func setupHomeVC() -> UIViewController {
    let homeVC = HomeViewController()
    homeVC.tabBarItem = UITabBarItem(
      title: "Home",
      image: UIImage(systemName: "house"),
      tag: 0
    )
    return homeVC
  }
  
  func setupFeedVC() -> UIViewController {
    let FeedRepository = FeedRepositoryImpl()
    let useCase = FeedUseCaseImpl(repository: FeedRepository)
    let viewModel = FeedViewModelImpl(useCase: useCase)
    let feedVC = FeedViewController(viewModel: viewModel)
    feedVC.tabBarItem = UITabBarItem(
      title: "Feed",
      image: UIImage(systemName: "a.square.fill"),
      tag: 1
    )
    return feedVC
  }

  func setupShopVC() -> UIViewController {
    let ShopVC = ShopViewController()
    ShopVC.tabBarItem = UITabBarItem(
      title: "Shop",
      image: UIImage(systemName: "cart"),
      tag: 3
    )
    return ShopVC
  }
  

  
  
  func setupProfileVC() -> UIViewController {
    let profileVC = ProfileViewController()
    profileVC.tabBarItem = UITabBarItem(
      title: "Profile",
      image: UIImage(systemName: "person"),
      tag: 3
    )
    return profileVC
  }
  
  
}
