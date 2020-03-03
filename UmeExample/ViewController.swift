//
//  ViewController.swift
//  UmeExample
//
//  Created by shunkun on 2020/03/03.
//  Copyright © 2020 shukun. All rights reserved.
//

import UIKit
import Ume

class ViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.

		self.setUsername()
		let userName = self.getUsername()
		print(userName ?? "No username")

		self.setCustomKey()
		let key = self.getCustomKey()
		print(key)
	}
}

// MARK: Username

extension ViewController {
	func setUsername() {
		UserDefaults.ume.set("shunkun", forKey: UserDefaultsKeys.username)
	}

	func getUsername() -> String? {
		return UserDefaults.ume.string(forKey: UserDefaultsKeys.username)
	}
}

// MARK: CustomKey

extension ViewController {
	func setCustomKey() {
		UserDefaults.ume.set(22, forKey: UserDefaultsKeys.customKey)
	}

	func getCustomKey() -> Int {
		return UserDefaults.ume.integer(forKey: UserDefaultsKeys.customKey)
	}
}
