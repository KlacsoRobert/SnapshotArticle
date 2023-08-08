//
//  View+Extensions.swift
//  SnapshotArticleTests
//
//  Created by Robert Klacso on 2023. 08. 03..
//

import SwiftUI

extension View {
    func toViewController() -> UIViewController {
        let viewController = UIHostingController(rootView: self)
        viewController.view.frame = UIScreen.main.bounds
        return viewController
    }
}
