//
//  Feed.swift
//  Entity
//
//  Created by 구본의 on 2023/08/30.
//  Copyright © 2023 com.boni. All rights reserved.
//

import Foundation

public struct Feed: Equatable {
  public let feedName: String
  public let count: Int
  
  public init(
    feedName: String,
    count: Int
  ) {
    self.feedName = feedName
    self.count = count
  }
}
