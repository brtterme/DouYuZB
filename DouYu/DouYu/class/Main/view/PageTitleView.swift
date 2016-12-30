//
//  PageTitleView.swift
//  DouYu
//
//  Created by dear on 16/12/30.
//  Copyright © 2016年 dear. All rights reserved.
//

import UIKit
private let scrollLineh : CGFloat = 2
class PageTitleView: UIView {
//定义属性
    var titles :[String]
    lazy var titllelabels : [UILabel] = [UILabel]()
    //懒加载一个scrollView
    lazy var scrollView : UIScrollView = {
         let scrollView = UIScrollView()
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.bounces = false
        scrollView.scrollsToTop = false
        return scrollView
    }()
    //懒加载一个下划线
    lazy var scrollLine : UIView = {
        let scrollLine = UIView()
        scrollLine.backgroundColor = UIColor.orange
        return scrollLine
    }()
   // - 自定义构造函数
    init(frame: CGRect , titles : [String]) {
        self.titles = titles
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
//扩展extension  设置ui界面
extension PageTitleView{
   func setupUI() {
    addSubview(scrollView)
    scrollView.frame = bounds
    //添加相对应的label
    setupTitlelabels()
    
    setupBottomlineAndScrollLine()
    
    }
    private func setupTitlelabels(){
        let labelW : CGFloat = frame.width/CGFloat(titles.count)
        let labelH : CGFloat = frame.height - scrollLineh
          let labelY : CGFloat = 0
        for (index,title) in titles.enumerated() {
            let label = UILabel()
            label.text = title
            label.tag = index
            label.font = UIFont.systemFont(ofSize:16.0)
            label.textColor = UIColor.darkGray
            label.textAlignment = .center
          
            let labelX : CGFloat = labelW * CGFloat(index)
            label.frame = CGRect(x: labelX, y: labelY, width: labelW, height: labelH)
            scrollView.addSubview(label)
            titllelabels.append(label)
        }
    
    }
    private func  setupBottomlineAndScrollLine(){
        let bottomLine = UIView()
        bottomLine.backgroundColor = UIColor.lightGray
        let lineH : CGFloat = 0.5
        bottomLine.frame = CGRect(x: 0, y: frame.height - lineH, width: frame.width, height: lineH)
        addSubview(bottomLine)
        scrollView.addSubview(scrollLine)
        guard let firstlabel = titllelabels.first else {
            return
        }
        firstlabel.textColor = UIColor.orange
        scrollLine.frame = CGRect(x: firstlabel.frame.origin.x, y: frame.height - scrollLineh, width: firstlabel.frame.width, height: scrollLineh)
        
    
    }
}
