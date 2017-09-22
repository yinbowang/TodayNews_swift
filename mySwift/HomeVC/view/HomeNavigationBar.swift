//
//  HomeNavigationBar.swift
//  mySwift
//
//  Created by wyb on 2017/9/21.
//  Copyright © 2017年 中天易观. All rights reserved.
//

import UIKit
import SnapKit

class HomeNavigationBar: UIView {

    
    override init(frame: CGRect) {
       super.init(frame: frame)
        //这样设置，宽度不会到KScreenWidth，会有间隙http://blog.csdn.net/kid_devil/article/details/23225019
//        self.frame = CGRect(x: 0, y: 0, width: KScreenWidth, height: 44)
        addSubview(toutiaoImageView)
        toutiaoImageView.snp.makeConstraints { (make) in
            make.left.equalTo(15)
            make.centerY.equalTo(self)
            make.size.equalTo(CGSize(width: 72, height: 20))
        }
        
        addSubview(searchBar)
        searchBar.snp.makeConstraints { (make) in
            make.left.equalTo(toutiaoImageView.snp.right).offset(15)
            make.right.equalTo(-15)
            make.centerY.equalTo(self)
            make.height.equalTo(30)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var toutiaoImageView:UIImageView = {
       
        let imageView = UIImageView(image: UIImage(named: "title_72x20_"))
        return imageView
    }()
    
    private lazy var searchBar:HomeSearchBar = {
       let searchBar = HomeSearchBar()
        return searchBar
    }()
    
//  重写frame
    override var frame: CGRect{
        didSet{
            let newFrame = CGRect(x: 0, y: 0, width: KScreenWidth, height: 44)
            super.frame = newFrame
        }
    }

    
    
    

}
