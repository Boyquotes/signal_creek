=== spraycans ===

It's a bunch of spray cans. 

{
    - spraycans_afternickroute:
        -> spraycans_end
        
    - nourplaysaplequest:
        -> spraycans_afternickroute
    // - noursuggestion:
    //     -> nicknotinterested
    - spraycans_start:
        -> spraycans_start_repeat
        
    - else:
        -> spraycans_start
}

-> END

=== spraycans_start ===
    
    NICK: "Hey, Nour, Ms.Suwan! You think you could buy me one of these? I'll pay you back later." 
    
    NOUR: "The spray cans?"
    
    NOUR: "I didn't know you liked to spray paint."
    
    NICK: "I don't..."

    NOUR: "Oh...then why do you need the spray paint."
    
    NICK: "It's like non of your business just lay off."
    
    MS. SUWAN: "You just want to huff the paint, don't you?"
    
    NOUR: "Oh he wouldn't."
    
    MS. SUWAN: "There are many, many things I can only imagine going wrong with entrusting a kid with these."
    
    NICK: "Who cares what I want to do with them? I just want to have a little fun, geez!"
    
    NOUR: "NICK!"
    
    NICK: "NOUR COME ON! It's just paint and like I said it's none of your business."
    
    NOUR: "I'm going to have to agree with Ms. Suwan here. There's a reason why you have to be over 18 to purchase these."
    
    NICK: "Come on, <i>please</i>...? I'll pay you back afterwards, promise!"
    
    MS. SUWAN: "Nick, getting high doesn't make you look cool. It makes you look like a deadbeat addict."
    
    NICK: "Sheesh, you sound like those <i>Say No To Drugs</i> assemblies we have in school every other month."
    
    MS. SUWAN: "Good. It means I'm saying the right things that you should listen to."
    
    NICK: "Look, it's not a big deal! My friends do stuff like this all of the time and they're fine."
    
    NICK: "And spray paint cans aren't technically, like, a real drug!"
    
    NOUR: "Nick, there's plenty of other perfectly cool things to do out in the world that aren't as dangerous."
    
    NICK: "Oh yeah? Name one thing." 
    
    NOUR: "You're on. Give me a bit, we can definitely find something in this mall that's cooler than this."
    
    NOUR: <i>Maybe I can introduce him to photography? That or reading, I enjoy both, so maybe he will too...</i>
    
    NICK: "I hope that whatever you're planning to show me is EXTRA cool!"
    
    NOUR: <i>I should lead Nick somewhere I can find a safe but fun hobby. Now where could that be in a big mall like this?</i>
    
        &LIGHT_Nick0
    
        -> light_on
// -> END

=== spraycans_start_repeat ===

    NICK: "Bringing me back here isn't really helping your point about 'cooler hobbies' or whatever."
    
    NOUR: "Ok, smart guy. I'll find something to prove my point."
    
    NOUR: <i>It might be better for me to find something to teach him a fun hobby. Maybe we could read up on one somewhere?</i>
    
        -> END

// === nicknotinterested ===

//     - Nick's gaze seems to linger on the spray cans, but then quickly glances away, bouncing on the balls of his feet.
    
//     NOUR: <i>Still not talking, huh?</i>
    
//     NOUR: <i>I need to find something fun AND safe for him to speak again...</i>
    
//     NOUR: <i>Maybe there's something else in this place I could take a look at.</i>
        
//         -> END

=== spraycans_afternickroute ===
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

=== spraycans_end ===

    NOUR: <i>I think we've explored everything we could here.</i>
        
        -> END

