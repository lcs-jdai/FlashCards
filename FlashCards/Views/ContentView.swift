//
//  ContentView.swift
//  FlashCards
//
//  Created by Jerry Dai on 2021-12-10.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored properties
    //Store the card to work with
    //it is randomly selected from the list of cards
    @State var currentCard = listOfCards.randomElement()!
    
    //This controls whether the answer is visible
    @State var isAnswerShowing = false
    
    
    //MARK: Computed properties
    var body: some View {
        ScrollView{
            //show question
            Text(currentCard.question)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Button(action: {
                // Review the answer
                isAnswerShowing = true
            }, label: {
                Text ("Check")
            })
                .buttonStyle(.bordered)
            
            
            
            
            //show question
            Text(currentCard.answer)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .opacity(isAnswerShowing ? 1.0 : 0.0)

            
            Button(action: {
                // Get another question
                currentCard = listOfCards.randomElement()!
                
                //Hide the answer
                isAnswerShowing = false
                
            }, label: {
                Text ("Another")
            })
                .buttonStyle(.bordered)
                .opacity(isAnswerShowing ? 1.0 : 0.0)

            
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
