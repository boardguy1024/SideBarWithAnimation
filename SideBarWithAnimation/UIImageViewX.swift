//
//  UIImageViewX.swift
//  SideBarWithAnimation
//
//  Created by park kyung suk on 2017/08/01.
//  Copyright © 2017年 park kyung suk. All rights reserved.
//

import UIKit


@IBDesignable class UIImageViewX: UIImageView {
    
    @IBInspectable var cornerRadious: CGFloat = 0.0 {
        didSet {
            if cornerRadious > -1 {
               self.layer.cornerRadius = cornerRadious
               self.layer.masksToBounds = true
            }
        }
    }
}
