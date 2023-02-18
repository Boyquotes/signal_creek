-> rina

VAR last_knot_nick_visited = false
VAR last_knot_suwan_visited = false
== rina ==
    
    //if this isn't the first time talking to Rina, go straight to the choices
    {
        - rina_bandn:
            -> rina_branches
    }
    
    //start from the beginning
    -> rina_bandn

    
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
                - last_knot_nick_visited && last_knot_suwan_visited:
                    -> rina_help
            }
            
            //OTHERWISE:
            
            Rina glances down at Nick, and up to Ms. Suwan.
            
            She returns her attention to Nour.
            
            RINA: "I think you should focus on helping the people you're with. Based on what they're saying, it seems like <i>they</i> need you right now."
            
                -> rina_reset
        

        + ["Why would I want to keep being friends with someone who is too much of a coward to stand up for me?"]
        
            //IF THE LAST KNOT IN NICK'S ROUTE IS VISITED:
            {
                - last_knot_nick_visited:
                    -> rina_topicspot
            }
            
            //OTHERWISE:
            
            NOUR: "I don't feel confident enough to confront you yet..."
            
            NICK: "I kinda get it. Why even try if you know it'll backfire?"
            
                -> rina_reset
        

        + ["Whatever. You know what, I'm not mad anymore. It's fine. I don't know why I was so upset."]
        
            //IF THE LAST KNOT IN SUWAN'S ROUTE IS VISITED:
            {
                - last_knot_suwan_visited:
                    -> rina_hallway
            }
            
            //OTHERWISE:
            
            NOUR: "I'm still too angry at you to let go..."
            
            MS SUWAN: "Makes sense. You know you were right back then, why would you want to look back?"
            
                -> rina_reset
            
        + We're done talking for now.
            
            Rina's eyes glaze over.
            
                -> END
        
        //DISPLAY ONCE ALL OTHER CHOICES ARE VISITED
            {
                - rina_bandn && rina_topicspot && rina_hallway:
                    -> rina_elevator
            }
    
    //"resetting" rina, as if she forgot the choice nour just made.
    = rina_reset
    
        Rina's eyes glaze over briefly. She returns to her familiar demeanor.
            
            -> rina_branches

//---------------- BEGINNING ----------------
//first encounter, starts Nour's arc; in bandn
//This is the big conversation about the incident in the HS cafeteria; it reaches a boiling point.
//The boiling point directs to the branches.

