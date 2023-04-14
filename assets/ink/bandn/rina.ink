//Temporary variables, until we decide what knot these routes end on

//rina_state can be start, bandn, topicspot, or hallway
//rina_state is altered from the other objects

== rina ==
    
    //if this isn't the first time talking to Rina, go straight to the choices
    {
        - rina_bandn:
            -> rina_branches
            
        - polaroid:
            -> rina_bandn
    }
    
    NOUR: <i>I can't talk to her. I don't even want to see her.</i>
    
    -> END


== rina_start ==
    //Everyone is pooped out of the elevator
    //they walk down 
    //elevator door CLOSES
    
    &FOLLOW_NICK_NickOutElevatorPos
    
    &FOLLOW_NOUR_NourOutElevatorPos
    
    &FOLLOW_SUWAN_SuwanOutElevatorPos
    
    &PORTRAIT_nour_nourannoyed
    
    NOUR: "Ugh... I feel sick."
    
    &PAUSE_0.5
    
    &ELEVATOR_SHUT
    
    NICK: "Woah, this is crazy! Are you seeing what I'm seeing?"
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: "This... this is one of the floors of the mall, isn't it? The top floor?"
    
    NOUR: "But it feels... something feels off."
    
    &EMOTE_NICK_UpIdle
    
    NICK: "What's with all those lights at the top of the elevator?"
    
    &EMOTE_NOUR_UpIdle
    
    &FOLLOW_SUWAN_SuwanPhonePos
    
    MS. SUWAN: "This floor was shut down <i>months</i> ago. There shouldn't even be electricity."
    
    &PORTRAIT_nour_nournervous
    
    NOUR: "We're in a place that shouldn't exist!?"
    
    NICK: "Maybe we're in some kind of liminal space of the universe!"
    
    MS. SUWAN: "... Pardon?"
    
    NICK: "Y’know, liminal spaces? Weird alternate dimensions where everything feels off."
    
    NICK: "A place where space and time aren’t acting as they should."
    
    MS. SUWAN: "..." 
    
    MS. SUWAN: "I have to call one of my higher-ups about this."
    
    Ms. Suwan checks her phone in an attempt to find a connection.
    
    &PORTRAIT_ms. suwan_suwannervous
    
    MS. SUWAN: "Hmm. No signal and no WiFi."
    
    Nick pulls out his phone, then frantically taps on the screen.
    
    &EMOTE_NICK_RightIdle
    
    &PORTRAIT_nick_nickshadow
    
    NICK: "Aw, man. Same! I can't play any of my phone games..."
    
    &MOV_RINA_START
    
    RINA: A petite girl with olive skin and dyed strawberry hair appears before the group.
    
    Her entire body is still, like a mannequin. A lifelike, breathing mannequin.
    
    &PORTRAIT_nick_nicknervous
    
    NICK: "<i>WHAT THE-</i>"
    
    &EMOTE_SUWAN_LeftIdle
    
    &EMOTE_NOUR_UpIdle
    
    &PORTRAIT_nour_nournervous
    
    NOUR: "..."
    
    MS. SUWAN: "You're not supposed to be here, young lady."
    
    NICK: "Hey, did you miss the part where she <i>magically</i> appeared in front of us!?"
    
    MS. SUWAN: "Magic? Stop messing around, little boy."
    
    NOUR: <i>...Rina?</i>
    
    &PORTRAIT_nick_nickworried
    
    NICK: "Hey, uh... Nour? You know her?"
        
        * ["Yeah. She was from my high school."]
        
        * ["I <i>knew</i> her."]
        
        * ["Does it matter?"]
    
    - NOUR: "..."
    
    RINA: "..."
    
    NICK: "Hello? Random girl that Nour recognizes? Do you see us?"

    &ALLOFF
    
    &PAUSE_1.0
    
    RINA: "You have trapped yourselves in your pasts."
    
    RINA: "It's up to you to move on."
    
    &PAUSE_1.0
    
    &MOV_RINA_BANDN
    
    NOUR: "..."
    
    NICK: "Uh, where'd she go??"
    
    NICK: "And what the heck was she talking about?"
    
    &EMOTE_NICK_UpIdle
    
    NICK: "...Well, looks like she turned off those weird lights."
    
    &EMOTE_NICK_RightIdle
    
    MS. SUWAN: "We must be hallucinating. That’s the only explanation I can think of to describe…"
    
    MS. SUWAN: "...Whatever it is that we are seeing."
    
        * [Agree with her]
            NOUR: "Maybe we hit our heads somewhere... Or a potential gas leak?"
            
            MS. SUWAN: "That <i>would</i> be somewhat realistic. I want to agree, but..."
            
            MS. SUWAN: "This place would have been closed off more securely if there were any danger."
            
            MS. SUWAN: "It would have been reported to me, as well."
            
            NICK: "I don't remember us hitting our heads anywhere, either!"
            
            &PORTRAIT_nour_nourannoyed
            
            NOUR: "Well people don't really <i>remember</i> passing out."
            
            NICK: "...Alright, fair." 
            
        * [Lighten the mood]
        
            NOUR: "Maybe this is all just a dream..."
            
            &PORTRAIT_nick_nickbigsmile
            
            NICK: "Haha! Maybe none of us are even real. Ooo~!"
            
            &PORTRAIT_nick_nickneutral
            
            NOUR: "Or drugs? This could be a really, really weird trip!"
            
            NICK: "DRUGS?! What kind of drug would make up something like THIS?"
            
            NICK: "... Do you have any more?"
            
            MS. SUWAN: "Enough of your nonsense, please."
    
        * [Convince her it's real]
            NOUR: "If this floor was torn down, I don't think we could explain anything of this with logic."
            
            NOUR: "Wherever we are... it's definitely not the demolition site from before."
            
            NICK: "That's so cool! It's like we warped through some kind of elevator-shaped portal!"
            
            MS. SUWAN: "I'm not buying any of this. There is no such thing as a magical elevator or laminated spaces."
            
            NICK: "<i>Liminal<i> spaces."
            
            Ms. SUWAN: "..."

    - MS. SUWAN: "This is absurd. We need to go back."
    
    &EMOTE_NOUR_UpIdle
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "The elevator is closed, though."
    
    NOUR: "And it doesn't look like the doors will budge either."
    
    &EMOTE_SUWAN_UpIdle
    
    &FOLLOW_NICK_NickOuterButtonPos
    
    MS. SUWAN: "Then I'll just press the—"
    
    &EMOTE_NICK_ButtonPress
    
    &PORTRAIT_nick_nickworried
    
    NICK: "Hey, the buttons for the elevator are missing!"
    
    &PORTRAIT_nour_nourneutral

    NOUR: "No use in waiting for an elevator that won't work."
    
    NOUR: "We should try to find a way out of here."
    
    &EMOTE_NICK_DownIdle
    
    &PORTRAIT_nick_nickneutral
    
    NICK: "Well... while we're at it, and since we're already here..."
    
    NICK: "I wanna see if they still have games in the TopicSpot!"
    
    MS. SUWAN: "<i>That's</i> what you are worried about right now?"
    
    NOUR: "It's a start. Who knows, maybe we'll be able to ask someone for help there."
    
    Nour hesitates. Nick and Ms. Suwan look at her, expectedly.
    
    NOUR: <i>How was Rina even here...?</i>
    
    NOUR: <i>And she said we TRAPPED OURSELVES in the past?</i>
    
    NOUR: <i>What is there to move on from?</i>
    
    NOUR: <i>...Was that even really her?</i>
    
    &FOLLOW_NICK_NOUR
    
    &FOLLOW_SUWAN_NOUR
    
    &FOLLOW_NOUR_stop
    
    -> END
    
//---------------- MAIN CHOICE BRANCHES ----------------
//All choices are always present, but they need to be unlocked.
//The ELEVATOR choice, however, is only shown once the others are chosen.
//The idea is that the player may repeatedly choose the same choice, expecting a different result.
//eventually, there WILL be a different result.
//I hope this is appropriately frustrating, not annoying.

== rina_branches ==

    RINA: "Look, 'Nour'. I don't know why you're <i>still</i> upset. You're the one who blocked me out..."
    
    RINA: "I <i>tried</i> to keep being your friend!"
    
            //DISPLAY ONCE ALL OTHER CHOICES ARE VISITED
            {
                - rina_final:
                    -> rina_elevator
            }
    
        //this choice always works, and Rina tells Nour to help the people they're with now (Nick and Suwan)
        + [Remind Rina what friends are for.]
            
            //IF THE LAST KNOTS IN BOTH ROUTES ARE VISITED:
            {
                - nourplaysaplequest && chadbrodykristy3:
                    -> rina_help
            }
            
            NOUR: "Friends are supposed to be there for each other, <i>especially</i> during hard times."
            
            NOUR: "But you weren't there for me at all on <i>that</i> day."
            
            Rina glances down at Nick, and up to Ms. Suwan.
            
            She returns her attention to Nour.
            
            RINA: "You're still thinking about what happened? ...Interesting."
            
            RINA: "You aren't ready for this—not yet. <i>They</i> need you right now."
            
            RINA: "Come back when you've helped the others first."
            
            RINA: "Maybe then you'll know how to help yourself."
        

        + [Confront Rina for what she did.]
        
            //IF THE LAST KNOT IN NICK'S ROUTE IS VISITED:
            {
                - rina_topicspot:
                    -> rina_topicspot.neverknow
                    
                - nourplaysaplequest:
                    -> rina_topicspot
            }
            
            NOUR: "I..."
            
            NOUR: "I can't. I'm not ready yet."
            
            NOUR: "I don't know how to confront what you did to me."
            
            NICK: "I get that—why even try things if you know it'll never work out?"
            
            NICK: "Giving up on stuff you know you could never succeed in just saves you the disappointment."
            
            NOUR: <i>That felt really personal to Nick. What made him lack self-esteem?</i>
            
            NOUR: <i>I wonder if I can encourage him to be more confident in himself?</i>
        

        + [Let go of what Rina did.]
        
            //IF THE LAST KNOT IN SUWAN'S ROUTE IS VISITED:
            {
                - rina_hallway:
                    -> rina_hallway.neverknow
                    
                - chadbrodykristy3:
                    -> rina_hallway
            }
            
            NOUR: "I..."
            
            NOUR: "I can't. What happened made me so, so angry. I'm <i>still</i> angry."
            
            NOUR: "I don't know how to let go."
            
            MS. SUWAN: "Then <i>don't</i>."
            
            MS. SUWAN: "Why dwell on the past? You were right back then, and you're still right now."
            
            MS. SUWAN: "Don't waste your time thinking about it. Forget it entirely."
            
            NOUR: <i>Ms. Suwan seems to be avoiding her past... But that doesn't seem healthy.</i>
            
            NOUR: <i>I'm not sure if I should listen to her.</i>
            
            NOUR: <i>But maybe... I can help her look into her past more?<i>
            
            
        + [We're done talking for now.]
           
           {
            - rina_bandn && rina_topicspot && rina_hallway:
                -> rina_final
            }
            
            Rina's eyes glaze over.
            
            NOUR: <i>I'm not ready to go through all the ways I could talk to her again about what happened.</i>
            
            NOUR: <i>I'll just try to help Nick and Ms. Suwan first.</i>
            
            -> END
    
        //"resetting" rina, as if she forgot the choice nour just made.
    -   Rina's eyes glaze over briefly. She returns to her familiar demeanor.
        
        -> rina_branches


== rina_final ==

    RINA: "You're almost ready to move on from the past... <i>Almost</i>."
    
    SFX OF POWER GENERATOR STARTING UP
    
    RINA: "I fixed the elevator that you all broke."
    
    NICK: "How the heck did you know how to do that?" (SURPRISED)
    
    MS. SUWAN: "You don't exactly seem old enough to know how to fix an elevator."
    
    NICK: "Maybe she controls the mall with her <i>magical powers</i>..."
    
    &MOV_RINA_END
    
    NICK: "See? Magical."
    
    NOUR: "Well, I guess we can get out of here now?"
    
    MS. SUWAN: "<i>Please.</i> Let us go."
    
    -> END

//---------------- BEGINNING ----------------
//first active conversation with Rina, in Bandn
//This is the big conversation about the incident in the HS cafeteria; it reaches a boiling point.
//The boiling point directs to the branches.

== rina_bandn ==

    NOUR: <i>I don't know how the hell Rina got in here, but regardless...</i>

    NOUR: <i>I can't believe we were ever friends.</i>
    
        * "Rina... I haven't seen you since graduation.["] I wish I could've kept it that way."
            
            RINA: "We don't speak for years, and this is how you greet me?"
            
            RINA: "Well, then. I see how it is."
            
            RINA: "Hello to you, too, Yousra."
            
        * "I guess this is what I get for coming back to <i>our</i> mall.["] I was really hoping I wouldn't run into you.
    
            RINA: "Hey, Yousra! Nice to see you after all these years." 
            
            RINA: "You know, I'm allowed to exist at this mall. It's not like you own it."
            
    -   * "Yousra?["] Nobody calls me that anymore. I go by Nour now."
        
            RINA: "Oh, okay."
            
            RINA: "... At least you're talking to me again."
            
            RINA: "That's a good start."
            
            RINA: "So... are we gonna talk about what happened back then? That lunch with our friends..."
            
            RINA: "We started talking about, well, you know ...gay marriage being legalized..."
            
            RINA: "What am I forgetting?"
            
                ** "You were quiet[."], while the others kept going on about how being gay is gross and weird."
                
                    RINA: "That doesn't mean I agreed with them."
                    
                    RINA: "I didn't even tell them that <i>you're</i> gay!"
                    
                ** "I had <i>just</i> come out to you."
                
                    RINA: "True, but I didn't tell anyone!"
                
    -   RINA: "I didn't tell your secret to <i>anyone</i>. Isn't that what you wanted?"
        
        * "Thanks for that...["] but that's not the point. Like I said back then, I'm mad that you didn't even try to disagree with the rest of our friends."
        
        * "I know you didn't.["] Like I said back then, I appreciate you keeping it private. I <i>don't</i> appreciate that you didn't even try to disagree with the rest of our friends.
        
    -  * "They said everything in the book...["] Like how they all thought people should keep their bad urges to themselves."
    
            NOUR: "That legalizing gay marriage would lead us down a slippery slope to <i>even worse things</i>."
                
            RINA: "What did you want <i>me</i> to do about it? Make everyone suddenly unlearn what our middle-eastern parents taught us about queerness?"
                        
                ** "I wanted you to be an ally[."], to say that you support queer people, or at least that we're supposed to love all of god's creations."
                
                    NOUR: "Even that would've been better than <i>nothing</i>!"
                
                    RINA: "If I told them I'm an ally, they would think I'm supporting something that's <i>haram</i>!"
                    
                    NOUR: "You're worried about <i>yourself</i>? In front of the person that's <i>actually</i> gay?"
                    
                    
                ** "I wanted you to disagree with them[."] and argue that they're just brainwashed by their parents."
                
                    RINA: "Yeah, but if I disagreed with them right there, they would be suspicious of <i>me</i>."
                    
                    NOUR: "You're worried about protecting <i>yourself</i>? In front of the person that's <i>actually</i> in danger?"
                
                
    -   * "Well, imagine how I feel!["] I'm the one whose basic rights were being debated."
            
        * "You can still choose to be 'normal' at the end of the day.["] But I can't change how I am."
        
    -   RINA: "I know that. But I <i>said</i> that I'm sorry. You know I wouldn't throw away ten years of friendship."
    
        RINA: "But you know what would've happened if I said something then?"
        
        RINA: "They would've told their siblings, and their cousins..."
        
        RINA: "And then people's parents would find out."
        
        RINA: "And all our parents know each other, so they'd <i>all</i> know."
        
        RINA: "Then my parents would get mad, too." (TEARING UP)
        
        RINA: "I can't help that people talk! I was just looking out for the <i>both</i> of us!"
        
        RINA: "I told you, I didn't feel any different about you after you came out..."
        
        RINA: "It's not like you could help it. I know that."
        
        RINA: "But <i>you</i> were the one who didn't want to hear it. I didn't even get a chance to make it up to you."
 
            * "It's too late. The damage is done.["] I knew if my best friend couldn't stand up for me, it would be a long time before anyone would."
            
            * "How was I supposed to know you were telling the truth?["] My parents told me nothing would change how they feel about me, too. I knew that being gay would prove that wrong."
            
            * "You still don't get it, do you?["] You can't just pick and choose when to be a good friend."
                
    - -> rina_branches


