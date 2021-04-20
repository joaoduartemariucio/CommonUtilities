//
//  DecoderHelper.swift
//  iconnect_morador
//
//  Created by João Vitor Duarte Mariucio on 09/04/21.
//

import Foundation

public class DecoderHelper {

    public static let instance = DecoderHelper()

    public func decode<T: Codable>(data: Data)-> T? {
        let decoder = JSONDecoder()
        do {
            return try decoder.decode(T.self, from: data)
        } catch let error {
            print(error.localizedDescription)
            return nil
        }
    }
}
