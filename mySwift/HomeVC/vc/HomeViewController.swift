//
//  HomeViewController.swift
//  mySwift
//
//  Created by wyb on 2017/9/21.
//  Copyright © 2017年 中天易观. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    //导航栏
    private lazy var homeNavigationBar:HomeNavigationBar = {
       let navbar = HomeNavigationBar()
        return navbar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.barTintColor = UIColor.globalRedColor()
        view.backgroundColor = UIColor.globalBackgroundColor()
//      设置状态栏颜色，白色
        navigationController?.navigationBar.barStyle = .black;
        navigationItem.titleView = homeNavigationBar
        
    }


}
