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
        
          
    
    let labelFrame = CGRect(x:150 , y:30, width:50, height:50)

    detailsLabel.frame = labelFrame
        
        
        detailsLabel.numberOfLines = 0
        //метод отображает линии лайбле(по умолчанию стоит 1)/ставим 0 - делаем динамический текст
        detailsLabel.lineBreakMode = .byWordWrapping
        //переход слов на новую строку как именно
        detailsLabel.text = "IOS DEVELOPER IOS DEVELOPER IOS DEVELOPER IOS DEVELOPER IOS DEVELOPER IOS DEVELOPER"
        detailsLabel.adjustsFontSizeToFitWidth = true
        //если больше текста чем вмешается в лайбл то уменьшается шрифт для вмешения текста
        detailsLabel.sizeToFit()
        //показывает столько слов сколько есть в лайбле
        detailsLabel.font = UIFont.boldSystemFont(ofSize: 14)
        //настройка размера шрифта
        detailsLabel.textColor = UIColor.purple
        //цвет
//        detailsLabel.shadowColor = UIColor.red
//        //окантовка текста
//        detailsLabel.shadowOffset = CGSize(width: 0, height: 0)
//        //отступ тени
        detailsLabel.center = self.view.center
        //настройка лейбла по центру
        view.addSubview(detailsLabel)
    }
    

}
