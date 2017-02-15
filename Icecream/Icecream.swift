//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String:String] = ["Joe" : "Peanut Butter and Chocolate",
                                                      "Tim" : "Natural Vanilla",
                                                      "Sophie" : "Mexican Chocolate",
                                                      "Deniz" : "Natural Vanilla",
                                                      "Tom" : "Mexican Chocolate",
                                                      "Jim" : "Natural Vanilla",
                                                      "Susan" : "Cookies 'N' Cream"]
    /*  
     "Deniz likes Natural Vanilla\n
     Jim likes Natural Vanilla\nJoe likes Peanut Butter and Chocolate\n
     Sophie likes Mexican Chocolate\n
     Susan likes Cookies 'N' Cream\n
     Tim likes Natural Vanilla\n
     Tom likes Mexican Chocolate"
     
     Joe: Peanut Butter and Chocolate
 Tim: Natural Vanilla
 Sophie: Mexican Chocolate
 Deniz: Natural Vanilla
 Tom: Mexican Chocolate
 Jim: Natural Vanilla
 Susan: Cookies 'N' Cream */
 
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var names: [String] = []
        for (name, chosenFlavor) in favoriteFlavorsOfIceCream {
            if flavor == chosenFlavor {
                names.append(name)
            }
        }
        return names
    }
    
   

    
    
    
    // 3.
    
    func count(forFlavor flavor: String) -> Int {
      
        let namesPeople = names(forFlavor: flavor)
        let numPeople = namesPeople.count
        return numPeople
    }
    
    
    
    
    // 4.
    
    func flavor(forPerson person: String) -> String? {
        if let flavor = favoriteFlavorsOfIceCream[person] {
            return flavor
        } else {
            return nil
        }
    }
    
    // 5. 
    func replace(flavor: String, forPerson: String) -> Bool {
        if let _ = favoriteFlavorsOfIceCream[forPerson] {
            favoriteFlavorsOfIceCream[forPerson] = flavor
            return true
        } else {
            return false
        }
    }
    
    // 6.
    func remove(person: String) -> Bool {
        if let _ = favoriteFlavorsOfIceCream[person] {
            favoriteFlavorsOfIceCream[person] = nil
            return true
        } else {
            return false
        }
    }
    
    // 7.
    func numberOfAttendees() -> Int {
        let attendees = favoriteFlavorsOfIceCream.count
        return attendees
    }
    
    // 8.
    func add(person: String, withFlavor: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream[person] = withFlavor
            return true
        } else {
            return false
        }
    }
    
    //9. 
    
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var sentence = "\(allNames[0]) likes \(favoriteFlavorsOfIceCream[allNames[0]]!)"
        for i in 1...(allNames.count - 1) {
            sentence += "\n\(allNames[i]) likes \(favoriteFlavorsOfIceCream[allNames[i]]!)"
        }
        return sentence
    }
    /*
          9.
     If Susan's notes and memory are correct, there are now 7 people coming to the party. She'd like you to write a function, attendeeList(), which will create a list "Name likes Ice Cream", one attendee per line in alphabetical order, just so she can make sure she remembers correctly.
     The function should be called attendeelist(). The return type should be String.
     A hint to help you produce a list in alphabetical order:
     let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
     allNames is an array of String's, placing all the names in alphabetical order. Use this to your advantage. Make sure the last part of your String doesn't end with a newline character \n.
     */
    

    }
