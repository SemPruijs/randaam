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
    let names = ["Harry", "Bert", "Henk", "Sebastiaan", "Papa","Rutger", "Mama", "Lars", "Steven", "Jannes",  "Iwan","Milan","Bertwim","Amgela","Jorgiam","Hansje","Pim","Sandra","Hennie","Achmet","Dirkjan","Barbaba","Jeroen","Riejan","Willem","Leo","Meneer","Bas","Dennis","Jan","Kees","Lies","Sem","Jan","Cor","Lucas","Finn","Daan","Levi","Milan","Bram","Luuk","Emma","Tess","Sophie","Julia","Anna","Mila","Sara","Luuk","Jesse","Mees","Thomas","Sam","Thijs","Adam","Max","Jullian","Hugo","Gijs","Benjamin","Tim","Ruben","Teun","Olivier","Sven","David","Stijn","Tom","Isa","Noa","Jasmijn","Esmee","Sanne","Joël","Emmanuel","Nathan","Tobias","Alex","Daniële","Elias","Carlijn","Caroline","Jonne","Lisanne","Marije","Tirza","Naomi","Joyce","Indy","Marith","Micha","Hayanne","Isa","Nadine","Aron"]
    
    let object = ["stoep", "dinosaurus", "klokken", "lampen","mieren","appelmoes", "poep", "bank", "goudvis","ramen","pizza","banannen","blopvis","pennen","bomen","schoenen","fietspompen","fietsen","deur","bezem","eekhoorn","muis","tafel","cavia","koek","luiaart","paarden","melkpak","chocola","bananentros","cavia","brulaap","duiven","ezel","geiten","neushoorn","zwijnen","struisvogel","varken","parkiet","stokbrood","boeken",]
    
    
    let watJouCanDoe = ["inspecteur", "zitter", "liefhebber", "visser", "schepper", "specilist", "schoonmaker","verkoper","wasser","bakker","temmer","progameur","vlogger"]
    
    let emojis =        ["😀","😃","😄","😁","😆","😅","😂","🤣","☺️","😊","😇","🙂","🙃","😉","😌","😍","😘","😗","😙","😚","😋","😛","😝","😜","🤪","🤨","🧐","🤓","😎","🤩","😏","😒","😞","😔","😟","😕","🙁","☹️","😣","😖","😫","😩","😢","😭","😤","😠","😡","🤬","🤯","😳","😱","😨","😰","😥","😓","🤗","🤔","🤭","🤫","🤥","😶","😐","😑","😬","🙄","😯","😦","😧","😮","😲","😴","🤤","😪","😵","🤐","🤢","🤮","🤧","😷","🤒","🤕","🤑","🤠","😈","👿","👹","👺","🤡","💩","👻","💀","☠️","👽","👾","🤖","🎃","😺","😸","😹","😻","😼","😽","🙀","😿","😾","🐶","🐱","🐭","🐹","🐰","🦊","🐻","🐼","🐨","🐯","🦁","🐮","🐷","🐸","🐵","🙈","🙉","🙊","🐒","🐔","🦄","🐧","🐦","🐤","🐣","🐥","🦆","🦅","🦉","🦇","🐺","🐗","🐴","🐝","🐛","🦋","🐌","👨‍🍳","🧜‍♀️"]
    
    let livingPlease = ["huis","grot","hutje","auto","boomhut","helicopter","snoepautomaat","kast","flat","snackbar","school","doos","fabriek"]

    
    func generateLivingPlease() -> String {
        return "woont in een " + livingPlease.randomElement()
    }
    
    
    
    func generateAge() -> String {
        
        return  String(arc4random_uniform(100) + 1)
    }
    
    func generateEmojis() -> String {
        return emojis.randomElement()
    }
    
    
    func generateJob() -> String {
        return names.randomElement()  + " de " + object.randomElement() + " " + watJouCanDoe.randomElement()
    }
    
    func generateSalary() -> String {
        return String(arc4random_uniform(1000) + 1)
        
    }
    
    func generateRarity() -> Int {
        
        
        return Int(arc4random_uniform(10000) + 1)
    }
    
}



