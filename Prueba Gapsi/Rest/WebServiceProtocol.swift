//
//  WebServiceProtocol.swift
//  Prueba Gapsi
//
//  Created by Pirata Ram on 01/12/20.
//

import Foundation

protocol WebServiceProtocol {
    func searchItems(search: String, completion: @escaping (Any?) -> ())
}
