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
    
    //homePageView主视图
    private lazy var pageView:HomePageView = {
       let pageView = HomePageView()
       return pageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.barTintColor = UIColor.globalRedColor()
        view.backgroundColor = UIColor.globalBackgroundColor()
//      设置状态栏颜色，白色
        navigationController?.navigationBar.barStyle = .black;
        navigationItem.titleView = homeNavigationBar
        
        //加载网络数据
        weak var weakThis = self
        NetworkTool.loadHomeTitlesData(fromViewController: String(describing: HomeViewController.self) ) { (topTitles, homeTopicVCs) in
            // 将所有子控制器添加到父控制器中
            for childVC in homeTopicVCs{
                weakThis?.addChildViewController(childVC)
            }
            //加载pageView
            weakThis?.loadpageView()
            weakThis?.pageView.titles = topTitles
            weakThis?.pageView.childVCs = weakThis?.childViewControllers as? [TopicViewController]
            
        }
        

        
    }

    func loadpageView(){
        
        view.addSubview(pageView)
        pageView.snp.makeConstraints { (make) in
            make.left.right.bottom.equalTo(0)
            make.top.equalTo(64);
        }
        
    }

}
