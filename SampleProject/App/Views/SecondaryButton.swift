//
//  SecondaryButton.swift
//  SampleProject
//
//  Created by Jayven Nhan on 29/10/17.
//  Copyright © 2017 Jayven Nhan. All rights reserved.
//

import UIKit

class SecondaryButton: PrimaryButton {

    let borderWidth: CGFloat = 1
    let borderColor: CGColor = UIColor.white.cgColor
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpBorder()
    }
    
    override func setupView() {
        backgroundColor = .clear
        setTitleColor(.white, for: .normal)
    }
    
    func setUpBorder() {
        layer.cornerRadius = corderRadius
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor
    }

}
