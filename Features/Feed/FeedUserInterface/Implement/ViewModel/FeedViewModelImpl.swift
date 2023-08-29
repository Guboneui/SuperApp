//
//  FeedViewModelImpl.swift
//  FeedUserInterface
//
//  Created by 구본의 on 2023/08/30.
//  Copyright © 2023 com.boni. All rights reserved.
//

import Foundation
import FeedUserInterface
import UseCases

public final class FeedViewModelImpl: FeedViewModel {
  
  private let useCase: FeedUseCase
  
  public init(useCase: FeedUseCase) {
    self.useCase = useCase
  }
  
  public func printFeedData() {
    let t = useCase.mappingFeedData()
    switch t {
    case .success(let result):
      print(result)
    case .failure(let error):
      print(error)
    }
  }
}
