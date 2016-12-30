//
//  File.swift
//  DouYu
//
//  Created by dear on 16/12/30.
//  Copyright © 2016年 dear. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    //1.类方法
    class func crearteItem(ImageName: String , LightName : String ,Size: CGSize) -> UIBarButtonItem {
        
        let btn = UIButton()
        btn.setImage(UIImage(named: ImageName), for: .normal)
        btn.setImage(UIImage(named: LightName), for: .highlighted)
        btn.frame = CGRect(origin: CGPoint.zero, size: Size)
        
        return UIBarButtonItem(customView: btn)
    }
    //2.便利构造函数 1. convenience开头 2。构造函数必须明确调用一个设计的构造函数(self调用)
    convenience init(ImageName: String , LightName : String = "",Size: CGSize = CGSize.zero) {
        
        let btn = UIButton()
                btn.setImage(UIImage(named: ImageName), for: .normal)
        if LightName != "" {
            btn.setImage(UIImage(named: LightName), for: .highlighted)
        }
        if Size == CGSize.zero{
           btn.sizeToFit()
        }
        else
        {
                btn.frame = CGRect(origin: CGPoint.zero, size: Size)
        }
        self.init(customView : btn)
    }
}
