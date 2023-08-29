//
//  FeedUseCaseImpl.swift
//  UseCases
//
//  Created by 구본의 on 2023/08/30.
//  Copyright © 2023 com.boni. All rights reserved.
//

import Foundation
import UseCases
import Repositories
import Entity

public final class FeedUseCaseImpl: FeedUseCase {
  
  private let repository: FeedRepository
  
  public init(repository: FeedRepository) {
    self.repository = repository
  }
  
  public func mappingFeedData() -> Result<Feed, Error>{
    return repository.fetchFeedList()
  }
}
