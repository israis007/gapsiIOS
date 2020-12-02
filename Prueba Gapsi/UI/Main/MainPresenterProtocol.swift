//
//  MainPresenterProtocol.swift
//  Prueba Gapsi
//
//  Created by Pirata Ram on 01/12/20.
//

import Foundation

protocol MainPresenterProtocol {
    func clickSearch(completion: @escaping (Bool) -> ())
    func getItemsCount() -> Int
    func getItem(item: Int) -> Item
}
