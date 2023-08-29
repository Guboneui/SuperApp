//
//  FeedRepository.swift
//  Repositories
//
//  Created by 구본의 on 2023/08/30.
//  Copyright © 2023 com.boni. All rights reserved.
//

import Foundation
import Entity

public protocol FeedRepository {
  func fetchFeedList() -> Result<Feed, Error>
}
