=== betaintro_main1 ===
    //IN REALITY
    //location: elevator
    //NICK AND NOUR RUN INTO THE ELEVATOR
    
    &SPEED_NICK_120.0
    &SPEED_NOUR_100.0
    &FOLLOW_NICK_NickElevatorPos
    &FOLLOW_SUWAN_SuwanStartingPos
    &POS_SUWAN_160,248
    &FOLLOW_NOUR_NourStartingPos
    
    &PORTRAIT_nick_nickangry
    
    NICK: “HURRY UP, NOUR! There's no way she'll find us if we hide in here!"
    
    &SOUND_poopman
    
    &PAUSE_0.5
    
    &EMOTE_NICK_DownIdle
    
    &FOLLOW_NOUR_NourElevatorPos
    &EMOTE_NICK_LeftIdle
    
    &PAUSE_0.5
    
    &EMOTE_NOUR_RightIdle
    
    &PORTRAIT_nour_nourannoyed
    
    NOUR: “In the BROKEN ELEVATOR?!”
    
    &PORTRAIT_nour_nourangry
    
    NOUR: "Explain to me why this was a good idea."
    
    &SOUND_InquisitiveSound

    &SPEED_NICK_72.0
    &SPEED_NOUR_72.0
    
    &PORTRAIT_nour_nournervous
    
    // &PORTRAIT_nour_placeholder
    
    &PORTRAIT_nick_nicknervous
    
    NICK: "Uh..."
    
        * "We have to get out of here!"
    
            NICK: "No way! Then, she's gonna—"
            
            &FOLLOW_SUWAN_NOUR
            
        * "This is what I get for listening to a stupid kid!"
        
            &PORTRAIT_nour_nourangry
            
            &PORTRAIT_nick_nickangry
    
            NICK: "Hey! You listening to me is technically <i>YOUR</i> fault, not mine."
            
            NICK: "I didn't <i>FORCE</i> you to follow me in here!"
    
            NICK: "And I'm NOT stupid—"
            
            
        * "Shhh! Shut up, Nick!"
    
            NICK: "NO, <i>YOU</i> SHUT UP!"
    
            NOUR: "If you keep making so much noise, she's going to <i>find us</i>, you idiot—"
            
            
    - MS. SUWAN: "Stop right there."
    
    &FOLLOW_SUWAN_SuwanElevatorPos
    
    &EMOTE_NOUR_DownIdle
    
    // &VOLUME_-80.0
    
    &PAUSE_1.0
    
    &EMOTE_NICK_LookAround
    
    &EMOTE_NICK_DownIdle
    
    &EMOTE_SUWAN_UpIdle
    
    &PORTRAIT_nick_nicknervous
    
    NICK: "Aw, shoot! The scary old lady caught up!"
    
    MS. SUWAN: "What did you just call me?"
    
    &EMOTE_NOUR_RightIdle
    
    &PORTRAIT_nour_nourannoyed
    
    NOUR: "Nick, stop talking!"
    
    &EMOTE_NOUR_DownIdle
    
    MS. SUWAN: "Both of you are trespassing. That could-"
    
    MS. SUWAN: "...Wait."
    
    MS. SUWAN: <i>"Nour?!"</i>
    
    &PORTRAIT_nour_nournervous
    
    NOUR: "Uhh... Hi, Ms. Suwan."
    
    MS. SUWAN: "How <i>dare</i> you disobey me?!"
    
    MS. SUWAN: "I told you that you were <i>not</i> to step foot in this building!"
    
    MS. SUWAN: "You know very well that it is unsafe."
    
    MS. SUWAN: "Not to mention, your trespassing could lead to <i>serious</i> trouble with the law."
    
    &PORTRAIT_nick_nickshocked
    
    NICK: “Well, what are YOU doing here in that case?”

    MS. SUWAN: "I AM the law."
    
    &EMOTE_NICK_LookAround
    &PORTRAIT_nick_nicktears
    
    &PORTRAIT_nick_nicknervous
    
    NICK: "OH GOD— I'm so sorry! Please don't tell my Mom!"
    
    MS. SUWAN: "I am leading the legal team responsible for inspecting this demolition site."
    
    MS. SUWAN: "As <i>Nour</i> knows very well."
    
    MS. SUWAN: "Nour, how could you bring a <i>CHILD</i> here?!"
    
    &EMOTE_NICK_DownIdle
    
    &PORTRAIT_nour_nourannoyed
    
    NOUR: "I-I, it— Look, it's none of your business, okay!"
    
    &PORTRAIT_nour_nournervous

    NOUR: "I <i>told</i> you— if I came, it would just be to take some photos for my project!"
    
    NOUR: "I'll take him and leave the second I'm finished, you <i>know</i> I will, I-"
    
    &FOLLOW_NICK_NickButtonPressingPos
    
    MS. SUWAN: "Save your excuses."
    
    MS. SUWAN: "Regardless of our professional relationship, Nour..."
    
    MS. SUWAN: "...I will have to report <i>both</i> of you to law enforcement."
    
    &EMOTE_NICK_ButtonPress
    
    &EMOTE_SUWAN_DownIdle
    
    Nick begins frantically pressing elevator buttons.
    
    //&SOUND_ElevatorButtons
    
    NICK: "C'mon, c'mon, c'mon!"
    
    &PORTRAIT_nour_nourannoyed
    
    NOUR: "Seriously, Nick?! Pushing those isn't going to work!"
    
    MS. SUWAN: "She's right. This elevator is broken. It's not going anywhere—"
    
    &ELEVATOR_CLOSE
    
    //&SOUND_ElevatorDoorClose
    
    &SHAKE
    
    &FOLLOW_SUWAN_SuwanBackup
    
    &PAUSE_1.0
    
    &EMOTE_SUWAN_DownIdle
    
    &PORTRAIT_nour_nournervous
    
    NOUR: "What the—WHAT ARE YOU DOING?!"
    
    &PORTRAIT_nick_nickangry
    
    NICK: "Nothing except SAVING OUR BUTTS!!!"
    
    &FOLLOW_NICK_NickRetreat
    
    &EMOTE_NOUR_LookAround
    
    &PAUSE_1.0
    
    &PORTRAIT_nour_nourangry
    
    NOUR: "WITH the person we're running from?!"
    
    &EMOTE_NICK_LookAround
    
    MS. SUWAN: "Quiet, you foolish children! This elevator shouldn't be working at all—"
    
    &EMOTE_SUWAN_DownIdle
    
    &PORTRAIT_nick_nicknervous
    
    NICK: "Why isn't it STOPPING? WHAT'S GOING ON—"
    
    &PORTRAIT_nour_nournervous
    
    NOUR: "I don't know but... BRACE YOURSELVES!"
    
    &BLACK
    
    &PAUSE_0.5
    
    &FOLLOW_NOUR_stop
    
    &FOLLOW_NICK_NOUR
    
    &FOLLOW_SUWAN_NICK
    
    &FDEIN
    
    &EMOTE_NICK_DownIdle
    
    &EMOTE_NOUR_DownIdle
    
    &ELEVATOR_OPEN
    
    -> END