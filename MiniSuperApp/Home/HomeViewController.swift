//
//  HomeViewController.swift
//  MiniSuperApp
//
//  Created by lee on 2021/10/26.
//

import UIKit

final class HomeViewController: UIViewController {

    private let widgetStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.alignment = .top
        view.spacing = 20
        return view
    }()

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
        view.backgroundColor = .lightGray

        view.addSubview(widgetStackView)

        widgetStackView.addArrangedSubviews(
            HomeWidget(image: .car, title: "슈퍼택시"),
            HomeWidget(image: .cart, title: "슈퍼마트")
        )
        widgetStackView.snp.makeConstraints {
            $0.top.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(20)
        }
    }
}
