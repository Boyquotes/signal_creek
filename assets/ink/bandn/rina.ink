//Temporary variables, until we decide what knot these routes end on

//rina_state can be start, bandn, topicspot, or hallway
//rina_state is altered from the other objects

== rina ==
    
    //if this isn't the first time talking to Rina, go straight to the choices
    {
        - !rina_start:
            -> rina_start
            
        - rina_bandn:
            -> rina_branches
            
        - rina_start:
            -> rina_bandn
    }
    
    //start from the beginning
    -> rina_start


== rina_start ==

    A petite girl with olive skin and dyed strawberry hair stands before the group.
    
    Her entire body is still, as if she's a mannequin. A lifelike, breathing mannequin.
    
    There's an immediate glimmer of recognition from Nour.
    
    NOUR: <i>Looks like Rina hasn't changed since high school.</i>
    
    NICK: "Hey, uh... Nour. Do you know her?"
    
        * "Yeah, I <i>did</i>."
        
        * "She was from my high school."
    
    - Nour says nothing.
    
    NICK: "Hello? Random girl that Nour recognizes? Do you see us?"
    
    Rina pays no mind to her surroundings.
    
    RINA BECOMES INVISIBLE
    
    There's visible panic on Nour's face.
    
    NICK: "Guess she didn't wanna talk, huh."
    
    MS SUWAN: "The more you children talk about your hallucinations, the more I begin to see them too. Maybe we should keep those comments to ourselves."
    
    -> END
    
//---------------- MAIN CHOICE BRANCHES ----------------
//All choices are always present, but they need to be unlocked.
//The ELEVATOR choice, however, is only shown once the others are chosen.
//The idea is that the player may repeatedly choose the same choice, expecting a different result.
//eventually, there WILL be a different result.
//I hope this is appropriately frustrating, not annoying.

== rina_branches ==

    RINA: Look, "Nour". I don't know why you're <i>still</i> upset. You're the one who blocked me out... I <i>tried</i> to keep being your friend!
    
        //this choice always works, and Rina tells Nour to help the people they're with now (Nick and Suwan)
        + "Friends help each other when they need it, not afterwards."
            
            //IF THE LAST KNOTS IN BOTH ROUTES ARE VISITED:
            {
                - nicktalksaboutfantasygame && chadbrodykristy3:
                    -> rina_help
            }
            
            Rina glances down at Nick, and up to Ms. Suwan.
            
            She returns her attention to Nour.
            
            RINA: "I think you should focus on helping the people you're with. Based on what they're saying, it seems like <i>they</i> need you right now."
        

        + ["Why would I want to keep being friends with someone who is too much of a coward to stand up for me?"]
        
            //IF THE LAST KNOT IN NICK'S ROUTE IS VISITED:
            {
                - nicktalksaboutfantasygame:
                    -> rina_topicspot
            }
            
            NOUR: "I don't feel confident enough to confront you yet..."
            
            NICK: "I kinda get it. Why even try if you know it'll backfire?"
        

        + ["Whatever. You know what, I'm not mad anymore. It's fine. I don't know why I was so upset."]
        
            //IF THE LAST KNOT IN SUWAN'S ROUTE IS VISITED:
            {
                - chadbrodykristy3:
                    -> rina_hallway
            }
            
            NOUR: "I'm still too angry at you to let go..."
            
            MS SUWAN: "Makes sense. You know you were right back then, why would you want to look back?"
            
            
        + We're done talking for now.
            
            Rina's eyes glaze over.
            
                -> END
        
        //DISPLAY ONCE ALL OTHER CHOICES ARE VISITED
            {
                - rina_bandn && rina_topicspot && rina_hallway:
                    -> rina_elevator
            }
    
        //"resetting" rina, as if she forgot the choice nour just made.
    -   Rina's eyes glaze over briefly. She returns to her familiar demeanor.
            
        -> rina_branches

//---------------- BEGINNING ----------------
//first active conversation with Rina, in Bandn
//This is the big conversation about the incident in the HS cafeteria; it reaches a boiling point.
//The boiling point directs to the branches.

