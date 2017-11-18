//
//  MainViewController.swift
//  Five
//
//  Created by 章亚 on 2017/11/18.
//  Copyright © 2017年 Kong. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 适配IOS8，增加storyboard
        addChildVc(storyName: "Home")
        addChildVc(storyName: "Live")
        addChildVc(storyName: "Follow")
        addChildVc(storyName: "Profile")
        
    }
    
    private func addChildVc(storyName: String){
        //1,通过storyboard获取控制器
        let childVc = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        //2,将childVc作为子控制器
        addChildViewController(childVc)
    }

   
    

}
