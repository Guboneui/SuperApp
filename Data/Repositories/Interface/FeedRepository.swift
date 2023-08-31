//
//  FeedRepository.swift
//  Repositories
//
//  Created by 구본의 on 2023/08/31.
//  Copyright © 2023 com.boni. All rights reserved.
//

import Foundation

public protocol FeedRepository {
  func fetchFeedList() -> Result<FeedDTO, Error>
}

public struct FeedDTO: Codable {
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
