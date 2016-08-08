//
//  UICollectionView+Ext.swift
//  TacoPOP
//
//  Created by Joe Meli on 8/8/16.
//  Copyright © 2016 Joe Meli. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    func register<T: UICollectionView where T: ReusableView, T: NibLoadableView>(_: T.Type){
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
        
        
    }
    func dequeueResuableCell<T: UICollectionViewCell where T:ReusableView>(forIndexPath indexPath: NSIndexPath)-> T{
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as? T else {
            fatalError("Could Not dequeue Cell with identifier\(T.reuseIdentifier)")
        }
        return cell
    }

}

extension UICollectionView: ReusableView{}


