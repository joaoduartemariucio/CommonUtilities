//
//  UserDefaultsUtil.swift
//  CommonUtilities
//
//  Created by João Vitor Duarte Mariucio on 22/07/21.
//

import Foundation

public protocol UserDefaultsUtil {
    
    var defaults: UserDefaults { get }
    var key: String { get }
    
    func get<T>() -> T?
    func set<T>(_ data: T)
    func remove()
}

public extension UserDefaultsUtil {
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

