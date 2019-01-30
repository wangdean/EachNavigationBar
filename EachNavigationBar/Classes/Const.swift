// 
//  Const.swift
//  EachNavigationBar
//
//  Created by Pircate(gao497868860@gmail.com) on 2018/11/20
//  Copyright © 2018年 Pircate. All rights reserved.
//

import Foundation

struct Const {
    
    struct StatusBar {
        
        static var maxY: CGFloat {
            return UIApplication.shared.statusBarFrame.maxY
        }
    }
    
    struct NavigationBar {
        
        static let height: CGFloat = 44.0
        
        static let layoutPaddings: UIEdgeInsets = .init(top: 0, left: 8, bottom: 0, right: 8)
    }
}