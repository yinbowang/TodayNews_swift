//
//  UIColor+Extension.swift
//  mySwift
//
//  Created by wyb on 2017/9/21.
//  Copyright © 2017年 中天易观. All rights reserved.
//

import UIKit

extension UIColor{
    
    // 便利初始化方法
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat, alpha: CGFloat = 1.0) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: alpha)
    }
    
    
    /// 背景灰色
    class func globalBackgroundColor() -> UIColor {
        return UIColor(r: 245, g: 245, b: 245)
    }
    
    //类方法 
    class func globalRedColor() -> UIColor {
        return UIColor(r: 210, g: 63, b: 66)
    }
    
    
    
}
