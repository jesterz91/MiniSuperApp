//
//  RootTabBarController.swift
//  MiniSuperApp
//
//  Created by lee on 2021/10/26.
//

import UIKit

final class RootTabBarController: UITabBarController {

    private let items: [UIViewController] = [
        HomeViewController(),
        FinanceViewController(),
        ProfileViewController()
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.isTranslucent = false
        tabBar.tintColor = .black
        tabBar.backgroundColor = .white
        setViewControllers(items.map(UINavigationController.init), animated: false)
    }
}

#if DEBUG
import SwiftUI

struct RootTabBarControllerPreview: PreviewProvider {

    static var previews: some View {
        return ViewControllerRepresentable(target: RootTabBarController())
            .previewDevice(.iPhone13mini)
            .previewDisplayName("RootTabBar")

    }
}
#endif
