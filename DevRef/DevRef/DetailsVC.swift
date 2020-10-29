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
    
    let imagePatternVC = UIImageView()
    let headerPatternVC = UILabel()
    let descriptionPatternVC = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customizationImage()
        headerCustomization()
        customizationDescriptionPatternVC()
    }
    
    
    func customizationImage() {
        self.view.addSubview(imagePatternVC)
        imagePatternVC.snp.makeConstraints { (make) in
            make.left.equalTo(view.snp.left).offset(100)
            make.centerY.centerX.equalTo(self.view).inset(UIEdgeInsets(top: -445, left: 0, bottom: 0, right: 0))
            make.width.height.equalTo(200)
        }
    }
    
    
    func headerCustomization() {
        view.addSubview(headerPatternVC)
        headerPatternVC.snp.makeConstraints{make in
            make.centerY.centerX.equalToSuperview().inset(UIEdgeInsets(top: -685, left: 100, bottom: 0, right: 100))
        }
        headerPatternVC.numberOfLines = 0
//      the method displays the lines of the label (the default is 1) / set to 0 - we make dynamic text
//        detailsLabel.text = "IOS DEVELOPER IOS DEVELOPER IOS DEVELOPER IOS DEVELOPER IOS DEVELOPER IOS DEVELOPER"
        headerPatternVC.adjustsFontSizeToFitWidth = true
//      if there is more text than fits into the label, then the font is reduced to fit the text
        headerPatternVC.sizeToFit()
//      shows as many words as there are in the label
        headerPatternVC.font = UIFont.boldSystemFont(ofSize: 20)
//      setting font size
        headerPatternVC.textColor = UIColor.black
//      Colour
        headerPatternVC.center = self.view.center
//      center label setting
    }
    
    
    func customizationDescriptionPatternVC(){
        view.addSubview(descriptionPatternVC)
                descriptionPatternVC.snp.makeConstraints { make in
                    make.size.equalTo(descriptionPatternVC)
                    make.top.equalTo(330)
                    make.left.equalTo(10)
                    make.right.equalTo(-10)
                }
        descriptionPatternVC.numberOfLines = 0
//      the method displays the lines of the label (the default is 1) / set to 0 - we make
        descriptionPatternVC.lineBreakMode = .byWordWrapping
//      transition of words to a new line exactly how
//      descriptionPattern.text = "IOS DEVELOPER IOS"
        descriptionPatternVC.adjustsFontSizeToFitWidth = true
//      if there is more text than fits into the label, then the font is reduced to fit the text
        descriptionPatternVC.sizeToFit()
//      shows as many words as there are in the label
        descriptionPatternVC.font = UIFont.boldSystemFont(ofSize: 14)
//      setting font size
        descriptionPatternVC.textColor = UIColor.black
//      Colour
        descriptionPatternVC.center = self.view.center
//      center label setting
    }
}
    

