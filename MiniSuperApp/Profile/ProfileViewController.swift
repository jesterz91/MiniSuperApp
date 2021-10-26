//
//  ProfileViewController.swift
//  MiniSuperApp
//
//  Created by lee on 2021/10/26.
//

import UIKit

final class ProfileViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        title = "프로필"
        tabBarItem = UITabBarItem(
            title: title,
            image: .person,
            selectedImage: .personFill
        )
        view.backgroundColor = .systemBlue
    }
}
