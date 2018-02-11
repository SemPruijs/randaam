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
    let names = ["harry", "bert", "henk", "sebastiaan", "papa","rutger", "mama", "lars", "Steven", "jannes",  "iwan","milan","bertwim","amgela","jorgiam","hansje","pim","sandra","hennie","achmet","dirkjan","barbaba","jeroen","riejan","willem","leo","meneer","bas","dennis","jan","kees","lies","sem","jan","cor","lucas","finn","daan","levi","milan","bram","luuk","emma","tess","sophie","julia","anna","mila","sara","luuk","jesse","mees","thomas","sam","thijs","adam","max","jullian","hugo","gijs","benjamin","tim","ruben","teun","olivier","sven","david","stijn","tom","isa","noa","jasmijn","esmee","sanne"]
    
    let object = ["stoep", "dinosaurus", "klokken", "lampen","mieren","appelmoes", "poep", "bank", "goudvis","ramen","pizza","banannen","blopvis","pennen","bomen","schoenen","fietspompen","fietsen","deur","bezem","eekhoorn","muis","tafel","cavia","koek","luiaart","paarden","melkpak","chocola","bananentros","cavia","brulaap","duiven","ezel","geiten","neushoorn","zwijnen","struisvogel","varken","parkiet","stokbrood","boeken",]
    
    
    let watJouCanDoe = ["inspecteur", "zitter", "liefhebber", "visser", "schepper", "specilist", "schoonmaker","verkoper","wasser","bakker","temmer","progameur","vlogger"]
    
    let emojis =        ["😀","😃","😄","😁","😆","😅","😂","🤣","☺️","😊","😇","🙂","🙃","😉","😌","😍","😘","😗","😙","😚","😋","😛","😝","😜","🤪","🤨","🧐","🤓","😎","🤩","😏","😒","😞","😔","😟","😕","🙁","☹️","😣","😖","😫","😩","😢","😭","😤","😠","😡","🤬","🤯","😳","😱","😨","😰","😥","😓","🤗","🤔","🤭","🤫","🤥","😶","😐","😑","😬","🙄","😯","😦","😧","😮","😲","😴","🤤","😪","😵","🤐","🤢","🤮","🤧","😷","🤒","🤕","🤑","🤠","😈","👿","👹","👺","🤡","💩","👻","💀","☠️","👽","👾","🤖","🎃","😺","😸","😹","😻","😼","😽","🙀","😿","😾","🐶","🐱","🐭","🐹","🐰","🦊","🐻","🐼","🐨","🐯","🦁","🐮","🐷","🐸","🐵","🙈","🙉","🙊","🐒","🐔","🦄"]
    
    let livingPlease = ["huis","grot","hutje","auto","boomhut","helicopter","snoepautomaat","kast","flat","snackbar","school","doos","fabriek"]
    
    func generateLivingPlease() -> String {
        return livingPlease.randomElement()
    }
    
    
    
    func generateEmojis() -> String {
        return emojis.randomElement()
    }
    
    
    func generateJob() -> String {
        return names.randomElement()  + " de " + object.randomElement() + " " + watJouCanDoe.randomElement()
    }
    
    func generateSalary() -> Int {
        return Int(arc4random_uniform(1000) + 1)
        
    }
    
    func generateRarity() -> Int {
        
        
        return Int(arc4random_uniform(1000) + 1)
    }
    
        
    
    
}


func generateAge() -> Int {
    
    return Int(arc4random_uniform(100) + 1)
}
