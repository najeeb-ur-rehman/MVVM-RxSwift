//
//  String.swift
//  MVVM+RxSwift
//
//  Created by Najeeb VenD on 10/10/2021.
//

import Foundation

extension String {
	
	func isValidEmail() -> Bool {
		let emailRegEx =
			"(?:[a-zA-Z0-9!#$%\\&'*+/=?\\^_'{|}~-]+(?:\\.[a-zA-Z0-9!#$%\\&'*+/=?\\^_'{|}" +
			"~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\" +
			"x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-" +
			"z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5" +
			"]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-" +
			"9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21" +
			"-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"
		
		let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
		return emailTest.evaluate(with: self)
	}
	
	func isValidNumber() -> Bool {
		let PHONE_REGEX = "^((\\+)|())[0-9]{9,10}$"
		let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
		let result =  phoneTest.evaluate(with: self)
		return result
	}
}
