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
    
    NICK: Whatever.
    
    &PORTRAIT_nick_nickshadow
    
    NOUR: <i>How do I get him to care?...</i>
    
    &PORTRAIT_nour_noursad
    
    FATHER FUJI: "Now that you've heard this tale of woe, I will impart aple wisdom before you go."
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "What's that?"
    
    FATHER FUJI: "A piece of information a Dream Walker ought to know."
    
    NICK: What kind of information? 
    
    &PORTRAIT_nick_nickworried
    
    NICK: Actually you know what, I don't care so don't tell me.
    
    &PORTRAIT_nick_nickshadow
    
        * "Sounds pretty important."
        
            &PORTRAIT_nour_nourrealization
        
            NOUR: "Too bad I don't know much about this game for it to make sense!"
            
        * "Actually, we're pretty busy."
        
            &PORTRAIT_nour_noursad
            
            NOUR: "I think we'll pass on this very important piece of information."
            
            NICK: "...!"
            
            NICK: "Bu-!" 
            
            &PORTRAIT_nick_nickshocked
            
            NOUR: "I thought you didn't care to play this game with us Nick."
            
            &PORTRAIT_nour_nourpondering
            
            NICK: "You're right I don't care."
            
            &PORTRAIT_nick_nickshadow
            
            MS. SUWAN: "Maybe we should hear this out to the end."
    
    - Nick looks the other way, but walks closer to Father Fuji.
    
    FATHER FUJI: "While thy prince was both kept and fair"
    
    FATHER FUJI: "His companions oft did mock and stare"
    
    FATHER FUJI: "Forsooth they jested at his unwist gait,"

    FATHER FUJI: "hoping this majesty's unripnes would abate."
    
    FATHER FUJI: "Though prince did strive to laugh it off,"
    
    FATHER FUJI: "And pretend that he was just as tough,"

    FATHER FUJI: "But deep inside he felt so small and weak,"

    FATHER FUJI: "Longing for a friend who wouldn't critique."

    &PORTRAIT_nick_nickshocked
    
    FATHER FUJI: "Now my children..."
    
    FATHER FUJI: "May the Mother Tree guide thee..."
    
    &PAUSE_0.5
    
    &SHLORP_APPLE_FatherFuji_out
    
    NOUR: "Well, that made zero sense to me."
    
    &PORTRAIT_nour_nourpondering
    
    MS. SUWAN: "Agreed. Perhaps it was more apple nonsense."
    
    &PORTRAIT_suwan_suwanannoyed
    
    NOUR: "Guess we'll never figure all this <i>mysterious information</i> out. We're no experts."
    
    NICK: "..." 
    &PORTRAIT_nick_nickangry
    
    NOUR: "Oh well! Let's move on."
        -> END

=== fountain_end ===
    NOUR: <i>I think we've explored everything we could here.</i>
        
        -> END