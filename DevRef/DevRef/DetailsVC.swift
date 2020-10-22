//
//  DetailsVC.swift
//  DevRef
//
//  Created by Alex on 04.10.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit
import SnapKit

class DetailsVC: UIViewController {
    
    let detailsLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        self.background()
    }
    
    
    func background() {
        
        var imageView : UIImageView
        
        
        imageView  = UIImageView()
        imageView.snp.makeConstraints { (make) in
            make.left.equalTo(view.snp.left).offset(100)
            make.centerY.centerX.equalTo(self.view).inset(UIEdgeInsets(top: -420, left: 0, bottom: 0, right: 0))
            make.width.height.equalTo(200)
    
            
            imageView.image = UIImage(named:"Абстрактная фабрика.png")
            
            
            self.view.addSubview(imageView)
            
            
            
//            (make) in
//                  make.left.equalTo(view.snp.left).offset(100)
//            make.centerY.centerX.equalTo(self.view)
//                  make.width.height.equalTo(200)
        }
        
        
        
        
        
//    var imageView : UIImageView
//        imageView  = UIImageView(frame:CGRect(x: 80, y: 170, width: 250, height: 250));
//    imageView.image = UIImage(named:"Абстрактная фабрика.png")
//    self.view.addSubview(imageView)

    }
    
    func setupTableView() {
        view.addSubview(detailsLabel)
        detailsLabel.snp.makeConstraints{make in
            make.centerY.centerX.equalToSuperview().inset(UIEdgeInsets(top: -685, left: 100, bottom: 0, right: 100))
        
        }
        
        
        
//        { (make) in
//           make.centerY.centerX.equalToSuperview()
//           make.height.width.equalTo(100)
//       }
//        detailsLabel.snp.makeConstraints { make in
//            make.edges.equalTo(view).inset(UIEdgeInsets(top: -700, left: 100, bottom: 0, right: 104))
//
//        }
        
        detailsLabel.numberOfLines = 0
        //метод отображает линии лайбле(по умолчанию стоит 1)/ставим 0 - делаем динамический текст
//        detailsLabel.lineBreakMode = .byWordWrapping
        //переход слов на новую строку как именно
//        detailsLabel.text = "IOS DEVELOPER IOS DEVELOPER IOS DEVELOPER IOS DEVELOPER IOS DEVELOPER IOS DEVELOPER"
        detailsLabel.adjustsFontSizeToFitWidth = false
        //если больше текста чем вмешается в лайбл то уменьшается шрифт для вмешения текста
        detailsLabel.sizeToFit()
        //показывает столько слов сколько есть в лайбле
        detailsLabel.font = UIFont.boldSystemFont(ofSize: 20)
        //настройка размера шрифта
        detailsLabel.textColor = UIColor.black
        //цвет
//        detailsLabel.shadowColor = UIColor.red
//        //окантовка текста
//        detailsLabel.shadowOffset = CGSize(width: 0, height: 0)
//        //отступ тени
        detailsLabel.center = self.view.center
        //настройка лейбла по центру
    }
    

}
