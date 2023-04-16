== fountain ==

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

== fountain_before_aplequest ==

    NOUR: "Got a penny to make a wish?"
    
    NICK: "Nope. Who even carries around pennies anymore?"
    
    NOUR: "Good point."
    
    MS. SUWAN: "Putting your faith in silly things like wishes is just a waste of valuable time."
    
    MS. SUWAN: "You need to do good work, and know the right people."
    
    NICK: "So, like, everything is impossible? God..."
    
    NOUR: "That's a little depressing... But also true."
    
    -> END

== fountain_before_aplequest_repeat ==

    NOUR: <i>I've checked this already.</i> 

    NOUR: <i>There's something curious in the water... But I should stay focused on finding a way out.</i>
    
    -> END

== fountain_findfather ==

    NOUR: "Hey... Is there something bobbing up and down in the water?"
    
    MS. SUWAN: "Just trash and debris."
    
    NOUR: "No, there's something red inside."
    
    MS. SUWAN: "Do you think it could be an..."
    
    NOUR: "There's only one way to find out."
        
        * [Fish it out of the fountain]

    - NOUR: "...Hey!"
    
    &SHLORP_POOP_FatherFuji_in
    
    &PORTRAIT_???_fatherfujineutral
    
    &PORTRAIT_nick_nickworried
    
    ???: "Greetings."
    
    ???: "I see the ones that have rescued me hail from the Mother's Garden."
    
    NOUR: "The ones from the where now?"
    
    ???: "Be not confused, gentle human. The Mother Tree forgives everyone."
    
    ???: "For we are all Children of the Fruit."
    
    FATHER FUJI: "I am the insignificant <i>FATHER FUJI</i>, head priest of the Aple Council."
    
    FATHER FUJI: "I take it that the earthly Emperor Evercrisp tasked you with finding me?"
    
    NOUR: "Yes, you're right. We're looking for all the missing members— including your Prince."
    
    FATHER FUJI: "Ah... Yes. The Prince. How noble his core is, from stem to seed."
    
    FATHER FUJI: "But unfortunately, he has strayed and fallen far from the tree." 
    
    MS. SUWAN: "Care to explain more about this Prince of yours?"
    
    FATHER FUJI: "Since the invasion, our Prince has lost much self-esteem."
    
    FATHER FUJI: "Sent by his father, the Emperor, to Earth was he."
    
    FATHER FUJI: "No fault by him or his fights, but for his safety."
    
    FATHER FUJI: "Yet the young Prince saw it as failing his Daddy."
    
    NOUR: "Daddy?"
    
    FATHER FUJI: "Rhyming on command is harder than it looks."
    
    MS. SUWAN: "Continue, please."
    
    FATHER FUJI: "Forced from space to Earth on a hyper-speed ride,"
    
    FATHER FUJI: "The prince hid in shame, with wounded pride."
    
    FATHER FUJI: "Called by his people, for help, they cried,"
    
    FATHER FUJI: "But the Prince fell silent as his confidence died."
    
    NOUR: "I see. That's a pretty sad story..."
    
    NOUR: "What do you think, Nick?"
    
    NICK: Nick rolls his eyes.
    
    &PORTRAIT_nour_noursad
    
    NOUR: <i>I wonder if he's really interested or not...</i>
    
    FATHER FUJI: "Now that you've heard this tale of woe, I must tell you another you go."
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "What's that?"
    
    FATHER FUJI: "A piece of information a Dream Walker ought to know."
    
    NICK: "Nick perks up, but still pretends to be disinterested."
    
        * "Sounds super duper important."
        
            NOUR: "Too bad I don't know much about this game for it to make sense!"
            
        * "Actually, we're pretty busy."
        
            NOUR: "I think we'll pass on this very important piece of information."
            
            NICK: "...!"
            
            NICK: Nick opens his mouth to say something, but then shuts it immediately. 
            
            NOUR: "Did you want to say something, Nick?"
            
            NICK: Nick shrugs, but doesn't shake his head 'no'.
            
            MS. SUWAN: Ms. Suwan watches him closely.
            
            MS. SUWAN: "Maybe we should hear this out to the end."
    
    - Nick looks the other way, but walks closer to Father Fuji.
    
    FATHER FUJI: "[insert epic lore drop here]"
    
    Nick's eyes widen in awe. His eyes meet Ms. Suwan, and then his expression turns sour again. 
    
    FATHER FUJI: "May the Mother Tree guide thee..."
    
    &PAUSE_0.5
    
    &SHLORP_APPLE_FatherFuji_out
    
    NOUR: "Well, that made zero sense to me."
    
    MS. SUWAN: "Agreed. Perhaps it was more apple nonsense."
    
    NOUR: "Guess we'll never figure all this <i>mysterious information</i> out. We're no experts."
    
    NICK: "..." //frustrated expression?
    
    NOUR: "Oh well! Let's move on."
        -> END

=== fountain_end ===
    NOUR: <i>I think we've explored everything we could here.</i>
        
        -> END