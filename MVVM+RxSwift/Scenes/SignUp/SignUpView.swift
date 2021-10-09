//
//  SignUpView.swift
//  MVVM+RxSwift
//
//  Created by Najeeb VenD on 09/10/2021.
//

import UIKit

class SignUpView: UIView {

	// MARK: Outlets
	
	@IBOutlet weak var fullNameTextField: UITextField!
	@IBOutlet weak var emailTextField: UITextField!
	@IBOutlet weak var phoneNumberTextField: UITextField!
	@IBOutlet weak var signUpButton: UIButton!
	
	override func awakeFromNib() {
		super.awakeFromNib()
		
	}
	
}

