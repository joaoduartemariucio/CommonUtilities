//
//  TranslateHelper.swift
//  iconnect_morador
//
//  Created by João Vitor Duarte Mariucio on 08/03/21.
//

import Foundation

public class TranslateHelper {
    
    public static func translate(_ key: String) -> String {
        return NSLocalizedString(key, comment: "")
    }
}
