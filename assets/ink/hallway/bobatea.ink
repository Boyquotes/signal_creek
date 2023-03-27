=== bobatea ===
    
    The vending machine is full of coffee, sparkling water, and diet sodas. The last row in the vending machine is a row of Specialty Drinks—japanese sodas and canned boba. 
    
    {
        -> bobatea2
            -> bobatea_end
        - console3:
            -> bobatea2
        - bobatea 1:
            -> bobatea1_repeat
        - else:
            -> bobatea1
    }

=== bobatea1 ===
    Nick's nose scrunches up.
    
    NICK: "Bleh! Most of these suck."
    
    NOUR: "These are more like liquid sugar than coffee... and the bad kind of liquid sugar, too."
    
    MS. SUWAN: "I don't recognize any of these brands. I find that disturbing."
    
    NICK: "These all stink except for the boba!"
    
    NOUR: "But Nick, that stuff's canned. Wouldn't you rather get fresh boba from an actual shop?"
    
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

=== bobatea1 ===
    NOUR: <i>We've already looked at all the drinks here.</i>
        
        -> END

=== bobatea2 ===
    NOUR: <i>We've already looked at all the drinks here.</i>

    NOUR: <i>...Wait a minute. What's that weird drink at the very end of the vending machine></i>
    
    MS. SUWAN: "There's something...wriggling? Inside that canned boba."

    NOUR: "It...it looks like an apple!"
    
    NOUR: "We should buy the boba to free it. Do you want the boba, Nick?"
    
    NOUR: "I'm sure it'll taste real, um, apple-y. That's not too bad, right?"

    Nick shrugs. After a moment, Ms. Suwan clears her throat.
        
    MS. SUWAN: "It's been quite an eventful day so far. Perhaps a drink is warranted."
    
    MS. SUWAN: "It'd be a waste to get rid of the boba for the sake of an apple."
    
    Nick shakes his head. 
    
    NICK: "Can't repay you. So I don't want it."
    
        * [Offer to split the price]
        
        * [Suggest breaking the machine]
            NOUR: "We could break the apple out of the confines of this machine. What do you say?"
            
            NOUR: "It would be free."
            
            MS. SUWAN: "Let's be reasonable, please. We could simply all pitch in and pay."
            
            Nick smiles a little but quickly smothers it with a scowl.
        
    - NOUR: "Would you be more comfortable if we all split the price of the drink?"
    
    NICK: "...Just 50 cents each?"
        
    MS. SUWAN: "Exactly."
    
    NICK: "You should have some too, then. To make it fair."
    
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
    
    ???: "FREEDOM..."
    
    NICK: "Woah...!"
    
    ???: "SWEET, SWEET FREEDOM!"
    
    ???: "THIS BOBA PRISON SHALL NO LONGER CONTAIN ME!"
        
    NOUR: "Um, hello. We're on behalf of Emperor Evercrisp to rescue you."
    
    ???: "Ah...yes. Thank you! HAR HAR!"
    
    ???: "It seems I, <i>ROYAL GUARD GALA</i>, have failed to find my prince."
    
    ROYAL GUARD GALA: "I hope that you may continue the search and bear the fruits of success, HAR HAR!"
    
    ROYAL GUARD GALA: "As a small reward, let me tell you something special that may help you on your multi-plane journey, Dream Walkers!"
    
    ROYAL GUARD GALA: "[insert epic lore drop here]"
    
    NOUR: "Huh. Interesting..."
    
    ROYAL GUARD GALA: "Let us charge forth and CONTINUE THE SEARCH!"
    
    NOUR: "Well, you heard what he said. Shall we?"
    
    Ms. Suwan nods, and Nick drinks the boba. 
    
    NOUR: "How's that tasting, Nick?"
    
    NICK: "Bad."
    
    Nick drinks more of it.
    
    NOUR: "...Sure it is. Make sure to save some for the rest of us."
    
        -> END

=== bobatea_end ===

    NOUR: <i>I think we've explored everything we could here.</i>
        
        -> END