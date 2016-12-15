//
//  CHControls.swift
//  PilotPlant
//
//  Created by Lingostar on 2015. 11. 21..
//  Copyright © 2015년 LingoStar. All rights reserved.
//

import UIKit

@IBDesignable open class RoundRectButton: UIButton {
    
    @IBInspectable open var corner:Double = 0.0 {
        didSet {
            self.layer.cornerRadius = CGFloat(corner)
        }
    }
    @IBInspectable open var border:Double = 0.0 {
        didSet {
            self.layer.borderWidth = CGFloat(border)
        }
    }
    
    override open var isHighlighted : Bool {
        didSet {
            if isHighlighted {
                self.backgroundColor = self.tintColor
                self.layer.borderColor = self.titleColor(for: .highlighted)?.cgColor
                
            } else {
                self.backgroundColor = UIColor.clear
                self.layer.borderColor = self.tintColor?.cgColor
            }
        }
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        //self.layer.cornerRadius = 8
        //self.layer.borderWidth = 2
        self.layer.borderColor = self.tintColor?.cgColor
        self.setTitleColor(UIColor.white, for: .highlighted)
    }
}


@IBDesignable
open class CircleMaskImageView : UIImageView {
    open override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.size.height / 2.0;
        self.layer.masksToBounds = true;
        self.layer.borderWidth = 0;
    }
}


