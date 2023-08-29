//
//  FeedViewController.swift
//  FeedUserInterface
//
//  Created by 구본의 on 2023/08/30.
//  Copyright © 2023 com.boni. All rights reserved.
//

import UIKit
import ResourceKit
import FeedUserInterface

public final class FeedViewController: UIViewController {
  
  private let viewModel: FeedViewModel
  
  public init(viewModel: FeedViewModel) {
    self.viewModel = viewModel
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
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
  
  let button: UIButton = {
    let button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("CLICK", for: .normal)
    button.backgroundColor = .yellow
    return button
  }()
  
  public override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white

    setupViews()
    setupGestures()
  }
  
  private func setupViews() {

    view.addSubview(imageView)
    view.addSubview(originLabel)
    view.addSubview(fontLabel)
    view.addSubview(button)
    
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
      fontLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      
      button.topAnchor.constraint(equalTo: fontLabel.bottomAnchor, constant: 8),
      button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
  }
  
  private func setupGestures() {
    button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside
    )
  }
  
  @objc private func didTapButton() {
    viewModel.printFeedData()
  }
}
