//
//  DropShadow.swift
//  TacoPOP
//
//  Created by Joe Meli on 8/5/16.
//  Copyright © 2016 Joe Meli. All rights reserved.
//

import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView{
    func addDropShadow(){
        //implementation
        layer.shadowColor = UIColor.black().cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
}
