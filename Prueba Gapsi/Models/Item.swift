//
//  Item.swift
//  Prueba Gapsi
//
//  Created by Pirata Ram on 01/12/20.
//

import Foundation

class Item {
    public var id = ""
    public var rating = 0.0
    public var price = 0.0
    public var imageProd = ""
    public var name = ""
        
    
    init(id: String, rating: Double, price: Double, imageProd: String, name: String){
        self.id = id
        self.rating = rating
        self.price = price
        self.imageProd = imageProd
        self.name = name
    }
}
