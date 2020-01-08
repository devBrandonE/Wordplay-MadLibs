//
//  Words.swift
//  Wordplay MadLibs
//
//  Created by Brandon Escobar on 10/22/19.
//  Copyright © 2019 Brandon Escobar. All rights reserved.
//
import Foundation

class Words {
    var data = ""
    
    var fruit = ""
    // nouns = a word (other than a pronoun) used to identify any of a class of people, places, or things ( common noun ), or to name a particular one of these ( proper noun )
    var nounOne = ""//
    var nounTwo = ""//
    var nounThree = ""//
    var nounFour = ""//
    // adjective = a word or phrase naming an attribute, added to or grammatically related to a noun to modify or describe it
    var AdjectiveOne = ""//
    var AdjectiveTwo = ""//
    var AdjectiveThree = ""//
    var AdjectiveFour = ""
    // numbers for the password
    var num1 = ""
    var num2 = ""
    var num3 = ""
    var num4 = ""
    
    /*
     noun 1 -> adjective 3
     noun 2 -> adjective 4
     noun 3 -> adjective 2
     noun 4 -> adjective 1
     */
    
    func storyMaker() -> String {
        return "In a \(fruit) farm, \(nounOne) went to look for some \(fruit)s to \(AdjectiveThree) it's hunger.  That is until \(nounOne) saw what \(nounTwo) went to this futuritic \(fruit) generation machine.  \(nounTwo) typed in \(num3)\(num1)\(num2)\(num4), and out came \(fruit)s.  \(nounOne) couldn't believe it! An actual \(fruit) generation machine that \(AdjectiveTwo) \(fruit) out of thin air!  Unfortunately \(nounOne) didn't pay attention to what the password was so when \(nounOne) went up to the pascode and typed in 1234, \(fruit) didn't came out but rather \(nounThree) and \(nounFour) \(AdjectiveOne) out of the machine.  \(nounOne), having no idea that they were there, was surprised to see them \(AdjectiveOne) from there.  \(nounThree) and \(nounFour) told \(nounOne) that they went inside for the \(fruit)s indside.  While they explained, \(nounTwo) heard everything.  \(nounTwo) captured \(nounOne), \(nounThree), and \(nounFour).  Then \(nounTwo) \(AdjectiveFour) them for a full day."
    }
}
