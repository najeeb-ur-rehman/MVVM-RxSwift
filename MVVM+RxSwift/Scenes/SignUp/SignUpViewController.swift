//
//  SignUpViewController.swift
//  MVVM+RxSwift
//
//  Created by Najeeb VenD on 09/10/2021.
//

import UIKit
import RxSwift
import RxCocoa

class SignUpViewController: UIViewController {

	// MARK: Instance Properties
	
	var viewModel = SignUpViewModel()
	let disposeBag = DisposeBag()
	
	// MARK: Outlets
	
	@IBOutlet var signupView: SignUpView!
	
	// MARK: ViewConytroller Lifecycle Methods
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		setupBindings()
	}
	
}

// MARK: - Private Methods

private extension SignUpViewController {
	
	func setupBindings() {
		signupView.fullNameTextField.rx.text.bind(to: viewModel.fullName).disposed(by: disposeBag)
		signupView.emailTextField.rx.text.bind(to: viewModel.email).disposed(by: disposeBag)
		signupView.phoneNumberTextField.rx.text.bind(to: viewModel.phoneNumber).disposed(by: disposeBag)
	}
	
}