== rina_bandn ==

    NOUR: <i>I can't believe we were ever friends.</i>
    
        * "Rina... I haven't seen you since graduation.["] I wish I could've kept it that way."
            
            RINA: "We don't speak for years, and this is how you greet me?"
            
            RINA: "Hello to you, too, Yousra."
            
        * "I guess this is what I get for coming back to <i>our</i> mall.["] I was really hoping I wouldn't run into you.
    
            RINA: "Hey, Yousra! Nice to see you after all these years. You know, I'm allowed to exist at this mall. You don't own it."
            
    -   * "Yousra?["] Nobody calls me that anymore. I go by Nour now.
        
            RINA: Oh, okay.
            
            RINA: This is a good start. At least you're talking to me again.
            
            RINA: So... what happened back then? We were having lunch with our friends, we started talking about gay marriage being legalized...
            
            RINA: What am I forgetting?
            
                ** "You were quiet, while the others kept going on about how being gay is gross and weird."
                
                    RINA: "Well, sure I was quiet. But that doesn't mean I agreed with them."
                    
                    RINA: "I didn't tell them that <i>you're</i> gay!"
                    
                ** "I had just come out to you, only a few days prior."
                
                    RINA: "Yeah, you did just come out to me. But I didn't tell anyone!"
                
    -   RINA: "I didn't tell your secret to <i>anyone</i>. Isn't that what you wanted?"
        
        * "Thanks for that...["] but that's not the point. Like I said back then, I'm mad that you didn't even try to disagree with the rest of our friends."
        
        * "I know you didn't.["] Like I said back then, I appreciate you keeping it private. I <i>don't</i> appreciate that you didn't even try to disagree with the rest of our friends.
        
    -  * "They said everything in the book...["] Like how they all thought people should keep their bad urges to themselves."
    
            NOUR: "That legalizing gay marriage would lead us down a slippery slope to <i>even worse things</i>."
                
            RINA: "What did you want <i>me</i> to do about it? Make everyone suddenly unlearn what our middle-eastern parents taught us about queerness?"
                        
                ** "I wanted you to be an ally[."], to say that you support queer people, or at least that we're supposed to love all of god's creations, or whatever."
                
                    RINA: "If I told them I'm an ally, they would think I'm gross."
                    
                    NOUR: "They would think <i>you're</i> gross?"
                    
                    
                ** "I wanted you to disagree with them[."], and argue that they're just brainwashed by their parents."
                
                    RINA: "Yeah, but if I disagreed with them right there, they would be suspicious of <i>me</i>."
                    
                    NOUR: "They would be suspicious of <i>you</i>?"
                
                
    -   * "Well, imagine how I feel.["] I'm the one whose rights were actually being debated."
            
        * "You can still choose to be 'normal' at the end of the day.["] I can't change how I am."
        
    -   RINA: "I know that. But I <i>said</i> that I'm sorry. You know I wouldn't throw away ten years of friendship."
    
        RINA: "But you know what would've happened if I said something then?"
        
        RINA: "They would've told their siblings, and their cousins. And then people's parents would find out. And all our parents know each other, so they'd <i>all</i> know."
        
        RINA: "Then my parents would get mad, too."
        
        Tears begin to form in Rina's eyes.
        
        RINA: "I told you, I didn't feel any different about you after you came out... It's not like you could help it."
        
        RINA: "<i>You</i> were the one who didn't want to hear it. I didn't even get a chance to make it up to you."
 
            * "It's too late. The damage is done.["] I knew if my best friend couldn't stand up for me, it would be a long time before anyone would."
            
            * "How was I supposed to know you were telling the truth?["] My parents told me nothing would change how they feel about me, too. I knew that being gay would prove that wrong."
            
            * "You still don't get it, do you?["] You can't just pick and choose when to be a good friend."
                
    - -> rina_branches


//---------------- TOPICSPOT ----------------
//At the end of Nick's route, he gains confidence in himself, and realizes he isn't stupid.
//Nour takes this to mean that she should be confident, but she's OVER confident as a result.

== rina_topicspot ==
    
    //If this knot is already visited, display a TLDR here and end scene.
    {
        - rina_topicspot:
            -> neverknow
    }
    
    NOUR: "Why would I want to keep being friends with someone who is too much of a coward to stand up for me?"
    
    RINA: "Listen, you can call me a coward. It's fine. But don't you get where I'm coming from?"
    
        * "You're not the victim here.["] You just watched from the sidelines and enabled our 'friends' to say all of that stuff about people like me."
        
            RINA: "I know I'm not the victim, but you have to admit... They would have hated <i>both</i> of us if I said something."
        
        * "I get that you don't have principles.["] You don't believe in anything enough to fight for it."
    
            RINA: "I <i>do</i> believe that queer people deserve respect. But I had to play it smart, I knew they would hate <i>both</i> of us if I said something."
        
    -   RINA: "You know, I'm not the bad guy here. I'm not the one who said what they said."
        
            * "You might as well have.["] Being complacent is the same thing as agreeing."
            
            * "I know...["] You just stayed neutral. Not the best response, not the worst response."
            
    -   RINA: "You're speaking up now, because you wish I did back then. Right?"
        
        RINA: "But I'm not the person you really want to confront. You want our homophobic friends to know their place."
        
        RINA: "I was just collateral, and you closed yourself to any possiblity for me to support you."
        
            -> neverknow
    
    = neverknow
    
        RINA: "Nour, <i>neither</i> of us had the guts to say anything back then. You'll never know what would have happened if I spoke up."
    
            -> END

