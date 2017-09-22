//
//  HomePageView.swift
//  mySwift
//
//  Created by wyb on 2017/9/22.
//  Copyright © 2017年 中天易观. All rights reserved.
//

import UIKit

class HomePageView: UIView {

    var titles:[TopicTitle]?{
        
        didSet{
            
        }
    }
    var childVCs:[TopicViewController]?{
        
        didSet{
            
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.green
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