//---------------- TOPICSPOT ----------------
//At the end of Nick's route, he gains confidence in himself, and realizes he isn't stupid.
//Nour takes this to mean that she should be confident, but she's OVER confident as a result.

== rina_topicspot ==

    NOUR: "Why would I want to keep being friends with a coward who couldn't stand up for me?"
    
    RINA: "You can call me a coward. It's fine. But don't you get where I'm coming from?"
    
        * "You're not the victim here.["] You just watched from the sidelines and enabled our 'friends' to say all of that stuff about people like me."
        
            RINA: "I know I'm not the victim, but you have to admit..."
            
            RINA: "They would have hated <i>both</i> of us if I said something."
        
        * "I get that you don't have principles.["] You don't believe in anything enough to fight for it."
    
            RINA: "I <i>do</i> believe that queer people deserve respect. But I had to play it smart."
            RINA: "I knew they would hate <i>both</i> of us if I said something."
        
    -   RINA: "You know, I'm not the bad guy here. I'm not the one who said what they said."
        
            * "You might as well have.["] Being complacent is the same thing as agreeing."
            
            * "I know...["] You just stayed neutral. Not the best or the worst response."
            
    -   RINA: "You're speaking up now because you wish I had back then. Right?"
        
        RINA: "But I'm not the person you really want to confront. You want our homophobic friends to know their place."
        
        RINA: "I was just collateral, and you closed yourself to any possiblity for me to support you."
        
        RINA: "We were both afraid and inexperienced. But I could've learned."
        
        RINA: "Did you have so little faith in me?"
        
            -> neverknow
    
    = neverknow
    
        RINA: "Nour, <i>neither</i> of us had the guts to say anything back then."
        
        RINA: "You'll never know what would have happened if I spoke up."
        
        { - !neverknowlight:
                -> neverknowlight
            
            - else: 
                -> END
        }
        
    = neverknowlight
    
        &LIGHT_Nour0
        
        BEEP ELEVATOR LIGHT SFX
    
        -> light_on

