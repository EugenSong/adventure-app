//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    let story_array = [
        Story(
                    title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
                    c1: "I'll hop in. Thanks for the help!", c2: "Better ask him if he's a murderer first.", d1: 2, d2: 1
                ),
                Story(
                    title: "He nods slowly, unfazed by the question.",
                    c1: "At least he's honest. I'll climb in.", c2: "Wait, I know how to change a tire.", d1: 2, d2: 3
                ),
                Story(
                    title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
                    c1: "I love Elton John! Hand him the cassette tape.", c2: "It's him or me! You take the knife and stab him.", d1: 5, d2: 4
                ),
                Story(
                    title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
                    c1: "The", c2: "End", d1: 0, d2: 0
                ),
                Story(
                    title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
                    c1: "The", c2: "End", d1: 0, d2: 0
                ),
                Story(
                    title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
                    c1: "The", c2: "End", d1: 0, d2: 0
                )
        
    ]
   
    var story_zero = 0
    
    mutating func nextStory (userChoice: String) -> Story {
        if userChoice == story_array[story_zero].choice1 {
            story_zero = story_array[story_zero].choice1Destination
            return story_array[story_zero]
        }
        else {
            story_zero = story_array[story_zero].choice2Destination
            return story_array[story_zero]
        }
    }
    
    func getStory() -> Story {
        return story_array[story_zero]
    }
    
    
    
    
    
    
    
    
    
}

