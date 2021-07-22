//
//  PreferencesUtil.swift
//  CommonUtilities
//
//  Created by João Vitor Duarte Mariucio on 22/07/21.
//

import Foundation

/// This protocol can be used by your app to optimize use of the process of save, getting and removing user preferences. All you have to create is a **Enum on String** that implements this protocol and create its use cases inside **Enum**.
///
/// Watch the example:
///
///     enum PreferenceExample: String, PreferencesUtil {
///         var key: String { return rawValue }
///
///         case nameUser
///     }
///
public protocol PreferencesUtil {
    /// Implementation of UserDefaults
    var defaults: UserDefaults { get }
    
    /// Your preferred user key
    var key: String { get }
    
    func get<T>() -> T?
    func set<T>(_ data: T)
    func remove()
}

public extension PreferencesUtil {
    var defaults: UserDefaults {
        return UserDefaults.standard
    }

    func get<T>() -> T? {
        return defaults.object(forKey: key) as? T
    }

    func set<T>(_ data: T) {
        defaults.set(data, forKey: key)
    }

    func remove() {
        defaults.set(nil, forKey: key)
    }
}
