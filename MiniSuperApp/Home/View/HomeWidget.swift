//
//  HomeWidget.swift
//  MiniSuperApp
//
//  Created by lee on 2021/10/27.
//

import UIKit

import RxCocoa
import RxSwift
import SnapKit

final class HomeWidget: UIStackView {

    private let imageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.tintColor = .black
        return view
    }()

    private let titleLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .center
        view.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        return view
    }()

    private var didTapWidgetPublisher: PublishSubject<Void> = PublishSubject()

    var didTapWidget: Observable<Void> {
        return didTapWidgetPublisher
    }

    init(image: UIImage, title: String) {
        super.init(frame: .zero)
        setupViews()
        update(image: image, title: title)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        axis = .vertical
        alignment = .center
        spacing = 5
        backgroundColor = .white
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)

        let tap = UITapGestureRecognizer(target: self, action: #selector(widgetDidTap))
        addGestureRecognizer(tap)

        addArrangedSubviews(imageView, titleLabel)

        imageView.snp.makeConstraints {
            $0.size.equalTo(50)
        }

        addShadowWithRoundedCorners(radius: 16)
    }

    private func update(image: UIImage, title: String) {
        imageView.image = image
        titleLabel.text = title
    }

    @objc private func widgetDidTap() {
        didTapWidgetPublisher.onNext(())
    }

    deinit {
        didTapWidgetPublisher.onCompleted()
    }
}

#if DEBUG
import SwiftUI

struct HomeWidgetPreviews: PreviewProvider {
    
    static var previews: some View {
        return ViewRepresentable(target: HomeWidget(image: .cart, title: "슈퍼마트"))
            .previewLayout(.fixed(width: 100, height: 100))
    }
}
#endif
