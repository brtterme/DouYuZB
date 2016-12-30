//
//  HomeViewController.swift
//  DouYu
//
//  Created by dear on 16/12/30.
//  Copyright © 2016年 dear. All rights reserved.
//

import UIKit
private let titleViewH : CGFloat = 40
class HomeViewController: UIViewController {
     lazy var pageTitleView : PageTitleView = {
        let titleFrame = CGRect(x: 0, y: KStatusBraH+KNavigationBarH, width: KScreenW, height: titleViewH)
        let titles = ["推荐","游戏","娱乐","趣玩"]
        let titleView = PageTitleView.init(frame: titleFrame, titles: titles)
//        titleView.backgroundColor = UIColor.red
       return titleView
    }()
    
    //系统回调函数
    override func viewDidLoad() {
        super.viewDidLoad()
         setupUI()
        
    }


}
//设置UI界面
 extension HomeViewController {
    func setupUI(){
        automaticallyAdjustsScrollViewInsets = false
       setupNavigationBar()
        view.addSubview(pageTitleView)
        
    }
    private func setupNavigationBar(){
     
        navigationItem.leftBarButtonItem = UIBarButtonItem(ImageName: "logo")
        
        let size = CGSize(width: 40, height: 40)
       
        let historyItem = UIBarButtonItem.crearteItem(ImageName: "image_my_history", LightName: "Image_my_history_click", Size: size)
        
        let searchItem = UIBarButtonItem.crearteItem(ImageName: "btn_search", LightName: "btn_search_clicked", Size: size)
        
        let qrcodItem = UIBarButtonItem.crearteItem(ImageName: "Image_scan", LightName: "Image_scan_click", Size: size)
        
        navigationItem.rightBarButtonItems = [historyItem,searchItem,qrcodItem]
    }
}
