//
//  UITableViewCell+Extension.swift
//  ScreenTransition-practice
//
//  Created by 大西玲音 on 2021/05/13.
//

import UIKit

extension UITableViewCell {
    
    static var identifier: String { String(describing: self) }
    static var nib: UINib { UINib(nibName: String(describing: self), bundle: nil) }
    
}
