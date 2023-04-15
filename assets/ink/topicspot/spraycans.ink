== spraycans ==

    It's a bunch of spray cans. 
    
    {
        - spraycans_afternickroute:
            -> explored_everything
            
        - nourplaysaplequest:
            -> spraycans_afternickroute
            
        - spraycans_start:
            -> spraycans_start_repeat
            
        - consoles:
            -> spraycans_start
    }
    
    -> END

== spraycans_start ==
    
    NICK: "...Ooh! Hey, guys! Think you could buy me one of these?"
    
    NICK: "I'll pay you back later." 
    
    NOUR: "...I didn't know you like to spray paint."
    
    NICK: "Well, I don't know how..."
    
    &PORTRAIT_nour_nourannoyed

    NOUR: "...Then what are you going to do with these?"
    
    NICK: "It's like... <i>none</i> of your business. Just lay off."
    
    MS. SUWAN: "You want to inhale it, then?"
    
    NOUR: "Oh, he wouldn't. No way."
    
    MS. SUWAN: "There are <i>many</i> reasons why entrusting a child with these is a terrible idea."
    
    NICK: "Who <i>cares</i> about that? I just want to have a little fun, geez!"
    
    NOUR: "NICK!"
    
    NICK: "<i>Please</i>...? I'll pay you back afterwards, promise!"
    
    NOUR: "I'm going to have to agree with Ms. Suwan here."
    
    NOUR: "There's a reason why you have to be over 18 to purchase these."

    MS. SUWAN: "Nick, getting high is not a good path to take."
    
    NICK: "Sheesh, you sound like those <i>Say No To Drugs</i> assemblies we have in school."
    
    MS. SUWAN: "Good. That means I am saying what you need to hear."
    
    MS. SUWAN: "Substance abuse is addictive, and will only harm your future."
    
    NICK: "But I have friends who do stuff like this all of the time, and they're fine!"

    NICK: "It's not like I have a bright future, anyways. Might as well have some fun."
    
    NOUR: "Nick, there's plenty of other things you can do for fun."
    
    NOUR: "Things that <i>aren't</i> dangerous."
    
    NICK: "Oh yeah? Name one thing."
    
    &PORTRAIT_nour_noursmile
    
    NOUR: "You're on. Give me a bit, we can definitely find something fun to do in this mall."
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: <i>Maybe I can introduce him to photography?</i>
    
    NOUR: <i>That, or reading. I enjoy both, so maybe he will too...</i>
    
    NICK: "I hope that whatever you're planning to show me is <i>SO</i> fun!"
    
    NOUR: <i>I should lead Nick somewhere that would inspire new interests.</i>
    
    &LIGHT_Nick0
    
    -> light_on
// -> END

== spraycans_start_repeat ==

    NICK: "Bringing me back here isn't really helping your point about 'better hobbies' or whatever."
    
    NOUR: "Okay, smart guy. I'll find something to prove my point."
    
    NOUR: <i>Earlier, Nick said something about how he doesn't feel like he has a bright future.</i>
    
    NOUR: <i>It sounds like he doesn't have much confidence in his prospects.</i>
    
    NOUR: <i>I should help him find a hobby. Something that would give him purpose.</i>
    
    NOUR: <i>We could go somewhere with books, and read up about new things.</i>
    
    -> END

== spraycans_afternickroute ==

    NOUR: "You know, when you're an adult, you can make decisions for yourself to purchase whatever you want."
    
    NOUR: "We just hope they're decisions that benefit you, not harm you."

    MS. SUWAN: "Precisely."

    NICK: "Don't worry. These didn't really interest me in the first place."
    
    NICK: "I just thought 'cause my friends did it to be cool, I had to do it too."
    
    NICK: "I'd much rather play Aple Quest...so no more lectures, alright? I learned my lesson!"
    
    NOUR: "Ok, ok. Good to know, Nick."
    
    NICK: "And since you both taught me this <i>gracious</i> lesson...it's only right that I convert you both into Aple Quest fans too!"
    
    MS. SUWAN: "...Perhaps we did <i>too</i> good of a job."
    
    NOUR: "What monster have we created..."
    
    NICK: "Haha, I can't wait!"
    
        -> END

