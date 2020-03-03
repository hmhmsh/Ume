# Ume
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/hmhmsh/Ume)

# Usage
Ume requires enum that conforms to String.
## Keys
```swift
enum UserDefaultsKeys: String {
  case username
}
```
Ume supports UserDefaults method.
```swift
UserDefaults.ume.set("hmhmsh", forKey: UserDefaultsKeys.username)

let userName = UserDefaults.ume.string(forKey: UserDefaultsKeys.username)
```

# Install
## Carthage
For Installing with Carthage, add it to your Cartfile.
```
github "hmhmsh/Ume"
```