//---------------- HALLWAY ----------------
//At the end of Ms. Suwan's route, Ms. Suwan is able to apologize for her past behavior and let go.
//Nour takes this to mean that she should let things slide, and she ends up being too passive as a result.

== rina_hallway ==
    
    NOUR: "Whatever. You know what, I'm not mad anymore. It's fine. I don't know why I was so upset."
    
    Nour sighs.
    
    RINA: "Really? Because a moment ago, you were huffing about how much I hurt you, and how it's hard for you to trust anyone now."
    
        * "Nope, forget it.["] I'm moving on now."
        
            RINA: "You're gonna move on, just like that. After ignoring me for three years?"
            
            ** "Well, yeah.["] Clearly, you're not going to admit that you were wrong.
            
            -> admitwrong
            
            ** "I was hurt, so I needed time.["] Time heals all wounds, or something..."
            
            -> hurtme
        
        * "Sometimes, people who care about you will hurt you.["] It's just a part of life, I've accepted that now."
        
            RINA: "I see. So you're <i>really</i> okay with expecting me to hurt you again?"
            
            ** "I guess I am.["] I should always expect those I love to hurt me.
            
            -> hurtme
            
            ** "So you admit that you hurt me?["] You admit that you were wrong?"
            
            -> admitwrong
    
    = admitwrong
    
        RINA: "That's all you want? For me to admit that I was wrong?"
        
        RINA: "Fine, I was wrong. I admit it. And I wish I didn't hurt you."
        
        -> toolate
        
    = hurtme
        
        RINA: "I know I hurt you... I'll admit, I was wrong, and I can't take back what I did."
        
        -> toolate
        
    = toolate
    
        RINA: "It's too late for that, though. You closed the door on me, right?"
        
        RINA: "I didn't <i>actually</i> get the chance to say any of this."
        
        RINA: "It's too late for this resolution."
        
        //NOTE It would be nice to incorporate consoling from Ms. Suwan here
        
        -> neverknow
        
    = neverknow
    
        RINA: "You missed your chance to forgive me, Nour. You'll never know what would have happened if you forgave me."
        
        { - !neverknowlight:
                -> neverknowlight
            
            - else: 
                -> END
        }
        
    = neverknowlight
        
        &LIGHT_Nour1
        
        BEEP ELEVATOR LIGHT SFX
        
        -> light_on


