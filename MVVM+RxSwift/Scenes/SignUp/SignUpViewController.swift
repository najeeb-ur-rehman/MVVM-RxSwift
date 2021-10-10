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
	
	// MARK: ViewController Lifecycle Methods
	
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
		
		signupView.fullNameTextField.rx.controlEvent(.editingDidBegin).take(1)
			.subscribe { [weak self] _ in
				self?.viewModel.nameFieldShouldHighlight = true
			}.disposed(by: disposeBag)
		
		viewModel.isValidName
			.filter { [weak self] _  in
					self?.viewModel.nameFieldShouldHighlight ?? false }
			.bind { [weak self] valid in
				self?.signupView.fullNameTextField.updateForValidData(valid)
			}.disposed(by: disposeBag)
		
		signupView.emailTextField.rx.controlEvent(.editingDidBegin).take(1)
			.subscribe { [weak self] _ in
				self?.viewModel.emailFieldShouldHighlight = true
			}.disposed(by: disposeBag)
		
		viewModel.isValidEmail
			.filter { [weak self] _  in
					self?.viewModel.emailFieldShouldHighlight ?? false }
			.bind { [weak self] valid in
				self?.signupView.emailTextField.updateForValidData(valid)
			}.disposed(by: disposeBag)
		
		signupView.phoneNumberTextField.rx.controlEvent(.editingDidBegin).take(1)
			.subscribe { [weak self] _ in
				self?.viewModel.phoneFieldShouldHighlight = true
			}.disposed(by: disposeBag)
		
		viewModel.isValidPhone
			.filter { [weak self] _  in
					self?.viewModel.phoneFieldShouldHighlight ?? false }
			.bind { [weak self] valid in
				self?.signupView.phoneNumberTextField.updateForValidData(valid)
			}.disposed(by: disposeBag)

		viewModel.isValidData
			.bind(to: signupView.signUpButton.rx.isEnabled)
			.disposed(by: disposeBag)

	}
	
}
