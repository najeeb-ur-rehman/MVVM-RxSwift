//
//  SignUpViewController.swift
//  MVVM+RxSwift
//
//  Created by Najeeb VenD on 09/10/2021.
//

import UIKit

class SignUpViewController: UIViewController {

	// MARK: Instance Properties
	
	var viewModel = SignUpViewModel()
	
	// MARK: Outlets
	
	@IBOutlet var signupView: SignUpView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}


	
}

