//
//  EncoderHelper.swift
//  CommonUtilities
//
//  Created by João Vitor Duarte Mariucio on 09/04/21.
//

import Foundation

public class EncoderHelper {
    
    public static let instance = EncoderHelper()
    
    public func encode<T: Codable>(to value: T) -> Data? {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(value) {
            return encoded
        }
        return nil
    }
}
