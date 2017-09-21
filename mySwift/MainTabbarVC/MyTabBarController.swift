//
//  MyTabBarController.swift
//  mySwift
//
//  Created by wyb on 2017/9/21.
//  Copyright © 2017年 中天易观. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.barTintColor = UIColor.white
        
//        var attrDic = Dictionary<String, Any>()
        var attrDic = [String : Any]()
        attrDic[NSFontAttributeName] = UIFont.systemFont(ofSize: 12)
        attrDic[NSForegroundColorAttributeName] = UIColor.lightGray
        let item = UITabBarItem.appearance()
        item .setTitleTextAttributes(attrDic, for: .normal)
        
        
        var selectedAttrDic = Dictionary<String, Any>()
        selectedAttrDic[NSFontAttributeName] = attrDic[NSFontAttributeName]
        selectedAttrDic[NSForegroundColorAttributeName] = UIColor.red
        item.setTitleTextAttributes(selectedAttrDic, for: .selected)
        
       
        setupChildVc(vc: HomeViewController(), title: "首页", image: "home_tabbar_32x32_", selectImage: "home_tabbar_press_32x32_")
         setupChildVc(vc: VideoViewController(), title: "视频", image: "video_tabbar_32x32_", selectImage: "video_tabbar_press_32x32_")
         setupChildVc(vc: WeiTouTiaoViewController(), title: "微头条", image: "home_tabbar_32x32_", selectImage: "weitoutiao_tabbar_press_32x32_")
         setupChildVc(vc: MineViewController(), title: "未登录", image: "no_login_tabbar_32x32_", selectImage: "no_login_tabbar_press_32x32_")
        
        
    }

    private func setupChildVc(vc:UIViewController,title:String,image:String , selectImage:String){
        
        vc.navigationItem.title = title
        vc.tabBarItem.title = title
        vc.tabBarItem.image = UIImage(named: image)
        vc.tabBarItem.selectedImage = UIImage(named: selectImage)?.withRenderingMode(.alwaysOriginal)
        let myNav = MyNavigationController(rootViewController: vc)
        addChildViewController(myNav)
        
    }

}
