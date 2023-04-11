=== bobatea ===
    
    The vending machine is full of coffee, sparkling water, and diet sodas. The last row in the vending machine is a row of Specialty Drinks—japanese sodas and canned boba. 
    
    {
        - bobatea_find_dukedelicious:
            -> bobatea_end
            
        - consoles_start_aplequest:
            -> bobatea_find_dukedelicious
            
        - bobatea_beforeaplequest:
            -> bobatea_beforeaplequest_repeat
            
        - else:
            -> bobatea_beforeaplequest
    }

=== bobatea_beforeaplequest ===
    Nick's nose scrunches up.
    
    NICK: "Bleh! Most of these suck."
    
    NOUR: "These are more like liquid sugar than coffee... and the bad kind of liquid sugar, too."
    
    MS. SUWAN: "I don't recognize any of these brands. I find that disturbing."
    
    NICK: "These all stink except for the boba!"
    
    NOUR: "Wouldn't you rather get fresh boba from an actual shop?"
    
    NICK: "Mmm...well..."
    
    NICK: "The canned stuff is cheaper so..."
    
    NOUR: "Oh...yeah, you're right." 
    
        + [Offer to get him one]
        
            NICK: "No thanks. I'm ok."
            
            NOUR: "Are you sure?"
            
            NICK: "Yeah. If I accept something from someone, I'd wanna repay them."
        
        + [Leave the vending machine]
    
    - NOUR: "Ok. We should move on to something else, then."
    
        -> END

=== bobatea_beforeaplequest_repeat ===
    NOUR: <i>We've already looked at all the drinks here.</i>
        
        -> END

=== bobatea_find_dukedelicious ===
    NOUR: <i>We've already looked at all the drinks here.</i>

    NOUR: <i>...Wait a minute. What's that weird drink at the very end of the vending machine?</i>
    
    MS. SUWAN: "There's something...wriggling? Inside that canned boba."

    NOUR: "It...it looks like an apple!"
    
    NOUR: "We should buy the boba to free it. Do you want the boba, Nick?"
    
    NOUR: "I'm sure it'll taste real, um, apple-y. That's not too bad, right?"

    Nick shrugs. After a moment, Ms. Suwan clears her throat.
        
    MS. SUWAN: "It's been quite an eventful day so far. Perhaps a drink is warranted."
    
    MS. SUWAN: "It'd be a waste to get rid of the boba for the sake of an apple."
    
    Nick shakes his head 'no'.
    
        * [Offer to split the price]
        
        * [Suggest breaking the machine]
            NOUR: "We could break the apple out of the confines of this machine. What do you say?"
            
            NOUR: "It would be free."
            
            MS. SUWAN: "Let's be reasonable, please. We could simply all pitch in and pay."
            
            Nick smiles a little but quickly smothers it with a scowl.
        
    - NOUR: "Would you be more comfortable if we all split the price of the drink?"
    
    NICK: "...50 cents each?"
        
    MS. SUWAN: "Exactly."
    
    Nick sighs and mumbles.
    
    NICK: "...You have some too. Make it fair."
    
    NOUR: "We will."
    
    SFX COINS INTO VENDING MACHINE
    
    Nick fishes out two quarters from his pocket and inserts it into the vending machine.
    
    SFX CAN DISPENSED FROM MACHINE
    
    More quarters enter the vending machine. Soon, a can of boba rolls out.
    
    NOUR: "Here it is."
    
        * [Open the can]
        
        * [Give it to Ms. Suwan]
            NOUR: "Could you open this, Ms. Suwan? I trust you the most."
            
            MS. SUWAN: "Very well."
        
        * [Give it to Nick]
            NOUR: "How about you open it, Nick? You know more about all of this than the two of us."
            
            MS. SUWAN: "Agreed."
            
            Nick shrugs again and takes the can.
    
    - The can is opened, and an apple squeezes out!
    
    &SHLORP_APPLE_DukeDelicious_in
    
    ???: "FREEDOM..."
    
    NICK: "...!"
    
    ???: "SWEET, SWEET FREEDOM!"
    
    ???: "THIS CYLINDRICAL METAL PRISON SHALL NO LONGER CONTAIN ME!"
        
    NOUR: "Um, hello. We're here on behalf of Emperor Evercrisp to rescue you."
    
    ???: "Ah... yes. Thank you! HAR HAR!"
    
    NOUR: "What's your name?"
    
    ???: "It is I, <i>DUKE DELICIOUS</i>!"
    
    DUKE DELICIOUS: "But my friends call me Red."
    
    DUKE DELICIOUS: "Alas, I have failed to find my prince. I hope that you may continue in my stead and bear the fruits of success, HAR HAR!"
    
    DUKE DELICIOUS: "As a small reward, let me tell you something special that may help you on your multi-plane journey, Dream Walkers!"
    
    DUKE DELICIOUS: "[insert epic lore drop here]"
    
    NOUR: "Huh. Interesting..."
    
    DUKE DELICIOUS: "Now, I shall rejoin my liege, but humans! Charge forth and SEARCH FOR THE PRINCE!"
    
    &SHLORP_APPLE_DukeDelicious_out
    
    NOUR: "Well, you heard what he said. Shall we?"
    
    Ms. Suwan nods, and Nick drinks the canned boba. 
    
    NOUR: "How's that tasting, Nick?"
    
    NICK: "Bad."
    
    Nick gulps more of it down.
    
    NOUR: "...Sure it is. Make sure to save some for the rest of us."
    
        -> END

=== bobatea_end ===

    NOUR: <i>I think we've explored everything we could here.</i>
        
        -> END