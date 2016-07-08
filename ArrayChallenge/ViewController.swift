//
//  ViewController.swift
//  ArrayChallenge
//
//  Created by James Campagno on 6/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var shoppingList: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let numbers: [Int] = [6, 4, 12, 4]
        let food: [String] = ["Bananas", "Apples", "Eggs", "Rolls"]
        
        makeShoppingList(food, quantityOfItems: numbers)
    }
}

//the first argument of the function will have no external name when it is called - which happens by default
func makeShoppingList(items: [String], quantityOfItems: [Int]) -> [String] {
    
    var emptyArray: [String] = []
    
    for (index, theItem) in items.enumerate() {
        let itemAndQuantity = ("\(index). \(theItem) -  \(quantityOfItems[index])")
        emptyArray.append(itemAndQuantity)
    }
    return emptyArray
}


//let result = [
//    ["merge", "me"],
//    ["We", "shall", "unite"],
//    ["magic"]
//    ].flatMap { $0 }

