//
//  FeedRepositoryImpl.swift
//  Repositories
//
//  Created by 구본의 on 2023/08/31.
//  Copyright © 2023 com.boni. All rights reserved.
//

import Foundation
import Repositories

public final class FeedRepositoryImpl: FeedRepository {
  
  public init() {
    
  }
  
  public func fetchFeedList() -> Result<Repositories.FeedDTO, Error> {
    return .success(FeedDTO(feedName: "Test Feed", count: 10))
  }
}
