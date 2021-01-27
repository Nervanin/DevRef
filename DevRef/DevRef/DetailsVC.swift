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
    
    let imageView = UIImageView()
    let headerLabel = UILabel()
    let descriptionLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews(){
        
        view.addSubview(headerLabel)
        headerLabel.snp.makeConstraints{ make in
        make.centerX.equalToSuperview()
        make.top.equalTo(100)
        make.left.equalTo(100)
        }
        view.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(127.5)
            make.left.equalTo(100)
        }
        view.addSubview(descriptionLabel)
        descriptionLabel.snp.makeConstraints {make in
            make.size.equalTo(descriptionLabel)
            make.top.equalTo(330)
            make.left.equalTo(10)
            make.right.equalTo(-10)
        }
        
        headerLabel.numberOfLines = 0
//      the method displays the lines of the label (the default is 1) / set to 0 - we make dynamic text
        headerLabel.adjustsFontSizeToFitWidth = true
//      if there is more text than fits into the label, then the font is reduced to fit the text
        headerLabel.sizeToFit()
//      shows as many words as there are in the label
        headerLabel.font = UIFont.boldSystemFont(ofSize: 20)
//      setting font size
        headerLabel.textColor = UIColor.black
//      Colour
        headerLabel.textAlignment = .center
    
        descriptionLabel.numberOfLines = 0
//      the method displays the lines of the label (the default is 1) / set to 0 - we make
        descriptionLabel.lineBreakMode = .byWordWrapping
//      transition of words to a new line exactly how
        descriptionLabel.adjustsFontSizeToFitWidth = true
//      if there is more text than fits into the label, then the font is reduced to fit the text
        descriptionLabel.sizeToFit()
//      shows as many words as there are in the label
        descriptionLabel.font = UIFont.boldSystemFont(ofSize: 14)
//      setting font size
        descriptionLabel.textColor = UIColor.black
//      Colour
        
    }
}
