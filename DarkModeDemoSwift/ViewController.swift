//
//  ViewController.swift
//  DarkModeDemoSwift
//
//  Created by Xueliang Chen on 2/1/20.
//  Copyright © 2020 ChienErrant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 在这里进行页面的搭建
        self.view.backgroundColor = APPColorScheme.colorBackground;
        
        let subView = UIView();
        subView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 200)
        subView.center = CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.size.height/2);
        subView.backgroundColor = APPColorScheme.colorForeground;
        self.view.addSubview(subView)
        
        let titleLabel = UILabel();
        titleLabel.text = "深色模式文字在这里";
        titleLabel.textColor = APPColorScheme.colorGrayHeavier;
        titleLabel.sizeToFit()
        titleLabel.center = CGPoint(x: subView.frame.size.width/2, y: subView.frame.size.height/2);
        subView.addSubview(titleLabel)
    }


}

