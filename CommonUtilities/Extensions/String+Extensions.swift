//
//  String+Extensions.swift
//  CommonUtilities
//
//  Created by João Vitor Duarte Mariucio on 21/07/21.
//

import Foundation

public extension String {
    
    var localizable: String {
        NSLocalizedString(self, comment: "")
    }
}
