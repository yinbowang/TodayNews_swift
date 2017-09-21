//
//  AdvertiseViewController.swift
//  mySwift
//
//  Created by wyb on 2017/9/21.
//  Copyright © 2017年 中天易观. All rights reserved.
//

import UIKit
import SnapKit

class AdvertiseViewController: UIViewController {

    private lazy var timeBtn:UIButton = {
        let btn = UIButton(type: .custom)
        btn.backgroundColor = UIColor.lightGray
        btn.setTitle("2s 跳过", for: .normal);
        btn.setTitleColor(UIColor.cyan, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        return btn
    }()
    
    private var countDownTimer:Timer!
    private var time = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        
        view.addSubview(timeBtn)
        timeBtn.snp.makeConstraints { (make) in
            make.size.equalTo(CGSize(width: 60, height: 26))
            make.right.equalTo(-20)
            make.top.equalTo(20)
        }
        
        countDownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeAction), userInfo: nil, repeats: true)
        
//        perform(#selector(gotoHome), with: nil, afterDelay: 2)
        
        
        weak var weakSelf = self;
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()) {
            
            weakSelf?.gotoHome()
            
        }

        
        
    }
    
    func gotoHome(){
        
        UIApplication.shared.keyWindow?.rootViewController = MyTabBarController()
        
    }
    
    func timeAction(){
    
        time -= 1
        timeBtn.setTitle("\(time)s 跳过", for: .normal)
        
    }

}
