//
//  FinanceViewController.swift
//  MiniSuperApp
//
//  Created by lee on 2021/10/26.
//

import UIKit

final class FinanceViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        title = "슈퍼페이"
        tabBarItem = UITabBarItem(
            title: title,
            image: .creditcard,
            selectedImage: .creditcardFill
        )
        view.backgroundColor = .systemGreen
    }
}
