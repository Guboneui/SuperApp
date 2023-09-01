//
//  BaseLabel.swift
//  DesignSystem
//
//  Created by 구본의 on 2023/09/01.
//  Copyright © 2023 com.boni. All rights reserved.
//

import UIKit

public class BaseLabel: UILabel {
  
  public override init(frame: CGRect) {
    super.init(frame: frame)
    initialize()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  public func initialize() {
    // Override here
    translatesAutoresizingMaskIntoConstraints = false
  }
}
