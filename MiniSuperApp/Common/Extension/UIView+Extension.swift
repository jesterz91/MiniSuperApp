//
//  UIView+Extension.swift
//  MiniSuperApp
//
//  Created by lee on 2021/10/27.
//

import UIKit

extension UIView {

    func addShadowWithRoundedCorners(
        radius: CGFloat = 16,
        shadowColor: CGColor = UIColor.black.cgColor,
        opacity: Float = 0.1
    ) {
        layer.cornerCurve = .continuous
        layer.masksToBounds = false
        layer.shadowColor = shadowColor
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowOpacity = opacity
        layer.shadowRadius = 2.5
        layer.cornerRadius = radius
    }

    func roundCorners(_ radius: CGFloat = 16) {
        layer.cornerCurve = .continuous
        layer.cornerRadius = radius
        clipsToBounds = true
    }
}
