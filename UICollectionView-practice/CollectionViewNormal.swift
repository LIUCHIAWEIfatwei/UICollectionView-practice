//
//  ViewController.swift
//  UICollectionView-practice
//
//  Created by Lavatar on 2018/11/30.
//  Copyright © 2018 chiaWei. All rights reserved.
//

import UIKit

class CollectionViewNormal: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       //基本設定
        let fullScreenSize = UIScreen.main.bounds.size
        
        
       //建立 UICollectionViewFlowLayout
        let layout = UICollectionViewFlowLayout()
        //設置 section 距離 上左下右
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        
        //設置每一行 距離
        layout.minimumLineSpacing = 5
        
        //設置每個 cell 尺寸
        layout.itemSize = CGSize(width: (fullScreenSize.width ) / 3 - 10.0, height: (fullScreenSize.height) / 3 - 10.0)
        
        //設置 header & footer 尺寸
        layout.headerReferenceSize = CGSize(width: fullScreenSize.width, height: 40)
        
        layout.footerReferenceSize = CGSize(width: fullScreenSize.width, height: 40)
        
        
        
        
    }


}

