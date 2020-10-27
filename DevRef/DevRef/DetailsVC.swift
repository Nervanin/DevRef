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
    
    let descriptionPattern = UILabel()
    
    let detailsLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupTableView2()
        self.background()
    }

    func background() {
        
        var imageView : UIImageView
        
        imageView  = UIImageView()
        imageView.snp.makeConstraints { (make) in
            make.left.equalTo(view.snp.left).offset(100)
            make.centerY.centerX.equalTo(self.view).inset(UIEdgeInsets(top: -445, left: 0, bottom: 0, right: 0))
            make.width.height.equalTo(200)
    
            imageView.image = UIImage(named:"Абстрактная фабрика.png")
            
            self.view.addSubview(imageView)
        }
    }
    func setupTableView() {
        view.addSubview(detailsLabel)
        detailsLabel.snp.makeConstraints{make in
            make.centerY.centerX.equalToSuperview().inset(UIEdgeInsets(top: -685, left: 100, bottom: 0, right: 100))
        }
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
    
    func setupTableView2(){
        view.addSubview(descriptionPattern)
                descriptionPattern.snp.makeConstraints { make in
                    
                    
                    make.size.equalTo(descriptionPattern)
                    make.top.equalTo(330)
                    make.left.equalTo(10)
                    make.right.equalTo(-10)

                }
        
        descriptionPattern.numberOfLines = 0
    //метод отображает линии лайбле(по умолчанию стоит 1)/ставим 0 - делаем динамический текст
        descriptionPattern.lineBreakMode = .byWordWrapping
    //переход слов на новую строку как именно
        descriptionPattern.text = "IOS DEVELOPER IOS "
        descriptionPattern.adjustsFontSizeToFitWidth = true
    //если больше текста чем вмешается в лайбл то уменьшается шрифт для вмешения текста
        descriptionPattern.sizeToFit()
    //показывает столько слов сколько есть в лайбле
        descriptionPattern.font = UIFont.boldSystemFont(ofSize: 14)
    //настройка размера шрифта
        descriptionPattern.textColor = UIColor.black
    //цвет
        descriptionPattern.center = self.view.center
    //настройка лейбла по центру
        
    }
        
}
    

