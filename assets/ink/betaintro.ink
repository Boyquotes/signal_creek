=== betaintro_main1 ===
    //IN REALITY
    //location: elevator
    //NICK AND NOUR RUN INTO THE ELEVATOR
    
    NICK: “QUICK, IN HERE! There's no way she'll find us here!"
    
    &SPEED_NICK_120.0
    &SPEED_NOUR_100.0
    &FOLLOW_NICK_NickElevatorPos
    &FOLLOW_SUWAN_SuwanStartingPos
    &POS_SUWAN_160,248
    &FOLLOW_NOUR_NourStartingPos
    
    &PAUSE_0.5
    
    &EMOTE_NICK_DownIdle
    
    NICK: "If we hide here, she'll give up chasing us down—”
    
    &FOLLOW_NOUR_NourElevatorPos
    &EMOTE_NICK_LeftIdle
    
    &PAUSE_1.0
    
    &EMOTE_NOUR_RightIdle
    
    NOUR: “In the BROKEN ELEVATOR?!”
    
    &SOUND_InquisitiveSound

    &SPEED_NICK_72.0
    &SPEED_NOUR_72.0
    
    &PORTRAIT_nour_nournervous
    
    // &PORTRAIT_nour_placeholder
    
    NICK: "Uh..."
        * [Try to run]
            NOUR: "This is so stupid, Nick, we have to get out of here!"
    
            NICK: "No way! She'll never catch us here—"
            
            &FOLLOW_SUWAN_NOUR
            
        * [Give him a piece of your mind]
            NOUR: "Goddammit, Nick! This is what I get for listening to a stupid kid!"
    
            NICK: "Hey! You listening to me is technically YOUR FAULT AND NOT MINE! I didn't force you to follow me in here."
    
            NICK: "And I'm NOT stupid—"
            
            
        * [Urge him to stay quiet]
            NOUR: "Shhh! Shut up, Nick!"
    
            NICK: "NO! <i>YOU</i> SHUT UP!"
    
            NOUR: "If you make so much noise, she's going to find us, idiot—"
            
            
    
    //MS SUWAN ENTERS THE ELEVATOR
    //HER SPRITE IS BLACK
    
    - MS. SUWAN: "Stop right there."
    
    &FOLLOW_SUWAN_SuwanElevatorPos
    
    &EMOTE_NOUR_DownIdle
    
    // &VOLUME_-120.0
    
    &EMOTE_NICK_LookAround
    
    &PAUSE_1.0
    
    &EMOTE_NICK_DownIdle
    
    &EMOTE_NOUR_RightIdle
    
    NICK: "Aw, shoot! The scary old lady caught up!"
    
    MS. SUWAN: "What did you just call me—"
    
    &EMOTE_NOUR_RightIdle
    
    &PORTRAIT_nour_nourannoyed
    
    NOUR: "Stop talking!"
    
    &EMOTE_NOUR_DownIdle
    
    MS. SUWAN: "You're both trespassing. That could-"
    
    MS. SUWAN: "Wait."
    
    MS. SUWAN: "Nour?!"
    
    NOUR: "Uhh... Hi, Ms. Suwan."
    
    MS. SUWAN: "How <i>dare</i> you disobey me?! I told you, you were not to step foot in this building! It's unsafe <i>and</i> illegal."
    
    MS. SUWAN: "Your trespassing could mean a lot of trouble for the both of you in the face of the law."
    
    NICK: “Well, what are YOU doing here in that case?”
    
    //HER SPRITE IS SHOWN NORMALLY
    MS. SUWAN: "I AM the law."
    
    &EMOTE_NICK_LookAround
    
    NICK: "OH GOD—I'm so sorry! Please don't tell my Mom!"
    
    MS. SUWAN: "I'm part of the legal team in charge of inspecting this demolition site. As <i>she</i> knows well enough. How could you bring a child here?!"
    
    
    
    &EMOTE_NICK_DownIdle
    
    NOUR: "I-I, it-- Look, it's none of your business, okay!" //EDIT

    NOUR: "I told you if I came, it would only be to take some photos for my project. I'll take him and leave the second I'm finished, you <i>know</i> I will, I-"
    
    &FOLLOW_NICK_NickButtonPressingPos
    
    MS. SUWAN: "Save your excuses. Regardless of our previous professional relationship, Nour, I'm going to report you <i>both</i> to the authorities this instance—"
    
    &EMOTE_NICK_ButtonPress
    
    ELEVATOR BUTTONS BEEP BOOP SFX
    
    NICK: "C'mon, c'mon, c'mon!"
    
    NOUR: "Seriously, Nick?! Pushing those isn't going to work!"
    
    MS. SUWAN: "She's right. This elevator is broken. It's not going anywhere—"
    
    &ELEVATOR_CLOSE
    
    ELEVATOR DOOR CLOSES. WHIRRING AND BEEPING...PORTAL IS ACTIVATED
    
    &SHAKE
    
    &FOLLOW_SUWAN_SuwanBackup
    
    &PAUSE_1.0
    
    &EMOTE_SUWAN_DownIdle
    
    &PORTRAIT_nour_nournervous
    
    NOUR: "What the—WHAT ARE YOU DOING?!"
    
    NICK: "Nothing except SAVING OUR BUTTS!!!"
    
    &FOLLOW_NICK_NickRetreat
    
    &EMOTE_NOUR_LookAround
    
    &PAUSE_1.0
    
    NOUR: "WITH the person we're running from?!"
    
    &EMOTE_NICK_LookAround
    
    MS. SUWAN: "Hush, you foolish children! This elevator shouldn't be working at all—"
    
    &EMOTE_SUWAN_DownIdle
    
    NICK: "Why isn't it STOPPING? WHAT'S GOING ON—"
    
    &BLACK
    
    NOUR: "I don't know but BRACE YOURSELVES—!"
    
    // &FOLLOW_NICK_NOUR
    
    // &FOLLOW_SUWAN_NICK
    
    &FOLLOW_NOUR_stop
    
    &FDEIN
    
    &EMOTE_NICK_DownIdle
    
    &EMOTE_NOUR_DownIdle
    
    &ELEVATOR_OPEN
    
    &PORTRAIT_nour_nourneutral
    
    -> END

