=== betaintro_main1 ===
    //IN REALITY
    //location: elevator
    //NICK AND NOUR RUN INTO THE ELEVATOR
    &POS_SUWAN_160,256

    &FOLLOW_SUWAN_SuwanStartingPos
    
    NICK: “QUICK, IN HERE!"
    
    NICK: "Maybe she won't find us and give up chasing—”
    
    NOUR: “In the BROKEN ELEVATOR?”
    
    NICK: "Uh..."
        * [Try to escape]
            NOUR: "We need to get out of here!"
    
            NICK: "No way! She'll never catch us here—"
            
            &FOLLOW_SUWAN_NOUR
            
        * [Give him a piece of your mind]
            NOUR: "God. This is what I get for listening to a stupid kid!"
    
            NICK: "Hey! You listening to me is technically YOUR FAULT AND NOT MINE! I didn't force you to follow me in here."
    
            NICK: "And I'm NOT stupid—"
            
            &FOLLOW_SUWAN_NOUR
            
        * [Urge him to stay quiet]
            NOUR: "Shhh! Shut up!"
    
            NICK: "NO! <i>YOU</i> SHUT UP!"
    
            NOUR: "If you make so much noise, she's going to notice us—"
            
            &FOLLOW_SUWAN_NOUR
    
    //MS SUWAN ENTERS THE ELEVATOR
    //HER SPRITE IS BLACK
    
    - ???: "Stop right there."
    
    NICK: "Aw, shoot! The scary old lady caught up!"
    
    ???" "What did you just call me—"
    
    NOUR: "Stop talking!"
    
    ???: "You're both trespassing. That could mean a lot of trouble for the both of you in the face of the law."
    
    NICK: “Well, what are YOU doing here in that case?”
    
    //HER SPRITE IS SHOWN NORMALLY
    ???: "I AM the law."
    
    NICK: "OH GOD—I'm so sorry! Please don't get me in trouble!"
    
    ???: "I'm part of the legal team in charge of inspecting this demolition site."
    
    NICK: "Please don't tell my Mom! I didn't mean to take the—"
    
    ???: "Take what?"
    
    NICK: "...Um."
    
    NICK: "I have the right to remain silent?"
    
    ???: "Whatever you kids are doing, it's illegal. You can't be here."
    
    NOUR: "I don't know about him, but I'll be out as fast as possible!" 
    NOUR: "I'm only here to take photos. I study journalism, so I wanted to capture this abandoned mall's last moments—"
    
    MS. SUWAN: "Save your excuses. I'm going to report you both to the authorities this instance—"
    
    NICK PRESSES ALL THE BUTTONS IN THE ELEVATOR - elevator button boop SFX
    
    NICK: "C'mon, c'mon, c'mon!"
    
    NOUR: "Really? Pushing those aren't going to work!"
    
    MS. SUWAN: "She's right. This elevator is broken. It's not going anywhere—"
    
    ELEVATOR DOOR CLOSES. WHIRRING AND BEEPING...PORTAL IS ACTIVATED
    
    &SHAKE
    
    NOUR: "What the—WHAT ARE YOU DOING?!"
    
    NICK: "SAVING OUR BUTTS!!!"
    
    NOUR: "WITH the person we're running from?!"
    
    MS. SUWAN: "Quiet down, you punk kids! This elevator shouldn't be working at all—"
    
    &BLACK
    
    NICK: "Why isn't it STOPPING? WHAT'S GOING ON—"
    
    NOUR: "I don't know but BRACE YOURSELVES—!"
    
    &FDEIN
    
    
    -> END

//TRANSITION
//IN DREAM PLANE
//location: Past Level - Hallway

== betaintro_hallway ==
    NOUR: "Ugh...I feel sick."
    
    NICK: “Woah, this is crazy...! Are you seeing what I’m seeing?!”
    
    NOUR: "This...this is one of the floors of the mall! The top floor!"
    
    MS. SUWAN: "A floor that was torn down months ago..."
    
    NOUR: "We're in a place that shouldn't exist?!"
    
    NICK: "Maybe we’re in some kind of backrooms of the universe!"
    
    MS. SUWAN: "…Pardon?"
    
    NICK: "Y’know, liminal spaces? Weird alternate dimensions where everything feels off."
    
    NICK: "A place where space and time aren’t acting as they should."
    
    MS. SUWAN: "We must be hallucinating. That’s the only explanation I can think of to describe… whatever it is that we’re seeing."
        * [Agree with her]
            NOUR: "Maybe we hit our heads somewhere...or a potential gas leak?"
            
            MS. SUWAN: "That would also be somewhat realistic. I want to agree, but..."
            
            MS. SUWAN: "This place would've been closed off much more securely if there was any immediate danger. It would've been reported to me, too."
            
            NICK: "I don't remember us knocking our heads either!"
            
        * [Lighten the mood]
            NOUR: "Maybe this is all just a dream..."
            
            NICK: "Haha! Maybe none of us are even real. Ooo!"
            
            NOUR: "Or drugs? This could be a really, really weird trip!"
            
            NICK: "DRUGS?! What kind of drug would make up something like THIS?"
            
            NICK: "...do you have anymore?"
            
            MS. SUWAN: "Enough of your nonsense, please."
    
        * [Convince her it's real]
            NOUR: "I don't know. If this floor really was torn down, I don't think we can explain anything around us with logic. Or at least, the logic of our reality."
            
            NOUR: "Wherever we are...it's definitely not the demolition site from before."
            
            NICK: "That's so cool! It's like we warped through some kind of elevator-shaped portal!"
            
            MS. SUWAN: "I'm not buying any of this. There is no such thing as a magical elevator or whatever laminated space."

    - MS. SUWAN: "This is absurd. We need to go back."
    
    NOUR: "The elevator is closed though, and it doesn't look like the doors will budge either."
    
    MS. SUWAN: "Then I'll just press the—"
    
    NICK: "Hey, the buttons for this elevator are missing!"
    
    NICK: "And why are there so many lights on this elevator? That's kinda whacky, haha!"
    
    NOUR: "None of them are turned on, though. Weird...maybe it's broken."
    
    NICK: "Yeah, this thing looks busted alright."
    
    NOUR: "No use in waiting for an elevator that won't work. We should try to find a way out of here."
    
    MS. SUWAN: "Agreed. Staying any longer will surely mean trouble."
    
    NICK: "Trouble...I like the sound of that!"
    
    MS. SUWAN: "..."
    
    MS. SUWAN: "Ignoring that."
    
    NICK: "Maybe if we find a way to make the elevator work again, we could go back down!"
    
    MS. SUWAN: "It would make more sense to find another way out of here. I'm going to try calling someone..."
    
    MS. SUWAN: "..."
    
    MS. SUWAN: "Hmm. No service and no WiFi."
    
    NICK: "Aw, man. Same! I can't play any of my phone games..."
    
    NOUR: "Well, we won't be able to leave this place just standing here."
    
    NOUR: "Maybe if we explore some of the places on this floor we can find a way back."
    
    ->END