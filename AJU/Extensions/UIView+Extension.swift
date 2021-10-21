//
//  UIView+Extension.swift
//  AJU
//
//  Created by Anand Yadav on 20/10/21.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return self.cornerRadius }
        set { self.layer.cornerRadius = newValue }
    }
}