//TRANSITION
//IN DREAM PLANE
//location: Past Level - Hallway

== betaintro_hallway ==

    &PORTRAIT_nour_nourannoyed
    
    NOUR: "Ugh...I feel sick."
    
    &EMOTE_NICK_LookAround
    
    NICK: “Woah, this is crazy...! Are you seeing what I’m seeing?!”
    
    &EMOTE_NICK_DownIdle
    
    NOUR: "This...this is one of the floors of the mall! The top floor!"
    
    MS. SUWAN: "A floor that was torn down months ago..."
    
    NOUR: "We're in a place that shouldn't exist?!"
    
    NICK: "Maybe we’re in some kind of backrooms of the universe!"
    
    &EMOTE_SUWAN_LeftIdle
    
    MS. SUWAN: "…Pardon?"
    
    &EMOTE_NICK_RightIdle
    
    NICK: "Y’know, liminal spaces? Weird alternate dimensions where everything feels off."
    
    NICK: "A place where space and time aren’t acting as they should."
    
    MS. SUWAN: "We must be hallucinating. That’s the only explanation I can think of to describe… whatever it is that we’re seeing."
    
        * [Agree with her]
            NOUR: "Maybe we hit our heads somewhere...or a gas leak? We talked about those happening in one of our interviews, right?"
            
            MS. SUWAN: "The potential of them, yes. I want to agree, but..."
            
            MS. SUWAN: "This place would've been closed off much more securely if there was any immediate danger. It would've been reported to me, too."
            
            NICK: "I don't remember us knocking our heads, either!"
            
        * [Lighten the mood]
            NOUR: "Maybe this is all just a dream..."
            
            NICK: "Haha! Maybe none of us are even real. Ooo!"
            
            NOUR: "Or drugs? This could be a really, really weird trip!"
            
            NICK: "DRUGS?! What kind of drug would make up something like THIS?"
            
            NICK: "...Do you have anymore?"
            
            MS. SUWAN: "Enough of your nonsense."
    
        * [Convince her it's real]
            NOUR: "I don't know. If this floor really was torn down, I don't think we can explain anything around us with logic. Or at least, the logic of our reality."
            
            NOUR: "Wherever we are...it's definitely not the demolition site from before."
            
            NICK: "That's so cool! It's like we warped through some kind of elevator-shaped portal!"
            
            MS. SUWAN: "I'm not buying any of this. There is no such thing as a magical elevator or whatever laminated space."

    - MS. SUWAN: "This is absurd. We need to go back."
    
    &EMOTE_NOUR_UpIdle
    
    NOUR: "The elevator is closed though, and it doesn't look like the doors will budge either."
    
    &EMOTE_SUWAN_UpIdle
    
    NICK: "Then I'll just press the— Huh?!"
    
    NICK: "Hey, the buttons for this elevator are missing!"
    
    &EMOTE_NICK_UpIdle
    
    &EMOTE_NOUR_UpIdle
    
    NICK: "And why are there so many lights on this elevator? That's kinda whacky, haha!"
    
    NOUR: "None of them are turned on, though. Weird...maybe it's broken."
    
    NICK: "Yeah, this thing looks busted alright."
    
    NOUR: "No use in waiting for an elevator that won't work. We should try to find a way out of here."
    
    MS. SUWAN: "Finally, a good idea. Staying any longer will surely mean trouble."
    
    NICK: "Trouble...I like the sound of that!"
    
    MS. SUWAN: "..."
    
    MS. SUWAN: "Ignoring that."
    
    NICK: "Maybe if we find a way to make the elevator work again, we could go back down!"
    
    &EMOTE_SUWAN_DownIdle
    
    &EMOTE_NOUR_RightIdle
    
    &EMOTE_NICK_RightIdle
    
    MS. SUWAN: "It would make more sense to find another way out of here. I'm going to try calling someone..."
    
    MS. SUWAN: "..."
    
    MS. SUWAN: "Hmm. No service and no WiFi."
    
    &EMOTE_NICK_DownIdle
    
    &EMOTE_NOUR_DownIdle
    
    NICK: "Aw, man. Same! I can't play any of my phone games..."
    
    NOUR: "Well, we won't be able to leave this place just standing here."
    
    NOUR: "Maybe if we explore some of the places on this floor we can find a way back."
    
    ->END