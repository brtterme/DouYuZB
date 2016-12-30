//
//  MainViewController.swift
//  DouYu
//
//  Created by dear on 16/12/30.
//  Copyright © 2016年 dear. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildVc(storyName: "Home")
        addChildVc(storyName: "Live")
        addChildVc(storyName: "column")
        addChildVc(storyName: "user")
        
       
    }
    private func addChildVc(storyName : String)
    {
    
        let childVc = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        addChildViewController(childVc)
    
    }

}
