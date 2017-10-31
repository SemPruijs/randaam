import Foundation

//randaaaaaaaam!!!

extension Array {
    
    func randomElement() -> Element {
        return self[Int(arc4random() % UInt32(self.count))]
    }
}

let name = ["harry", "bert", "henk", "sebastiaan", "papa", "mama", "lars", "steven"]
let voorwerp = ["stoep", "dinosaurus", "klokken", "lampen","mieren", "poep", "bank", "goudvis"]
let watJeKanDoen = ["inspeckteur", "zitter", "liefhebber", "visser", "schepper", "specilist", "schoonmaker"]

func fullJob() -> String {
    return name.randomElement()  + " de " + voorwerp.randomElement() + " " + watJeKanDoen.randomElement()
}








    print(fullJob())


 
