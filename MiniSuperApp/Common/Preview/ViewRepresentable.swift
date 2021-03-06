//
//  ViewRepresentable.swift
//  MiniSuperApp
//
//  Created by lee on 2021/10/26.
//


import SwiftUI

struct ViewRepresentable<V: UIView>: UIViewRepresentable {

    let target: V

    func updateUIView(_ uiView: UIView, context: Context) { /* no-op */ }

    func makeUIView(context: Context) -> UIView {
        return target
    }
}
