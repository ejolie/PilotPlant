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



@IBDesignable open class CirclePhotoImageView : UIView {
    
    var imageView:UIImageView!
    var image:UIImage?
    
    open override func prepareForInterfaceBuilder() {
        let bundle = Bundle(for: type(of: self))
        self.image = UIImage(named: imageName, in: bundle, compatibleWith: self.traitCollection)
        self.imageView.image = self.image
    }
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        
        print("awake")
    }
    
    @IBInspectable open var imageName:String = "LS_Profile_120" {
        didSet {
            if imageView == nil {
                imageView = UIImageView(frame: CGRect.zero)
                self.addSubview(imageView)
            }
            if imageView != nil {
                let image = UIImage(named: imageName)
                self.imageView.image = image
            }
        }
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        
        if imageView == nil {
            imageView = UIImageView(frame: CGRect.zero)
            self.addSubview(imageView)
        }
        if imageView != nil {
            imageView.frame = self.frame
            imageView.layer.cornerRadius = imageView.frame.size.height / 2.0;
            imageView.layer.masksToBounds = true;
            imageView.layer.borderWidth = 0;
        }
        
    }
}