//---------------- ELEVATOR ----------------
//she's blocking the elevator; end of nour's route

== rina_elevator ==


    //umm assuming that she's blocking the elevator, which is now working...
    //that should probably be mentioned here but im tired of this rn so do it later
    
    //Ms suwan can look back at the past now
    MS. SUWAN: "Nour, think back to when you were friends with Rina. Who was she to you?"
    
    * "Rina, you were[..."] the only person who understood me."
    
        Even though this may not really be Rina, there's now a glimmer of genuine compassion in her eyes.
        
        MS. SUWAN: "Nour, you helped me tell my friends from college what I wish I could have told them sooner."
    
        MS. SUWAN: "You've already told Rina what you wish you could've said, and it isn't working for you."
        
        MS. SUWAN: "What <i>really</i> happened?"
        
        NOUR: "I remember what I told you, when I first came out..."
        
            ** "My family didn't help me feel comfortable.["] They'd make backhanded comments about how homosexuality is haram, and a terrible 'choice' to make."
            
                NOUR: "Our friends showed how they felt in that cafeteria discussion. But I knew you would never say those things to me, and I always felt comfortable around you."
            
            ** "I needed to feel like I wasn't alone.["] I couldn't share how I felt with my family, because they'd warn me that acting on it is haram."
            
                NOUR: "I couldn't tell any other friends either, point proven by that cafeteria discussion."
                
                NOUR: "So I went to you, because you were always there for me, and made sure I was never alone."
    
    -   NOUR: "And when I felt like <i>you</i> weren't looking out for me, I had nobody to go to." CONCERN
        
        //nick isn't as afraid of being a disappointment anymore
        NICK: "Why'd you <i>really</i> stop talking to Rina? Is it actually about her saying nothing?"
        
            * "I'm scared of people turning on me.["] If I left you first, you wouldn't even have a chance to make me feel bad."
            
            * "I couldn't bring you down with me.["] I guess I felt like you were better off not being associated with me. It seemed like you would have been happier that way."
            
    -   NOUR: "When I say it out loud, it feels silly. I'm still mad at you, but I don't think I want to be." (TEARING UP)
        
        NICK: "You know, I do the stuff I do... I guess because I'm frustrated at the world."
        
        NICK: "But I'm actually mad at myself, 'cause I can't be how people want me to be."
    
        NICK: "So like, you know..."
        
            * "I can't change Rina.["] I'm mad that she didn't say anything, but I'm also mad that <i>I</i> didn't say anything."
            
            * "I can't take back my own choices.["] I already made them. I'm <i>really</i> mad at myself for doing what I did, maybe even more than I was mad at Rina."
            
        - NOUR: "And it all came back to me feeling like running away was a better choice."
        
        NOUR: "I can't change what Rina did. I can't change what <i>I</i> did. It's in the past. It's up to both of us to move forward."
        
        NICK: "Well, we're here now. Whether you like it or not. Mostly 'cause we're just stuck here together."
        
        MS. SUWAN: "Correct, because Rina here is blocking the way."
        
        NICK: "Oh, yeah, move it!"
        
        RINA: "Nour, are you ready to move on?"
        
        *   "With or without you, I'm ready to move on."
        
        RINA: "Without. I'm not real, you know..." //maybe it's too silly idk
        
        NOUR: "You're in the past now."
        
        &MOV_RINA_VOID
        
        &LIGHT_Nour2
        
        BEEP ELEVATOR LIGHT SFX
        
        NICK: "NICE! Button smashing time!"
        
        MS. SUWAN: "Please don't break the elevator again."
        
        THEY WALK INTO THE ELEVATOR
        
        -> END


//---------------- HELP ----------------
//Guidance for the player; Rina tells nour to help the others
== rina_help ==

    //If this knot is already visited, display a TLDR here and end scene.
    
    NOUR: "Friends are supposed to help each other. You weren't helping me that day, but..."
    
    RINA: "Seems like you're helping your new companions. Would you consider them to be your friends?"
    
    NOUR: <i>Yeah, maybe I'm ready to explore all possible outcomes from talking to Rina. I'll try to talk to her again.</i>
    
    -> END

