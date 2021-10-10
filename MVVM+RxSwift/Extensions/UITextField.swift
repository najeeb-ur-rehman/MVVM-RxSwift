//
//  UITextField.swift
//  MVVM+RxSwift
//
//  Created by Najeeb VenD on 10/10/2021.
//

import UIKit

extension UITextField {
	
	func updateForValidData(_ valid: Bool) {
		let borderColor: UIColor = valid ? .lightText : .red
		self.setBorderColor(borderColor)
	}
}
