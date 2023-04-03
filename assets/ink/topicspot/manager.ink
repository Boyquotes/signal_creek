== manager ==

    {
        - !manager_firstconvo:
            -> manager_firstconvo
    }
    
    MANAGER: "Let me know if you need help finding anything!"
    
    MANAGER: "Or not... I'm kinda too lazy to get up. O3o"
    
    NOUR: "Actually..."
    
    -> manager_wayout


== manager_wayout ==
    
    * [Ask him for a way out of here.]
    
        NOUR: "I think the elevator is stuck. Is there another way off of this floor?"
        
        MANAGER: "The elevator will work when it's your time to go. But that's not yet, silly!"
        
        -> manager_wayout
    
    * [Ask him why everything's so weird.]
    
        NOUR: "Something feels off in this mall. People are appearing and disappearing, there's a funny elevator..."
        
        NOUR: "And the trees don't look right."
        
        NOUR: "<i>You</i> don't look right."
        
        MANAGER: "Hey! ;-; That isn't cool."
        
        -> manager_wayout
        
    + -> 
        NOUR: "Uh, never mind. Seems like you can't help us get out of here. Thanks anyways."
    
        -> END


== manager_firstconvo ==
    
    MANAGER: "Welcome to TopicSpot! UWU"
    
    MANAGER: "We have an epic sale going on right now, you're just in luck. Everything labelled as *-1??/.. is 90% off!"
    
    NICK: "Uhhh... Labelled as <i>what</i>, now?"
    
    NICK: "Also, did um, did you just say <i>oowoo</i> out loud?"
    
    MANAGER: "No, I did not! UWU"
    
    NICK: "Yeah, you just did it again? How the heck?"
    
    MS. SUWAN: "I don't think this conversation is a productive use of our time."
    
    * [Strike a conversation with the manager.]
    
        NOUR: "You said... asterisk, hyphen, one, question mark, question mark, slash."
        
        NOUR: "But with the actual symbols, not their names. How are we even comprehending this right now?"
        
        MANAGER: "I was born with it! I'm special like that owo"
        
        NOUR: "Sure... alright. Forget I asked."
    
    * [Leave this guy alone.]
    
        NOUR: "Forget it, man. Let's just pretend he's normal."
        
        NICK: "Sheesh, fine."
    
    - MANAGER: "Alright! Well, let me know if you need help finding anything. XD"
    
    NICK: "Whoa, you just did it again... seriously, how are you doing that?"
    
    MANAGER: "I don't know what you're talking about!"
    
    -> END


// == managershirtconvo ==

//     NICK: Well -- a-anyway... um... I would like to buy this shirt.
    
//     MANAGER: Oh! That shirt! Omgg xD you have good taste, kid ~ that's one of our cutest shirts! x3 Okay, let me get this rung up for you!
    
//     The manager turns around and scans the shirt's label. 
    
//     MANAGER: That'll be 39.99, please!
    
//     NICK: Huh? F-Forty dollars...? Wait, but the price tag said... huh? The price tag's blank...?!
    
//     MANAGER: It's not 40 dollars, Nick. It's 39.99. There's a difference xD Do you want a bag for it?
    
//     NICK: Wait, hold on... hold on... I don't know if I can pay forty -- sorry, thirty-nine-ninety-nine -- I don't have that kind of money on me right now...
    
//     Nick's cheeks flush red as he looks down at his barren wallet. Only a few ones and a couple of coins fill the nearly-empty space, the remains of the money he had earned through mowing his neighbor Mr. Pierre's lawn last weekend. Suddenly he wishes the earth would open up and swallow him whole.
    
//     NICK: I guess you don't do discounts, huh...
    
//     MANAGER: Yeah... I'm sorry, kid. Hey, don't feel too sad. I can hold onto this for you, if you'd like, and it'll be yours whenever you're able. x3 
    
//     NICK: No, no... it's fine. I shouldn't be spending forty-- I mean, thirty-nine-ninety-whatever on stuff like this anyway. 
    
//     Feeling frustrated and guilty, Nick turns around and walks away. The world around him begins to change.
    
//     &NICK: Ugh...
    
//     -> END

