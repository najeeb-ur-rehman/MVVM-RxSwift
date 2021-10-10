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
	
	let nameMinimumLengthCount = 3
	
	var nameFieldShouldHighlight = false
	var emailFieldShouldHighlight = false
	var phoneFieldShouldHighlight = false
	
	let fullName = BehaviorRelay<String?>(value: "")
	let email = BehaviorRelay<String?>(value: "")
	let phoneNumber = BehaviorRelay<String?>(value: "")
	
	var isValidEmail: Observable<Bool> {
		email.map{ $0?.isValidEmail() ?? false }
	}
	
	var isValidName: Observable<Bool> {
		fullName.map{ $0?.count ?? 0 >= self.nameMinimumLengthCount }
	}
	
	var isValidPhone: Observable<Bool> {
		phoneNumber.map{ $0?.isValidNumber() ?? false }
	}
	
	var isValidData: Observable<Bool> {
		return Observable.combineLatest(isValidEmail, isValidName, isValidPhone) { $0 && $1 && $2 }
	}

}
