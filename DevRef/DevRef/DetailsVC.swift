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
        imageView  = UIImageView(frame:CGRect(x: 80, y: 170, width: 250, height: 250));
    imageView.image = UIImage(named:"Абстрактная фабрика.png")
    self.view.addSubview(imageView)

    }
    
    func setupTableView() {
        view.addSubview(detailsLabel)
        detailsLabel.snp.makeConstraints { make in
            make.edges.equalTo(view).inset(UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20))
            
            
            
        }
        
        detailsLabel.numberOfLines = 0
        //метод отображает линии лайбле(по умолчанию стоит 1)/ставим 0 - делаем динамический текст
        detailsLabel.lineBreakMode = .byWordWrapping
        //переход слов на новую строку как именно
//        detailsLabel.text = "IOS DEVELOPER IOS DEVELOPER IOS DEVELOPER IOS DEVELOPER IOS DEVELOPER IOS DEVELOPER"
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
    }
    

}
