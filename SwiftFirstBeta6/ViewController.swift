//
//  ViewController.swift
//  SwiftFirstBeta6
//
//  Created by Serg on 8/30/15.
//  Copyright © 2015 sdbwebsolutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let possibleNumber = "23434"
        let convertedNumber = Int(possibleNumber)
        
        print("The Converted number is: \(convertedNumber)")
        
//        print("test print", separator: "myseparator", terminator: "-")
        
//        print("Another test print", separator: "", terminator: "**")
        
        let possibleNumber2 = "parking space 32"
        let convertedNumber2 = Int(possibleNumber2)
        print("Converted number2 is: \(convertedNumber2) ")
        
        //concept of nil
        //give it an otional Int with a value
        var score: Int? = 2
        //then set it to nil
        score = nil
        print("score is: \(score)")
        
        var visitorsScore: Int?
        print("Visitors score is: \(visitorsScore)")
        
        //if you're sure the var has a value, force unwrap the value to discover it
        score = 4
        if score != nil{
            print("After the game, the score has an integer value of: \(score!)")
        }
        
        //Use Optional Binding - safer than forced unwrapping
        if let currentNumber = Int(possibleNumber){
            print("Our possibleNumber has an integer value of: \(currentNumber).")
        } else {
            print("Our possibleNumber can't be converted to an Integer.")
        }
        
        
        //execution
//        challengeOne()
        
//        challenge2()
        
        workingWithTuples()
        
        challenge4()
        
//        personRange()
        
        
        
    }
    
    //Challenge 1
    //create 3 optional variables, check them for nil and force unwrap them
    //force unwrap and opt nil var - what's the outcome?
    
    func challengeOne(){
        var player1: String? = "Gago"
        var player2: String? = "Tevez"
        var player3: String? = "Caleri"
        var subPlayer: String?
        
        if player1 != nil && player2 != nil && player3 != nil{
            print("Game report: \(player1!), \(player2!), and \(player3!) are playing today.func")
            
        }
        
        if subPlayer != nil{
            print("The sub player \(subPlayer!) is playing today!")
        } else {
            print("Bench: No subs today...")
        }
        
    }
    
    //Challenge 2
    //Work the previous challenge with Optional Binding - will save some code lines here
    func challenge2(){
        var player1: String? = "Gago"
        var player2: String? = "Tevez"
        var player3: String? = "Caleri"
        var subPlayer: String? = "John"
        
        
        if let currentMidfielder = player1{
            print("Our first team MF is: \(currentMidfielder)")
        }
        
        if let bestStriker = player2{
            print("Our best striker is: \(bestStriker)")
        }
        
        if let youngStriker = player3{
            print("Our young striker: \(youngStriker)")
        }
        
        
        if let currentSub = subPlayer{
            print("These Subs are ready: \(currentSub)")
        }else {
            print("SUbs players not ready.")
        }
        
        
    }
    
    //Tuples
    func workingWithTuples(){
        let family = ("dad", "mom", "daughter", "son")
        print("My family: \(family)")
        //we can also access the tuples items by index
        print("\(family.0)")
        print("\(family.1)")
        
        //tuple with named items
        let students = (first_grade_winner: "Alan", second_grade_winner: "Maria", junior_hs: "Rosario")
        print("All students: \(students.first_grade_winner), \(students.second_grade_winner), \(students.junior_hs)")
        
    }
    
    //Basic Operators
    //Explain Unary, Binary, Ternary operators
    //Unary: when the operation is on a single target
    
   //these lines work fine in a playgrnd, I just want to see the ternary print out here!
    var lucky_number: Int = 32
    
//    lucky_number++
//    print("lucky_number is \(lucky_number)")
    
    //Binary: 2 targets
//    lucky_number * 2
    
     func challenge4() {
    //Ternary: 3 targets
    lucky_number > 10 ? print("Hurray!") : print("Uh-oh")
    
    }
    
    //Challenge 6 - Half Range operator
    func personRange() {
        
        let names = ["Sarah", "Kyle", "John", "Lt.Hendrix"]
        
        let count = names.count
        
        print("We have \(count) people RSVPed.")
        
        for i in 0..<count {
            print("Person \(i+1) is called \(names[i])")
        }
    }
    
    //Working and counting characters
    func challenge7(){
        var word = "cafe"
        print("the number of characters in \(word) is \(word.characters.count)")
        // prints "the number of characters in cafe is 4"
        
        word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301
        
        print("the number of characters in \(word) is \(word.characters.count)")
        // prints "the number of characters in café is 4"
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

