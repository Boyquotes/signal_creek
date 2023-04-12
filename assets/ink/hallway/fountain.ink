=== fountain ===

    It's a fountain with some pennies and other stuff inside. 
    
    {
        - fountain_findfather:
            -> fountain_end
            
        - consoles_start_aplequest: 
            -> fountain_findfather
            
        - fountain_before_aplequest:
            -> fountain_before_aplequest_repeat
            
        - else:
            -> fountain_before_aplequest
    }

=== fountain_before_aplequest ===
    NOUR: "Got a penny to make a wish?"
    
    NICK: "Nope. Who even carries around pennies anymore?"
    
    NOUR: "Good point."
    
    MS. SUWAN: "Putting your faith in silly things like wishes is just a waste of valuable time."
    
    MS. SUWAN: "You need to do good work, know the right people, and be at the right place and the right time."
    
    NICK: "So, like, everything is impossible? God..."
    
    NOUR: "That's a little depressing...but also true."
        -> END

=== fountain_before_aplequest_repeat ===
    NOUR: <i>I've checked this already.</i> 

    NOUR: <i>There's something curious in the water...but I should stay focused on finding a way out.</i>
        -> END

=== fountain_findfather ===
    NOUR: "Hey...is there something bobbing up and down in the water?"
    
    MS. SUWAN: "It's just trash and debris."
    
    NOUR: "No, there's something red inside."
    
    MS. SUWAN: "You don't think that's a..."
    
    NOUR: "There's only one way to find out."
        
        * [Fish it out of the fountain]

    - NOUR: "...Hey!"
    
    &SHLORP_POOP_FatherFuji_in
    
    ???: "Greetings."
    
    ???: "I see the ones that have rescued me hail from the Mother's Garden."
    
    NOUR: "The ones from the where now?"
    
    ???: "Be not confused, gentle human. The Mother Tree forgives everyone, for we are all Children of the Fruit."
    
    ???: "I am the insignificant <i>FATHER FUJI</i>, head priest of the Aple Council."
    
    FATHER FUJI: "I take it that the earthly Emperor Evercrisp tasked you with finding me?"
    
    NOUR: "Yes, you're right. We're looking for all the missing members—including your, uh, prince."
    
    FATHER FUJI: "Ah...yes. The prince. How noble his core is, from stem to seed."
    
    FATHER FUJI: "But unfortunately, he has strayed and fallen far from the tree." 
    
    MS. SUWAN: "Care to explain more about this prince of yours?"
    
    FATHER FUJI: "Since the invasion, our prince has lost much self-esteem."
    
    FATHER FUJI: "Sent by his father, the emperor, to Earth was he."
    
    FATHER FUJI: "No fault by him or his fights, but for his safety."
    
    FATHER FUJI: "Yet the young prince saw it as failing his Daddy."
    
    NOUR: "Daddy?"
    
    FATHER FUJI: "Rhyming on command is harder than it looks."
    
    MS. SUWAN: "Continue, please."
    
    FATHER FUJI: "Forced from space to Earth on a hyper-speed ride,"
    
    FATHER FUJI: "The prince hid in shame, with wounded pride."
    
    FATHER FUJI: "Called by his people, for help, they cried,"
    
    FATHER FUJI: "But the prince fell silent as his confidence died."
    
    NOUR: "I see. That's a pretty sad story..."
    
    NOUR: "What do you think, Nick?"
    
    Nick rolls his eyes. 
    
    NOUR: <i>I wonder if he's really interested or not...</i>
    
    FATHER FUJI: "Now that you've heard this tale of woe, I must tell you one more thing before you go."
    
    NOUR: "What's that?"
    
    FATHER FUJI: "A piece of information a Dream Walker ought to know."
    
    Nick perks up, pretending to still be disinterested. 
    
        * [Listen]
            NOUR: "Sounds super duper important. Too bad I don't know much about this game for it to make sense!"
            
        * [Don't listen]
            NOUR: "Actually, we're pretty busy. I think we'll pass on this very important piece of information."
            
            NICK: "...!"
            
            Nick opens his mouth to say something, but then shuts it close. 
            
            NOUR: "Did you want to say something, Nick?"
            
            Nick shrugs but doesn't shake his head 'no'. Ms. Suwan watches him closely.
            
            MS. SUWAN: "Maybe we should hear this out to the end."
    
    - Nick looks the other way but walks closer to Father Fuji.
    
    FATHER FUJI: "[insert epic lore drop here]"
    
    Nick's eyes widen in awe. His eyes meet Ms. Suwan, and then his expression turns sour again. 
    
    FATHER FUJI: "May the Mother Tree guide thee..."
    
    &SHLORP_APPLE_FatherFuji_out
    
    NOUR: "Well, that made zero sense to me."
    
    MS. SUWAN: "Agreed. Perhaps it was more apple nonsense."
    
    NOUR: "Guess we'll never figure all this <i>mysterious information</i> out because we're no experts at this."
    
    NICK: "..." //frustrated expression?
    
    NOUR: "Oh well! Let's move on."
        -> END

=== fountain_end ===
    NOUR: <i>I think we've explored everything we could here.</i>
        
        -> END