//
//  PrimaryButton.swift
//  SampleProject
//
//  Created by Jayven Nhan on 29/10/17.
//  Copyright © 2017 Jayven Nhan. All rights reserved.
//

import UIKit

class PrimaryButton: UIButton {
    
    let corderRadius: CGFloat = 6
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        layer.cornerRadius = corderRadius
    }

}

