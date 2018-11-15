//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream = [
        "Joe":"Peanut Butter and Chocolate",
        "Tim":"Natural Vanilla",
        "Sophie":"Mexican Chocolate",
        "Deniz":"Natural Vanilla",
        "Tom":"Mexican Chocolate",
        "Jim":"Natural Vanilla",
        "Susan":"Cookies 'N' Cream"
    ]
    
    
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var storeNames: [String] = []
        for (name, creamFlavor) in favoriteFlavorsOfIceCream {
            if creamFlavor == flavor {
                storeNames.append(name)
            }
        }
        return storeNames
    }
    
    
    
    
    
    // 3.
    func count(forFlavor flavor:String) -> Int {
        var flavorCount = 0
        for (_, creamFlavor) in favoriteFlavorsOfIceCream {
            if creamFlavor == flavor {
                flavorCount += 1
            }
        }
        return flavorCount
    }
    
    
    
    
    
    
    // 4.
    func flavor(forPerson: String) -> String? {
        return favoriteFlavorsOfIceCream[forPerson]
    }
    
    
    
    
    
    
    // 5.
    func replace(flavor:String, forPerson:String) -> Bool {
        if favoriteFlavorsOfIceCream[forPerson] != nil {
            if favoriteFlavorsOfIceCream.updateValue(flavor, forKey: forPerson) != nil{
            return true
            }
        }
        return false
    }
    
    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream.removeValue(forKey: person) != nil {
            return true
        } else {
            return false
        }
    }
    
    
    
    
    
    
    
    // 7.
    
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.keys.count
    }
    
    
    
    
    
    
    // 8.
    func add(person:String, withFlavor:String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream[person] = withFlavor
            return true
        }
        return false
    }
    
    
    
    
    
    
    
    
    // 9.
    func attendeeList() -> String {
        var sentence = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        for name in allNames {
            if let flavor = favoriteFlavorsOfIceCream[name] {
        
                sentence += "\(name) likes \(flavor)\n"
            }
            }
        return sentence
    }
    

    
    
    
    

}
