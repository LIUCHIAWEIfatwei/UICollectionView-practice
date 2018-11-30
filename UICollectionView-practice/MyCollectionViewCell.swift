//
//  MyCollectionViewCell.swift
//  UICollectionView-practice
//
//  Created by Lavatar on 2018/11/30.
//  Copyright © 2018 chiaWei. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    //基本屬性
    var imageView : UIImageView!
    var titleLabel : UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //取得螢幕寬度
        let width = Double(UIScreen.main.bounds.size.width)
        
        //建立 UIImageView
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: width/3 - 10.0, height: width/3 - 10.0))
        
        self.addSubview(imageView)
        
        //建立 UILabel
        titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: width/3 - 10.0, height: 40))
        
        //UILabel 文字對齊 方法
        titleLabel.textAlignment = .center
        
        //UILabel 文字顏色
        titleLabel.textColor = UIColor.orange
        
        //將 titleLabel 加入畫面
        self.addSubview(titleLabel)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
