import Foundation

extension String {
    func uppercasedToShit() -> String {
        return self.uppercased() + "💩"
    }
}

extension Array {
    func randomItem() -> Element {
        return self[Int(arc4random() % UInt32(self.count))]
    }
}


"hahahahaha".uppercasedToShit()

// Onderwerp
let naam = ["harry", "bert", "henk", "sebastiaan"]
let randomIndex = Int(arc4random() % UInt32(naam.count))
print(naam[randomIndex])
print(naam.randomItem())

// Lijdend voorwerp
let voorwerp = ["stoep", "dinosaurus", "klokken", "lampen"]
let randomvoorwerp = Int(arc4random() % UInt32(voorwerp.count))
print(voorwerp[randomIndex])

// Beroep
let watJeKanDoen = ["inspeckteur", "zitter", "liefhebber", "visser"]
let randomwatJeKanDoen = Int(arc4random() % UInt32(watJeKanDoen.count))
print(watJeKanDoen[randomIndex])


let voledigeberoep = naam[randomIndex] + " de " + voorwerp[randomIndex] + " " + watJeKanDoen[randomIndex]

print(voledigeberoep)





