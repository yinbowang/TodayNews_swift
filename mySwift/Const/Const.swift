//
//  Const.swift
//  mySwift
//
//  Created by wyb on 2017/9/21.
//  Copyright © 2017年 中天易观. All rights reserved.
//

import Foundation
import UIKit

let KScreenWidth = UIScreen.main.bounds.size.width
let KScreenHeight = UIScreen.main.bounds.size.height

/// 服务器地址
let BASE_URL = "http://lf.snssdk.com/"

/// iid 未登录用户 id，只要安装了今日头条就会生成一个 iid
/// 可以在自己的手机上安装一个今日头条，然后通过 charles 抓取一下这个 iid，
/// 替换成自己的，再进行测试
let IID: String = "5034850950"
/// iid 和 device_id 好像是绑定到一起的，不对应的话获取不到数据
let device_id: String = "6096495334"

let app_name = "news_article"

let channel = "App%20Store"

let device_platform = "iphone"
