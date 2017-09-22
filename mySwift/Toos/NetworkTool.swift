//
//  NetworkTool.swift
//  mySwift
//
//  Created by wyb on 2017/9/22.
//  Copyright © 2017年 中天易观. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class NetworkTool: NSObject {


    
    class func loadHomeTitlesData(fromViewController:String ,completionHandler:@escaping (_ topTitles:[TopicTitle] , _ homeTopicVCs:[TopicViewController])->()){
        
        let url =  BASE_URL + "article/category/get_subscribed/v1/?";
        let params = ["device_id": device_id,
                      "aid": 13,
                      "iid": IID] as [String : Any]
         Alamofire.request(url, parameters: params).responseJSON { (response) in
            //如果不是成功就直接return
            guard response.result.isSuccess else{
               return
            }
            if let value = response.result.value{
                
                //获取到json数据
                let json = JSON(value)
                //获取到字典 [String : JSON] 值是json
                let dataDic = json["data"].dictionary
                //data是一个数组，里头放的字典
                if let data = dataDic!["data"]!.arrayObject{
                    
                    var title = [TopicTitle]()
                    var homeTopicVCs = [TopicViewController]()
                    
                    // 添加推荐标题
                    let recommendDict = ["category": "", "name": "推荐"]
                    let recommendModel = TopicTitle(dict: recommendDict)
                    title.append(recommendModel)
                    // 添加控制器
                    let firstVC = TopicViewController()
                    firstVC.topicTitle = recommendModel
                    homeTopicVCs.append(firstVC)
                    
                    for dict in data{
                        let topicTitle = TopicTitle(dict: dict as! [String : Any])
                        title.append(topicTitle)
                        let homeTopicVC = TopicViewController()
                        homeTopicVC.topicTitle = topicTitle
                        homeTopicVCs.append(homeTopicVC)
                    }
                    
                    completionHandler(title,homeTopicVCs);
                
                }
            
                
            }
            
            
        }
        
        
    }
   
    
}
