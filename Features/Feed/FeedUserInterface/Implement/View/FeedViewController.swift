//
//  FeedViewController.swift
//  FeedUserInterface
//
//  Created by 구본의 on 2023/08/30.
//  Copyright © 2023 com.boni. All rights reserved.
//

import UIKit
import ResourceKit

public final class FeedViewController: UIViewController {
  
  let imageView: UIImageView = {
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.image = .ImageAsset.testImage
    return imageView
  }()
  
  let originLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "ABCDEFGHIJK"
    label.font = .systemFont(ofSize: 20, weight: .regular)
    label.textAlignment = .center
    return label
  }()
  
  let fontLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "ABCDEFGHIJK"
    label.font = .FontAsset.regular.font(size: 20)
    label.textAlignment = .center
    return label
  }()
  
  public override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white

    setupViews()
  }
  
  private func setupViews() {

    view.addSubview(imageView)
    view.addSubview(originLabel)
    view.addSubview(fontLabel)
    
    NSLayoutConstraint.activate([
      imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      imageView.heightAnchor.constraint(equalToConstant: 100),
      imageView.widthAnchor.constraint(equalToConstant: 100),
      
      originLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8),
      originLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      originLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      
      fontLabel.topAnchor.constraint(equalTo: originLabel.bottomAnchor, constant: 8),
      fontLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      fontLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    ])
  }
}
