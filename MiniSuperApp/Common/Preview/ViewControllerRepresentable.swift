//
//  ViewControllerRepresentable.swift
//  MiniSuperApp
//
//  Created by lee on 2021/10/26.
//

import SwiftUI

struct ViewControllerRepresentable<V: UIViewController>: UIViewControllerRepresentable {

    let target: V

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { /* no-op */ }

    func makeUIViewController(context: Context) -> some UIViewController {
        return target
    }
}
