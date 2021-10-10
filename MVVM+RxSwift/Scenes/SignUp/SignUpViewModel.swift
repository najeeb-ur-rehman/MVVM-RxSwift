//
//  SignUpViewModel.swift
//  MVVM+RxSwift
//
//  Created by Najeeb VenD on 09/10/2021.
//

import Foundation
import RxSwift
import RxCocoa

class SignUpViewModel {
	
	let fullName = BehaviorRelay<String?>(value: "")
	let email = BehaviorRelay<String?>(value: "")
	let phoneNumber = BehaviorRelay<String?>(value: "")
	
}
