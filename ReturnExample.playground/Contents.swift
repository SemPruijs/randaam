import Foundation

//randaaaaaaaam!!!

extension Array {
    
    func randomElement() -> Element {
        return self[Int(arc4random() % UInt32(self.count))]
    }
}

let names = ["harry", "bert", "henk", "sebastiaan", "papa","rutger", "mama", "lars", "steven", "jannes",  "iwan","milan","bertwim","amgela","jorgiam","hansje","pim","sandra","hennie","achmet","dirkjan","barbaba","jeroen","riejan","willem"]

let object = ["stoep", "dinosaurus", "klokken", "lampen","mieren","appelmoes", "poep", "bank", "goudvis","ramen","pizza","banannen","blopvis","pennen","bomen","schoenen"]

let watJouCanDoe = ["inspecteur", "zitter", "liefhebber", "visser", "schepper", "specilist", "schoonmaker","verkoper","wasser","bakker"]


func fullJob() -> String {
    return names.randomElement()  + " de " + object.randomElement() + " " + watJouCanDoe.randomElement()
}








    print(fullJob())


 
