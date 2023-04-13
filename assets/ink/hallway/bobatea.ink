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
    
    &PORTRAIT_nick_nickannoyed
    
    NICK: "Bleh! Most of these drinks suck."
    
    &PORTRAIT_nour_nourannoyed
    
    NOUR: "These <i>are</i> more like liquid sugar than caffeine... and the bad kind of liquid sugar, too."
    
    &PORTRAIT_ms. suwan_suwanneutral
    
    MS. SUWAN: "I don't recognize any of these brands. I find that disturbing."
    
    NICK: "These are all gross except for the boba!"
    
    NOUR: "Wouldn't you rather get fresh boba from an actual shop?"
    
    NICK: "Mmm... well..."
    
    &PORTRAIT_nick_nicksad
    
    NICK: "The canned stuff is cheaper so..."
    
    NOUR: "Oh... yeah, that's fair." 
    
        + ["Do you want me to get you one?"]
        
            NICK: "No thanks. I'm ok."
            
            NOUR: "Are you sure?"
            
            NICK: "Yeah. If I accept something from someone, I'd wanna repay them."
        
        + ["If no one's gonna get anything, let's go."]
    
    - NOUR: "We should move on to something else."
    
        -> END

=== bobatea_beforeaplequest_repeat ===
    NOUR: <i>We've already looked at all the drinks.</i>
        
        -> END

=== bobatea_find_dukedelicious ===
    NOUR: <i>We've already looked at all the drinks.</i>

    NOUR: <i>...Wait a minute. What's up with that boba can at the back?</i>
    
    MS. SUWAN: "I think there's something... <i>wriggling</i> inside that can?"
    
    &PORTRAIT_nour_nourrealization

    NOUR: "It looks kind of round... like an apple?!"
    
    NOUR: "We should buy the boba to free it. Do you want the boba, Nick?"
    
    NOUR: "I'm sure it'll taste real, um, apple-y. That's not too bad, right?"

    Nick shrugs. After a moment, Ms. Suwan clears her throat.
        
    MS. SUWAN: "It's been quite an eventful day so far. Perhaps a drink is warranted."
    
    MS. SUWAN: "It'd be a waste to get rid of the boba for the sake of an apple."
    
    Nick shakes his head 'no'.
    
        * ["We could all pitch in."]
        
        * ["Should we try to break it open?"]
            NOUR: "It could be time for a little B&E on this machine. What do you say?"
            
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
    
        * ["I'll crack it open."]
        
        * ["Ms. Suwan, could you open this?"]
            NOUR: "I trust you the most."
            
            MS. SUWAN: "Very well."
        
        * ["Do you wanna open this, Nick?"]
            NOUR: "You know more about all of this than the two of us."
            
            MS. SUWAN: "Agreed."
            
            Nick shrugs again and takes the can.
    
    - The can is opened, and an apple squeezes out!
    
    &SHLORP_APPLE_DukeDelicious_in
    
    ???: "FREEDOM..."
    
    &PORTRAIT_nick_nickshocked
    
    NICK: "...!"
    
    ???: "SWEET, SWEET FREEDOM!"
    
    ???: "THIS CYLINDRICAL METAL PRISON SHALL NO LONGER CONTAIN ME!"
    
    &PORTRAIT_nour_nourrealization
        
    NOUR: "Um, hello. We're here on behalf of Emperor Evercrisp to rescue you."
    
    ???: "Ahh, of course the Emperor has sent you fine heroes to free me! Thank you! HAR HAR!"
    
    NOUR: "What's your name?"
    
    ???: "It is I, <i>DUKE DELICIOUS</i>!"
    
    DUKE DELICIOUS: "But my friends call me Red."
    
    DUKE DELICIOUS: "Alas, I have failed to find my prince. I hope that you may continue in my stead and bear the fruits of success, HAR HAR!"
    
    DUKE DELICIOUS: "As a small reward, let me tell you something special that may help you on your multi-plane journey, Dream Walkers!"
    
    DUKE DELICIOUS: "[insert epic lore drop here]"
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: "Huh. Interesting..."
    
    //questions here from the party to the Duke?
    
    DUKE DELICIOUS: "I have imparted my wisdom. It is time for me to rejoin my liege, but humans!"
    
    DUKE DELICIOUS: "Charge forth and SEARCH FOR THE PRINCE!"
    
    &SHLORP_APPLE_DukeDelicious_out
    
    NOUR: "Well, you heard what the Duke said. Shall we?"
    
    Ms. Suwan nods, and Nick drinks the canned boba. 
    
    NOUR: "How's that tasting, Nick?"
    
    &PORTRAIT_nick_nickbigsmile
    
    NICK: "...Bad."
    
    Nick gulps more of it down.
    
    &PORTRAIT_nour_nourannoyed
    
    NOUR: "...Sure it is. Make sure to save some for the rest of us."
    
        -> END

=== bobatea_end ===

    NOUR: <i>I think we've explored everything we could here.</i>
        
        -> END