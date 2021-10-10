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
	
	// MARK: View Lifecycle Methods
	
	override func awakeFromNib() {
		super.awakeFromNib()
		
		setupViewsAppearance()
	}
	
}

// MARK: - Private Methods

private extension SignUpView {
	
	func setupViewsAppearance() {
		[fullNameTextField, emailTextField, phoneNumberTextField].forEach {
			$0?.setCornerRadius(10, andClipContent: true)
			$0?.updateForValidData(true)
			$0?.backgroundColor = Color.primaryLight
			$0?.textColor = Color.secondary
			$0?.font = Font.regular(16)
		}
		signUpButton.backgroundColor = Color.green
		signUpButton.titleLabel?.font = Font.medium(18)
		signUpButton.setTitleColor(Color.primary, for: .normal)
		signUpButton.setTitleColor(Color.primary?.withAlphaComponent(0.3), for: .disabled)
		signUpButton.setCornerRadius(25)
		signUpButton.isEnabled = false
	}
	
}