== rina_bandn ==

    NOUR: <i>Looks like Rina hasn't changed since high school. She has the same strawberry hair that perfectly frames her smug face.</i>
    
    NOUR: <i>I can't believe we were ever friends.</i>
    
        * "Rina... I haven't seen you since graduation.["] I wish I could've kept it that way."
            
            RINA: "We don't speak for years, and this is how you greet me?"
            
            RINA: "Hello to you, too, Yousra."
            
            -> newname
        
        * "I guess this is what I get for coming back to <i>our</i> mall.["] I was really hoping I wouldn't run into you.
    
            RINA: "Hey, Yousra! Nice to see you after all these years. You know, I'm allowed to exist at this mall. You don't own it."
            
            -> newname
            
    = newname

        * "Yousra?["] Nobody calls me that anymore. I go by Nour now.
        
            RINA: Oh, okay.
            
            RINA: This is a good start. At least you're talking to me again.
            
            RINA: So... what happened back then? We were having lunch with our friends, we started talking about gay marriage being legalized...
            
            RINA: What am I forgetting?
            
            ** "You were quiet, while the others kept going on about how being gay is immoral."
            
                RINA: "Well, sure I was quiet. But that doesn't mean I agreed with them."
                
                RINA: "I didn't tell them that *you're* gay!"
                
                -> saidnothing
            
            ** "I had just come out to you, only a few days prior."
            
                RINA: "Yeah, you did just come out to me. But I didn't tell anyone!"
                
                -> saidnothing

    = saidnothing
    
        RINA: "I didn't tell your secret to anyone. Isn't that what you wanted?"
        
        * "Thanks for that...["] but that's not the point. Like I said back then, I'm mad that you didn't even try to disagree with the rest of our friends."
        
            -> dideverything
        
        * "I know you didn't.["] Like I said back then, I appreciate you keeping it private. I *don't* appreciate that you didn't even try to disagree with the rest of our friends.
        
            -> dideverything
        
        
    = dideverything
        
            ** "They said everything in the book...["] Like how they all thought people should keep their perversions to themselves. That legalizing gay marriage would destroy family values."
                
                RINA: "What did you want <i>me</i> to do about it? Make them suddenly open-minded?"
                
                    -> doaboutit
                    
    = doaboutit

            * "I wanted you to be an ally[."], to say that you support queer people, and that you weren't going to take part in that conversation anymore."
            
                RINA: "If I told them I'm an ally, they would think I'm perverted."
                
                NOUR: "They would think *you're* perverted?"
                
                -> howifeel
                
            * "I wanted you to disagree with them[."], and argue that they're just brainwashed by conservatism."
            
                RINA: "Yeah, but if I disagreed with them right there, they would be suspicious of *me*."
                
                NOUR: "They would be suspicious of *you*?"
                
                -> howifeel
                
    = howifeel
    
            * "Well, imagine how I feel.["] I'm the one whose rights were actually being debated."
            
                -> iknowthat
            
            * "You can still choose to be 'normal' at the end of the day.["] I can't change how I am."
            
                -> iknowthat
        
    = iknowthat
    
        RINA: "I know that. But I <i>said</i> that I'm sorry. You know I wouldn't throw away ten years of friendship."
        
        Tears begin to form in Rina's eyes.
        
        RINA: "I told you, I didn't feel any different about you after you came out."
        
        RINA: "*You* were the one who didn't want to hear it. I didn't even get a chance to make it up to you."
 
            * "It's too late. The damage is done.["] I knew if my best friend couldn't stand up for me, it would be a long time before anyone would."
            
                -> rina_branches
            
            * "How was I supposed to know you were telling the truth?["] My parents told me nothing would change how they feel about me, too. I knew that being gay would prove that wrong."
            
                -> rina_branches
            
            * "You still don't get it, do you?["] You can't just pick and choose when to be a good friend."
            
                -> rina_branches


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
        
            -> notbadguy
    
    * "I get that you don't have principles.["] You don't believe in anything enough to fight for it."
    
        RINA: "I <i>do</i> believe that queer people deserve respect. But I had to play it smart, I knew they would hate <i>both</i> of us if I said something."
        
            -> notbadguy
            
    = notbadguy
    
        RINA: "You know, I'm not the bad guy here. I'm not the one who said what they said."
        
        * "You might as well have.["] Being complacent is the same thing as agreeing."
        
        * "I know...["] You just stayed neutral. Not the best response, not the worst response."
        
        
    
    = neverknow
    
    
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
            
                ->hurtme
        
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
    
        RINA: "You missed your chance to forgive me, Nour."

            -> END

//---------------- ELEVATOR ----------------
//she's blocking the elevator; end of nour's route

== rina_elevator ==

    //If this knot is already visited, display a TLDR here and end scene.
    //CHOICE: Nour explains why this hurt them so much.
    
    //RINA: "You blocked me, ignored me, iced me out. It was like you didn't really know me, and you expected me to be like them."
    //what really happened: Nour got extremely vulnerable. They cried b/c they thought that they'd have at least one person to stand up for them, when it felt like their family was against them.
    //Rina got defensive-- first, she argued that she was right, and that she would have been bullied if she stood up for Nour. Then, she asked nour to just move on, and forget that it happened.
    //Nour sees how Nick and Ms. Suwan were able to grow past those problems. Nour knows they've been struggling through the same problems. 
    //They are able to let go, and understand that people change over time. They've grown past that experience, and it's up to Rina to do the same.
    //Rina shlorps out of existence.
    
    -> END


//---------------- HELP ----------------
//Guidance for the player; Rina tells nour to help the others
== rina_help ==

    //If this knot is already visited, display a TLDR here and end scene.
    
    NOUR: "Friends are supposed to help each other. You weren't helping me that day, but..."
    
    RINA: "Seems like you're helping your new companions... would you consider them to be your friends?"
    
    -> END

