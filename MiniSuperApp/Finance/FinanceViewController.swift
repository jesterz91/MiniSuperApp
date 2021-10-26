//
//  FinanceViewController.swift
//  MiniSuperApp
//
//  Created by lee on 2021/10/26.
//

import UIKit

final class FinanceViewController: UIViewController {

    private let scrollView: UIScrollView = UIScrollView()

    private let contentsView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 16
        view.layoutMargins = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        view.isLayoutMarginsRelativeArrangement = true
        return view
    }()

    private let balanceHeaderView: ActionHeaderView = ActionHeaderView(title: "슈퍼페이 잔액", action: "충전하기")

    private let balanceCardView: CardView = CardView(title: "10,000 원")

    private let accountHeaderView: ActionHeaderView = ActionHeaderView(title: "카드 및 계좌", action: "전체보기")

    private let paymentMethodViews: [PaymentMethodView] = [
        PaymentMethodView(title: "우리은행", number: "0123"),
        PaymentMethodView(title: "신한카드", number: "4567"),
        PaymentMethodView(title: "현대카드", number: "8901")
    ]

    private let addPaymentMethodButton: UIButton = {
        let view = UIButton()
        view.setImage(.plus.withRenderingMode(.alwaysTemplate), for: .normal)
        view.tintColor = .white
        view.backgroundColor = .lightGray
        view.roundCorners(8)
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
        title = "슈퍼페이"
        tabBarItem = UITabBarItem(
            title: title,
            image: .creditcard,
            selectedImage: .creditcardFill
        )
        view.backgroundColor = .white

        view.addSubview(scrollView)
        scrollView.snp.makeConstraints {
            $0.edges.equalTo(view.safeAreaLayoutGuide)
        }

        scrollView.addSubview(contentsView)
        contentsView.snp.makeConstraints {
            $0.edges.equalTo(scrollView.contentLayoutGuide)
            $0.width.equalTo(scrollView.frameLayoutGuide)
        }

        contentsView.addArrangedSubviews(balanceHeaderView, balanceCardView)

        contentsView.addArrangedSubview(accountHeaderView)
        paymentMethodViews.forEach(contentsView.addArrangedSubview)
        contentsView.addArrangedSubview(addPaymentMethodButton)

        addPaymentMethodButton.snp.makeConstraints {
            $0.height.equalTo(50)
        }
    }
}
