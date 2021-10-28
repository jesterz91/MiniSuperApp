//
//  HomeViewController.swift
//  MiniSuperApp
//
//  Created by lee on 2021/10/26.
//

import UIKit

import RxSwift
import SnapKit

final class HomeViewController: UIViewController {

    private let disposeBag: DisposeBag = DisposeBag()

    private let widgetStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.alignment = .top
        view.spacing = 20
        return view
    }()

    private let taxiWidget = HomeWidget(image: .car, title: "슈퍼택시")

    private let cartWidget = HomeWidget(image: .cart, title: "슈퍼마트")

    init() {
        super.init(nibName: nil, bundle: nil)
        setupViews()
        bind()
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
        widgetStackView.addArrangedSubviews(taxiWidget, cartWidget)
        widgetStackView.snp.makeConstraints {
            $0.top.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(20)
        }
    }

    private func bind() {
        taxiWidget.didTapWidget
            .subscribe(onNext: {
                print("슈퍼 택시")
            })
            .disposed(by: disposeBag)

        cartWidget.didTapWidget
            .subscribe(onNext: {
                print("슈퍼 마트")
            })
            .disposed(by: disposeBag)
    }
}
