//
//  Card.swift
//  FlashCards
//
//  Created by Jerry Dai on 2021-12-10.
//

import Foundation





// defines the information we'll track
//"Blueprint" for a card
struct Card {
    let question: String
    let answer: String
}

// define a list of cards to quiz with
let listOfCards = [

    Card(question: "What is the \"powerhouse\" of a cell?",
         answer: "Mitochondria")

    ,
    
    Card(question: "What is hydrolysis",
         answer: "When water has broken away from a cell.")

    ,
    
    Card(question: "What CH 2?",
         answer: "Methylene")

    ,
    
    Card(question: "What must be do at the start of a sentence?",
         answer: "Capitalize the first letter")

    ,

    
    
    
]
