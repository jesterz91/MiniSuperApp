//
//  CardView.swift
//  MiniSuperApp
//
//  Created by lee on 2021/10/27.
//

import UIKit

final class CardView: UIView {

    private let titleLabel: UILabel = {
        let view = UILabel()
        view.textColor = .white
        view.font = .systemFont(ofSize: 20, weight: .semibold)
        return view
    }()

    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: 180)
    }

    init(title: String, radius: CGFloat = 16) {
        super.init(frame: .zero)
        layer.cornerCurve = .continuous
        layer.cornerRadius = radius
        setupViews()
        update(title: title)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .systemIndigo
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
    
    private func update(title: String) {
        titleLabel.text = title
    }
}

#if DEBUG
import SwiftUI

struct CardViewPreviews: PreviewProvider {

    static var previews: some View {
        let view = CardView(title: "10,000 원")
        return ViewRepresentable(target: view)
            .previewLayout(.fixed(width: 300, height: 100))
    }
}
#endif
