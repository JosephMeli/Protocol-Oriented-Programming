//
//  ReuseableView.swift
//  TacoPOP
//
//  Created by Joe Meli on 8/8/16.
//  Copyright © 2016 Joe Meli. All rights reserved.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self : UIView{
    
    static var reuseIdentifier: String {
        return String(self)
    }
    
}
