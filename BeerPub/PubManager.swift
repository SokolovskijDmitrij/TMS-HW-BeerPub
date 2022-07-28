//
//  PubManager.swift
//  BeerPub
//
//  Created by Дмитрий Соколовский on 23.02.22.
//

import Foundation

class PubManager {
    
    var beers: [BeerModel] = [
        BeerModel(name: "IPA",
                  price: 110,
                  country: "Russia ",
                  remainingVolume: 450),
        BeerModel(name: "APA",
                  price: 120,
                  country: "USA",
                  remainingVolume: 60),
        BeerModel(name: "Blanch",
                  price: 112.50,
                  country: "Belgian",
                  remainingVolume: 110),
        BeerModel(name: "Rouge",
                  price: 150,
                  country: "Belgian",
                  remainingVolume: 95),
        ]
    private var money: Double = 0.0
    static let shared: PubManager = PubManager()
    private init(){}
    func sellBeer(onTap index: Int, volume: Double) -> Bool {
        guard index >= 0 && index < beers.count else { return false }
        guard beers[index].remainingVolume >= volume else { return false}
        
        money += beers[index].price * volume
        beers[index].remainingVolume -= volume
        return true
    }
    func checkMoney () -> Double { money }
    func startNewDay() {
        money = 0
    }
    func checkRemainingVolume(onTap index: Int) -> String {
        guard index >= 0 && index < beers.count else { return "Ошибка загрузки пива" }
        return beers[index].getDesription()
    }
}
