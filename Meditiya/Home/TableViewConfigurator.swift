//
//  TableViewConfigurator.swift
//  Meditiya
//
//  Created by Dhruv Govani on 11/06/21.
//

import SwiftUI

struct TableViewConfigurator: UIViewControllerRepresentable {
    
    var configure: (UITableView) -> Void = { _ in }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<TableViewConfigurator>) -> UIViewController {
        
        UIViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<TableViewConfigurator>) {
        
        let tableViews = uiViewController.navigationController?.topViewController?.view.subviews(ofType: UITableView.self) ?? [UITableView]()
        
        for tableView in tableViews {
            self.configure(tableView)
        }
    }
}

extension UIView {
    func subviews<T:UIView>(ofType WhatType:T.Type) -> [T] {
        var result = self.subviews.compactMap {$0 as? T}
        for sub in self.subviews {
            result.append(contentsOf: sub.subviews(ofType:WhatType))
        }
        return result
    }
}
