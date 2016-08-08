//
//  NibLoadableView.swift
//  TacoPOP
//
//  Created by Joe Meli on 8/8/16.
//  Copyright © 2016 Joe Meli. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}


extension NibLoadableView where Self: UIView{
    
    static var nibName: String {
        return String(self)
    }
}
