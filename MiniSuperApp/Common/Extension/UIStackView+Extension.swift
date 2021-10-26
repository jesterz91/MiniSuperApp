//
//  UIStackView+Extension.swift
//  MiniSuperApp
//
//  Created by lee on 2021/10/27.
//

import UIKit

extension UIStackView {

    func addArrangedSubviews(_ views: UIView...) {
        views.forEach(addArrangedSubview)
    }
}
