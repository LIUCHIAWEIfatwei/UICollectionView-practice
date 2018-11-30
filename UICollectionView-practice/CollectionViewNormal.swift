//
//  ViewController.swift
//  UICollectionView-practice
//
//  Created by Lavatar on 2018/11/30.
//  Copyright © 2018 chiaWei. All rights reserved.
//

import UIKit

class CollectionViewNormal: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    

    let Cell : String = "cell"
    let Header : String = "Header"
    let Footer : String = "Footer"
    
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
        
        //建立 UICollectionView
        let myCollectionView = UICollectionView(frame: CGRect(x: 0, y: 20, width: fullScreenSize.width, height: fullScreenSize.height - 20), collectionViewLayout: layout)
        
        //註冊 cell 以供繼續使用
        myCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: Cell)
        
        //註冊 section 的 header & footer 以供 繼續使用
        myCollectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: Header)
        myCollectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: Footer)
        
        //設置 delegate
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
        //加入畫面
        self.view.addSubview(myCollectionView)
        
        
    }


}

