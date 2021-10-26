//
//  HomeViewController.swift
//  MiniSuperApp
//
//  Created by lee on 2021/10/26.
//

import UIKit

final class HomeViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {
        title = "홈"
        tabBarItem = UITabBarItem(
            title: title,
            image: .house,
            selectedImage: .houseFill
        )
        view.backgroundColor = .systemRed
    }
}
