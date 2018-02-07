//
//  JobGenerator.swift
//  randaam
//
//  Created by Sem Pruijs on 07-02-18.
//  Copyright © 2018 Sem Pruijs. All rights reserved.
//

import Foundation

//randaaaaaaaam!!!

extension Array {
    
    func randomElement() -> Element {
        return self[Int(arc4random() % UInt32(self.count))]
    }
}

struct PersonInfoGenerator {
    let names = ["harry", "bert", "henk", "sebastiaan", "papa","rutger", "mama", "lars", "Steven", "jannes",  "iwan","milan","bertwim","amgela","jorgiam","hansje","pim","sandra","hennie","achmet","dirkjan","barbaba","jeroen","riejan","willem","leo","meneer","bas","dennis","jan","kees"]
    
    let object = ["stoep", "dinosaurus", "klokken", "lampen","mieren","appelmoes", "poep", "bank", "goudvis","ramen","pizza","banannen","blopvis","pennen","bomen","schoenen","fietspompen","fietsen","deur","bezem","eekhoorn","muis","tafel","cavia","koek","luiaart","paarden"]
    
    
    let watJouCanDoe = ["inspecteur", "zitter", "liefhebber", "visser", "schepper", "specilist", "schoonmaker","verkoper","wasser","bakker","temmer","loper"]
    
    
    func generateJob() -> String {
        return names.randomElement()  + " de " + object.randomElement() + " " + watJouCanDoe.randomElement()
    }
    
    func generateSalary() -> Int {
        // TODO: Make random
        return Int(arc4random_uniform(1000) + 1)
    }
}


