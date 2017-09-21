//
//  HomeSearchBar.swift
//  mySwift
//
//  Created by wyb on 2017/9/21.
//  Copyright © 2017年 中天易观. All rights reserved.
//

import UIKit

class HomeSearchBar: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        placeholder = "搜你想搜的"
        backgroundColor = UIColor.white
        layer.cornerRadius = 5;
        layer.masksToBounds = true
        font = UIFont.systemFont(ofSize: 14)
        
        let searchIcon = UIImageView(image: UIImage(named: "searchicon_search_20x20_" ))
        searchIcon.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        searchIcon.contentMode = .center
        leftView = searchIcon
        leftViewMode = .always
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
