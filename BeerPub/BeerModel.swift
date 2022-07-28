//
//  BeerModel.swift
//  BeerPub
//
//  Created by Дмитрий Соколовский on 23.02.22.
//

import Foundation

struct BeerModel {
    let name: String
    let price: Double
    let country: String
    var remainingVolume: Double
    
    func getDesription() -> String {
        """
        \(name), \(country), \(price) руб./л
        Остаток: \(remainingVolume) л
        """
        
    }
}
