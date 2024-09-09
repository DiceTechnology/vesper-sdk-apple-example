//
//  UIView+LayoutGuide.swift
//  vesper-sdk-apple-example
//
//  Created by Yaroslav Lvov on 09.08.2024.
//  Copyright © 2024 Endeavor Streaming. All rights reserved.
//

import UIKit

protocol LayoutGuideProvider {
    var leadingAnchor: NSLayoutXAxisAnchor { get }
    var trailingAnchor: NSLayoutXAxisAnchor { get }
    var leftAnchor: NSLayoutXAxisAnchor { get }
    var rightAnchor: NSLayoutXAxisAnchor { get }
    var topAnchor: NSLayoutYAxisAnchor { get }
    var bottomAnchor: NSLayoutYAxisAnchor { get }
    var widthAnchor: NSLayoutDimension { get }
    var heightAnchor: NSLayoutDimension { get }
    var centerXAnchor: NSLayoutXAxisAnchor { get }
    var centerYAnchor: NSLayoutYAxisAnchor { get }
}

extension UIView: LayoutGuideProvider { }
extension UILayoutGuide: LayoutGuideProvider { }

extension UIView {
    var safeAreaLayoutGuideAnyIOS: LayoutGuideProvider {
        if #available(iOS 11, *) {
            return safeAreaLayoutGuide
        } else {
            return self
        }
    }
    
    var safeAreaInsetsAnyIOS: UIEdgeInsets? {
        if #available(iOS 11, *) {
            return safeAreaInsets
        } else {
            return nil
        }
    }
}