//---------------- HALLWAY ----------------
//At the end of Ms. Suwan's route, Ms. Suwan is able to apologize for her past behavior and let go.
//Nour takes this to mean that she should let things slide, and she ends up being too passive as a result.

== rina_hallway ==
    
    //If this knot is already visited, display a TLDR here and end scene.
    {
        - rina_hallway:
            -> neverknow
    }
    
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
        
        RINA: "Fine, I was wrong. I admit it. And I wish I didn't hurt you"
        
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

            -> END

//---------------- ELEVATOR ----------------
//she's blocking the elevator; end of nour's route

== rina_elevator ==


    //umm assuming that she's blocking the elevator, which is now working...
    //that should probably be mentioned here but im tired of this rn so do it later
    
    //Ms suwan can look back at the past now
    MS SUWAN: "Nour, think back to when you were friends with Rina. Who was she to you?"
    
    * "Rina, you were[..."] the only person who understood me."
    
        Even though this may not really be Rina, there's now a glimmer of genuine compassion in her eyes.
        
        MS SUWAN: "Nour, you helped me tell my friends from college what I wish I could have told them sooner."
    
        MS SUWAN: "You've already told Rina what you wish you could've said, and it isn't working for you."
        
        MS SUWAN: "What <i>really</i> happened?"
        
        NOUR: "I remember what I told you, when I first came out..."
        
            ** "My family didn't help me feel comfortable.["] They'd make backhanded comments about how homosexuality is haram, and a terrible 'choice' to make."
            
                NOUR: "Our friends showed how they felt in that cafeteria discussion. But I knew you would never say those things to me, and I always felt comfortable around you."
            
            ** "I needed to feel like I wasn't alone.["] I couldn't share how I felt with my family, because they'd warn me that acting on it is haram."
            
                NOUR: "I couldn't tell any other friends either, point proven by that cafeteria discussion."
                
                NOUR: "So I went to you, because you were always there for me, and made sure I was never alone."
    
    -   NOUR: "And when I felt like <i>you</i> weren't looking out for me, I had nobody to go to."
        
        //nick isn't as afraid of being a disappointment anymore
        NICK: "Why'd you <i>really</i> stop talking to Rina? Is it actually about her saying nothing?"
        
            * "I'm scared of people turning on me.["] If I left you first, you wouldn't even have a chance to make me feel bad."
            
            * "I couldn't bring you down with me.["] I guess I felt like you were better off not being associated with me. It seemed like you would have been happier that way."
            
    -   NOUR: "When I say it out loud, it feels silly. I'm still mad at you, but I don't think I want to be."
        
        NICK: "You know, I do the stuff I do... I guess because I'm frustrated at the world."
        
        NICK: "But I'm actually mad at myself, 'cause I can't be how people want me to be."
    
        NICK: "So like, you know..."
        
            * "I can't change Rina.["] I'm mad that she didn't say anything, but I'm also mad that <i>I</i> didn't say anything."
            
            * "I can't take back my own choices.["] I already made them. I'm <i>really</i> mad at myself for doing what I did, maybe even more than I was mad at Rina."
            
        - NOUR: "And it all came back to me feeling like running away was a better choice."
        
        NOUR: "I can't change what Rina did. I can't change what <i>I</i> did. It's in the past. It's up to both of us to move forward."
        
        NICK: "Well, we're here now. Whether you like it or not. Mostly 'cause we're just stuck here together."
        
        MS SUWAN: "Correct, because Rina here is blocking the way."
        
        NICK: "Oh, yeah, move it!"
        
        RINA: "Nour, are you ready to move on?"
        
        *   "With or without you, I'm ready to move on."
        
        RINA: "Without. I'm not real, you know..." //maybe it's too silly idk
        
        NOUR: "You're in the past now."
        
        RINA DISAPPEARS.
        
        NICK: "NICE! Button smashing time!"
        
        MS SUWAN: "Please don't break the elevator again."
        
        -> END


//---------------- HELP ----------------
//Guidance for the player; Rina tells nour to help the others
== rina_help ==

    //If this knot is already visited, display a TLDR here and end scene.
    
    NOUR: "Friends are supposed to help each other. You weren't helping me that day, but..."
    
    RINA: "Seems like you're helping your new companions. Would you consider them to be your friends?"
    
    -> END

