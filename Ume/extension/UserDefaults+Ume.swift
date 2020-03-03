//
//  UserDefaults+Ume.swift
//  Ume
//
//  Created by shunkun on 2020/03/03.
//  Copyright © 2020 shukun. All rights reserved.
//

import Foundation

extension UserDefaults {
	open var ume: Ume {
		Ume(userDefaults: self)
	}
}
