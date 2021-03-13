//
//  Model.swift
//  Randaam
//
//  Created by Sem Pruijs on 10/10/2019.
//  Copyright © 2019 Sem Pruijs. All rights reserved.
//

import Foundation

extension Array {
    func randomElement() -> Element {
        return self[Int(arc4random() % UInt32(self.count))]
    }
}



struct PersonInfoGenerator {
    let names = ["Harry", "Bert", "Henk", "Sebastiaan", "Papa","Rutger", "Mama", "Lars", "Steven", "Jannes",  "Iwan","Milan","Bertwim","Amgela","Jorgiam","Hansje","Pim","Sandra","Hennie","Achmet","Dirkjan","Barbaba","Jeroen","Riejan","Willem","Leo","Meneer","Bas","Dennis","Jan","Kees","Lies","Sem","Jan","Cor","Lucas","Finn","Daan","Levi","Milan","Bram","Luuk","Emma","Tess","Sophie","Julia","Anna","Mila","Sara","Luuk","Jesse","Mees","Thomas","Sam","Thijs","Adam","Max","Jullian","Hugo","Gijs","Benjamin","Tim","Ruben","Teun","Olivier","Sven","David","Stijn","Tom","Isa","Noa","Jasmijn","Esmee","Sanne","Joël","Emmanuel","Nathan","Tobias","Alex","Daniële","Elias","Carlijn","Caroline","Lisanne","Marije","Tirza","Naomi","Joyce","Indy","Marith","Micha","Hayanne","Isa","Nadine","Aron"]
    
    let objects = ["stoep", "dinosaurus", "klokken", "lampen","mieren","appelmoes", "poep", "bank", "goudvis","ramen","pizza","banannen","blopvis","pennen","bomen","schoenen","fietspompen","fietsen","deur","bezem","eekhoorn","muis","tafel","cavia","koek","luiaart","paarden","melkpak","chocola","bananentros","cavia","brulaap","duiven","ezel","geiten","neushoorn","zwijnen","struisvogel","varken","parkiet","stokbrood","boeken",]
    
    
    let jobs = ["inspecteur", "zitter", "liefhebber", "visser", "schepper", "specialist", "schoonmaker","verkoper","wasser","bakker","temmer","progammeur","vlogger"]
    
    let emojis = ["😀","😃","😄","😁","😆","😅","😂","🤣","☺️","😊","😇","🙂","🙃","😉","😌","😍","🥰","😘","😗","😙","😚","😋","😛","😝","😜","🤪","🤨","🧐","🤓","😎","🤩","🥳","😏","😒","😞","😔","😟","😕","🙁","🙁","☹️","☹️","😣","😖","😫","😩","🥺","😢","😭","😤","😠","😡","🤬","🤯","😳","🥵","🥶","😱","😨","😰","😥","😓","🤗","🤔","🤭","🤫","🤥","😶","😐","😑","😬","🙄","😯","😦","😧","😮","😲","😴","🤤","😪","😵","🤐","🥴","🤢","🤮","🤧","😷","🤒","🤕","🤑","🤠","😈","👿","👹","👺","🤡","💩","👻","💀","☠️","👽","👾","🤖","🎃","😺","😸","😹","😻","😼","😽","🙀","😿","😾","👀","👶","👧","🧒","👦","👩","🧑","👨","👩‍🦱","👨‍🦱","👩‍🦰","👨‍🦰","👱‍♀️","👱‍♂️","👩‍🦳","👨‍🦳","👩‍🦲","👨‍🦲","🧔","👵","🧓","👴","👲","👳‍♀️","👳‍♂️","🧕","👮‍♀️","👮‍♂️","👷‍♀️","👷‍♂️","💂‍♀️","💂‍♂️","🕵️‍♀️","🕵️‍♂️","👩‍⚕️","👨‍⚕️","👩‍🌾","👨‍🌾","👩‍🍳","👨‍🍳","👩‍🎓","👨‍🎓","👩‍🎤","👨‍🎤","👩‍🏫","👨‍🏫","👩‍🏭","👨‍🏭","👩‍💻","👨‍💻","👩‍💼","👨‍💼"]
    
    let livingPlaces = ["huis","grot","hutje","auto","boomhut","helicopter","snoepautomaat","kast","flat","snackbar","school","doos","fabriek", "boot"]

    
    private func generateLivingPlace() -> String {
        return "woont in een " + livingPlaces.randomElement()
    }
    
    private func generateAge() -> String {
        return  String(arc4random_uniform(100) + 1) + " jaar"
    }
    
    private func generateEmojis() -> String {
        return emojis.randomElement()
    }
    
    private func generateJob() -> String {
        return names.randomElement()  + " de " + objects.randomElement() + " " + jobs.randomElement()
    }
    
    private func generateSalary() -> Int {
        return Int.random(in: 1...1000)
    }
    
    private func generateRarity() -> Int {
        return Int.random(in: 1...10000)
    }
    
    func generate() -> PersonInfo {
        return PersonInfo(
            livingPlace: generateLivingPlace(),
            age: generateAge(),
            emoji: generateEmojis(),
            job: generateJob(),
            salary: generateSalary(),
            rarity: generateRarity()
        )
    }
}

struct PersonInfo {
    let livingPlace: String
    let age: String
    let emoji: String
    let job: String
    let salary: Int
    let rarity: Int
}
