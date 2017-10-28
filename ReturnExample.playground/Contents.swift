import Foundation

//randaaaaaaaam!!!

extension Array {
    
    
    func randomElement() -> Element {
        return self[Int(arc4random() % UInt32(self.count))]
    }
}

let naam = ["harry", "bert", "henk", "sebastiaan"]
let voorwerp = ["stoep", "dinosaurus", "klokken", "lampen"]
let watJeKanDoen = ["inspeckteur", "zitter", "liefhebber", "visser"]

func voledigeberoep() -> String {
    return naam.randomElement() + " de " + voorwerp.randomElement() + " " + watJeKanDoen.randomElement()
}

for _ in 0...10 {
    print(voledigeberoep())
}


