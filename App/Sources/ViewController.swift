//
//  ViewController.swift
//  App
//
//  Created by 구본의 on 2023/08/29.
//

import UIKit
import Data

final class ViewController: UIViewController {
  
  private let repository: AccountRepository
  
  init(repository: AccountRepository) {
    self.repository = repository
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    repository.test()
  }
}
