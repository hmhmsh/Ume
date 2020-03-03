//
//  Ume.swift
//  Ume
//
//  Created by shunkun on 2020/03/03.
//  Copyright © 2020 shukun. All rights reserved.
//

import Foundation

public struct Ume {
	private init() {}
}

// MARK: - get

extension Ume {
	/**
	-objectForKey: will search the receiver's search list for a default with the key 'defaultName' and return it. If another process has changed defaults in the search list, NSUserDefaults will automatically update to the latest values. If the key in question has been marked as ubiquitous via a Defaults Configuration File, the latest value may not be immediately available, and the registered value will be returned instead.
	*/
	public static func object<T: RawRepresentable>(forKey defaultName: T) -> Any? where T.RawValue == String {
		UserDefaults.standard.object(forKey: defaultName.rawValue)
	}
	
	/// -stringForKey: is equivalent to -objectForKey:, except that it will convert NSNumber values to their NSString representation. If a non-string non-number value is found, nil will be returned.
	public static func string<T: RawRepresentable>(forKey defaultName: T) -> String? where T.RawValue == String {
		UserDefaults.standard.string(forKey: defaultName.rawValue)
	}
	
	/// -arrayForKey: is equivalent to -objectForKey:, except that it will return nil if the value is not an NSArray.
	public static func array<T: RawRepresentable>(forKey defaultName: T) -> [Any]? where T.RawValue == String {
		UserDefaults.standard.array(forKey: defaultName.rawValue)
	}
	
	/// -dictionaryForKey: is equivalent to -objectForKey:, except that it will return nil if the value is not an NSDictionary.
	public static func dictionary<T: RawRepresentable>(forKey defaultName: T) -> [String: Any]? where T.RawValue == String {
		UserDefaults.standard.dictionary(forKey: defaultName.rawValue)
	}
	
	/// -dataForKey: is equivalent to -objectForKey:, except that it will return nil if the value is not an NSData.
	public static func data<T: RawRepresentable>(forKey defaultName: T) -> Data? where T.RawValue == String {
		UserDefaults.standard.data(forKey: defaultName.rawValue)
	}
	
	/// -stringForKey: is equivalent to -objectForKey:, except that it will return nil if the value is not an NSArray<NSString *>. Note that unlike -stringForKey:, NSNumbers are not converted to NSStrings.
	public static func stringArray<T: RawRepresentable>(forKey defaultName: T) -> [String]? where T.RawValue == String {
		UserDefaults.standard.stringArray(forKey: defaultName.rawValue)
	}
	
	/**
	-integerForKey: is equivalent to -objectForKey:, except that it converts the returned value to an NSInteger. If the value is an NSNumber, the result of -integerValue will be returned. If the value is an NSString, it will be converted to NSInteger if possible. If the value is a boolean, it will be converted to either 1 for YES or 0 for NO. If the value is absent or can't be converted to an integer, 0 will be returned.
	*/
	public static func integer<T: RawRepresentable>(forKey defaultName: T) -> Int where T.RawValue == String {
		UserDefaults.standard.integer(forKey: defaultName.rawValue)
	}
	
	/// -floatForKey: is similar to -integerForKey:, except that it returns a float, and boolean values will not be converted.
	public static func float<T: RawRepresentable>(forKey defaultName: T) -> Float where T.RawValue == String {
		UserDefaults.standard.float(forKey: defaultName.rawValue)
	}
	
	/// -doubleForKey: is similar to -integerForKey:, except that it returns a double, and boolean values will not be converted.
	public static func double<T: RawRepresentable>(forKey defaultName: T) -> Double where T.RawValue == String {
		UserDefaults.standard.double(forKey: defaultName.rawValue)
	}
	
	/**
	-boolForKey: is equivalent to -objectForKey:, except that it converts the returned value to a BOOL. If the value is an NSNumber, NO will be returned if the value is 0, YES otherwise. If the value is an NSString, values of "YES" or "1" will return YES, and values of "NO", "0", or any other string will return NO. If the value is absent or can't be converted to a BOOL, NO will be returned.
	*/
	public static func bool<T: RawRepresentable>(forKey defaultName: T) -> Bool where T.RawValue == String {
		UserDefaults.standard.bool(forKey: defaultName.rawValue)
	}
	
	/**
	-URLForKey: is equivalent to -objectForKey: except that it converts the returned value to an NSURL. If the value is an NSString path, then it will construct a file URL to that path. If the value is an archived URL from -setURL:forKey: it will be unarchived. If the value is absent or can't be converted to an NSURL, nil will be returned.
	*/
	@available(iOS 4.0, *)
	public static func url<T: RawRepresentable>(forKey defaultName: T) -> URL? where T.RawValue == String {
		UserDefaults.standard.url(forKey: defaultName.rawValue)
	}
}

// MARK: - set

extension Ume {
	/**
	-setObject:forKey: immediately stores a value (or removes the value if nil is passed as the value) for the provided key in the search list entry for the receiver's suite name in the current user and any host, then asynchronously stores the value persistently, where it is made available to other processes.
	*/
	public static func set<T: RawRepresentable>(_ value: Any?, forKey defaultName: T) where T.RawValue == String {
		UserDefaults.standard.set(value, forKey: defaultName.rawValue)
	}
	
	/// -setInteger:forKey: is equivalent to -setObject:forKey: except that the value is converted from an NSInteger to an NSNumber.
	public static func set<T: RawRepresentable>(_ value: Int, forKey defaultName: T) where T.RawValue == String {
		UserDefaults.standard.set(value, forKey: defaultName.rawValue)
	}
	
	/// -setFloat:forKey: is equivalent to -setObject:forKey: except that the value is converted from a float to an NSNumber.
	public static func set<T: RawRepresentable>(_ value: Float, forKey defaultName: T) where T.RawValue == String {
		UserDefaults.standard.set(value, forKey: defaultName.rawValue)
	}
	
	/// -setDouble:forKey: is equivalent to -setObject:forKey: except that the value is converted from a double to an NSNumber.
	public static func set<T: RawRepresentable>(_ value: Double, forKey defaultName: T) where T.RawValue == String {
		UserDefaults.standard.set(value, forKey: defaultName.rawValue)
	}
	
	/// -setBool:forKey: is equivalent to -setObject:forKey: except that the value is converted from a BOOL to an NSNumber.
	public static func set<T: RawRepresentable>(_ value: Bool, forKey defaultName: T) where T.RawValue == String {
		UserDefaults.standard.set(value, forKey: defaultName.rawValue)
	}
	
	/// -setURL:forKey is equivalent to -setObject:forKey: except that the value is archived to an NSData. Use -URLForKey: to retrieve values set this way.
	@available(iOS 4.0, *)
	public static func set<T: RawRepresentable>(_ url: URL?, forKey defaultName: T) where T.RawValue == String {
		UserDefaults.standard.set(url, forKey: defaultName.rawValue)
	}
}
