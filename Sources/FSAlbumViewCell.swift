//
//  FSAlbumViewCell.swift
//  Fusuma
//
//  Created by Yuta Akizuki on 2015/11/14.
//  Copyright © 2015年 ytakzk. All rights reserved.
//

import UIKit
import Photos

final class FSAlbumViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var indexLabel: UILabel!
    
    var image: UIImage? {
        
        didSet {
            
            self.imageView.image = image            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selected = false
        indexLabel.layer.cornerRadius = 10
        indexLabel.layer.masksToBounds = true
    }
    
    override var selected : Bool {
        didSet {
//            self.layer.borderColor = selected ? fusumaTintColor.CGColor : UIColor.clearColor().CGColor
//            self.layer.borderWidth = selected ? 2 : 0
            self.indexLabel.backgroundColor = selected ? UIColor.hex("39cbf7", alpha: 1.0) : UIColor.hex("000000", alpha: 0.5)
            self.indexLabel.text = selected ? "1" : ""
        }
    }
}
