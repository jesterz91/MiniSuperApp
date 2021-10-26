//
//  ActionHeaderView.swift
//  MiniSuperApp
//
//  Created by lee on 2021/10/27.
//

import UIKit

final class ActionHeaderView: UIStackView {

    private let titleLabel: UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.textAlignment = .left
        view.font = .systemFont(ofSize: 20, weight: .bold)
        return view
    }()

    private let actionButton: UIButton = {
        let view = UIButton(type: .system)
        view.setContentHuggingPriority(.required, for: .horizontal)
        return view
    }()

    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: 50)
    }

    init(title: String, action: String) {
        super.init(frame: .zero)
        setupViews()
        update(title: title, action: action)
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {
        spacing = 8
        alignment = .center
        addArrangedSubviews(titleLabel, actionButton)
    }

    private func update(title: String, action: String) {
        titleLabel.text = title
        actionButton.setTitle(action, for: .normal)
    }
}

#if DEBUG
import SwiftUI

struct ActionHeaderViewPreviews: PreviewProvider {

    static var previews: some View {
        let view = ActionHeaderView(title: "카드 및 계좌", action: "전체보기")
        return ViewRepresentable(target: view)
            .previewLayout(.fixed(width: 300, height: 50))
    }
}
#endif
