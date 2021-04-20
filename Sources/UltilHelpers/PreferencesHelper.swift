//
//  PreferencesHelper.swift
//  iconnect_morador
//
//  Created by João Vitor Duarte Mariucio on 09/04/21.
//

import Foundation
import Security

public class PreferencesHelper {
    
    public static let instance = PreferencesHelper()
    
    public func save(key: String, value: Any){
        let shared = UserDefaults.standard
        shared.setValue(value, forKey: key)
        shared.synchronize()
    }
    
    public func getBool(key: String) -> Bool {
        let shared = UserDefaults.standard
        return shared.bool(forKey: key)
    }
    
    public func getString(key: String) -> String {
        let shared = UserDefaults.standard
        return shared.string(forKey: key) ?? ""
    }
    
    public func saveCodable<T:Codable>(key: String, value: T){
        guard let encode = EncoderHelper.instance.encode(to: value) else { return }
        let shared = UserDefaults.standard
        shared.setValue(encode, forKey: key)
        shared.synchronize()
    }
    
    public func getCodable<T: Codable>(key: String)-> T? {
        let shared = UserDefaults.standard
        guard let data = shared.data(forKey: key) else { return nil }
        return DecoderHelper.instance.decode(data: data)
    }
    
    public func getInt64(key: String)-> Int64 {
        let shared = UserDefaults.standard
        let homeId = shared.integer(forKey: key)
        return Int64(homeId)
    }
    
    public func removeValue(key: String){
        let shared = UserDefaults.standard
        shared.removeObject(forKey: key)
    }
    
    public func clear(){
        if let bundleID = Bundle.main.bundleIdentifier {
            UserDefaults.standard.removePersistentDomain(forName: bundleID)
        }
    }
}
