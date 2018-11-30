//
//  ViewController.swift
//  UICollectionView-practice
//
//  Created by Lavatar on 2018/11/30.
//  Copyright © 2018 chiaWei. All rights reserved.
//

import UIKit

class CollectionViewNormal: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource  {
    

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
        myCollectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: Cell)
        
        //註冊 section 的 header & footer 以供 繼續使用
        myCollectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: Header)
        myCollectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: Footer)
        
        //設置 delegate
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
        //將 myCollectionView 加入畫面
        self.view.addSubview(myCollectionView)
        
        
    }

    //設定 每個item 有幾個 cell
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    //每個 cell 要顯示的內容
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //取得 cell
        //轉型 MyCollectionViewCell
        //註冊 cell 需更改為 MyCollectionViewCell.self
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cell, for: indexPath) as! MyCollectionViewCell
        
        //設置 cell 內容
        cell.imageView.image = UIImage(named: "0\(indexPath.item + 1).jpg")
        cell.titleLabel.text = "0\(indexPath.item + 1)"
        
        return cell
    }
    
    //有幾個 section
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    
    
    
    

}

