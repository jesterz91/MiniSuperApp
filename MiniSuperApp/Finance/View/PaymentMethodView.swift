//
//  PaymentMethodView.swift
//  MiniSuperApp
//
//  Created by lee on 2021/10/27.
//

import UIKit

final class PaymentMethodView: UIStackView {
    
    private let bankLabel: UILabel = {
        let view = UILabel()
        view.textColor = .white
        view.setContentHuggingPriority(.required, for: .horizontal)
        view.font = .systemFont(ofSize: 16, weight: .semibold)
        return view
    }()

    private let numberLabel: UILabel = {
        let view = UILabel()
        view.textColor = .white
        view.textAlignment = .right
        view.font = .systemFont(ofSize: 16, weight: .semibold)
        return view
    }()

    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: 50)
    }

    init(title: String, number: String) {
        super.init(frame: .zero)
        setupViews()
        update(title: title, number: number)
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {
        spacing = 8
        alignment = .center
        backgroundColor = .systemPink
        layoutMargins = .init(top: 0, left: 8, bottom: 0, right: 8)
        isLayoutMarginsRelativeArrangement = true
        roundCorners(8)
        addArrangedSubviews(bankLabel, numberLabel)
    }

    private func update(title: String, number: String) {
        bankLabel.text = title
        numberLabel.text = number
    }
}

#if DEBUG
import SwiftUI

struct PaymentMethodViewPreviews: PreviewProvider {

    static var previews: some View {
        let view = PaymentMethodView(title: "카카오", number: "0123")
        return ViewRepresentable(target: view)
            .previewLayout(.fixed(width: 300, height: 50))
    }
}
#endif
