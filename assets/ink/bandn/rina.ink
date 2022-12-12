INCLUDE bandn/bookstack.ink
INCLUDE topicspot/makeup.ink
INCLUDE topicspot/manager.ink
INCLUDE hallway/pretzelstand.ink
INCLUDE hallway/partyposter.ink
INCLUDE hallway/cafetables.ink
//---------------- DREAM WORLD ----------------

// rina will be divided up differently than most other objects, into 'interactions' instead of dreamvisited/realvisited (first interaction, second, third, etc.)

// and then we add as many ===interaction=== parts as we need for the future based on other objects that the player interacts with! 

== rina_dream ==

    NOUR: "Uh... Rina?"
    
    RINA: "Yousra? It's so good to see you, ohmygod!"
    
    Rina twirls her hair and smirks.
    
    RINA: "How *are* you? It's been SO long!"
    
    RINA: "You look, uh... different from back in highschool."
    
    NOUR: "Yeah. I know. What about it?"
    
    RINA: "*Oh*, alright. I see how it is."
    
    RINA: "You know, something always seemed off about you."
    
    Nour clenches her jaw and exhales sharply.

:NOUR:

    * [Say nothing.] Nour says nothing. She'll keep holding back, just like she's used to.
    
        -> saynothing
    
    * ["You know what? I'm tired of you walking all over me."]NOUR: "You know what, I'm tired of you walking all over me. This isn't high school anymore, and I'm *not* your emotional punching bag."
    
        -> tiredofyou
    
    * ["Like what?"]NOUR: "Like what? Why do I seem off to you?"
    
        -> doiseemoff
        
    * -> nothingelse


//in this path, nour chooses to say nothing, remaining complacent as she was in the past
=saynothing

    RINA: "Oh, don't look like that, Yousra! I'm just joking. You know we're still best friends, right?"
    
    RINA: "Remember when we came to the mall in junior year, and got best friend bracelets from Claira's?"
    
    NOUR: "You couldn't even stand up for your "best friend" when our other "friends" were having that argument. They said people like me shouldn't be in public."
    
    NOUR: "And then, when we got into a fight, you threw your bracelet at me, and called me a freak."
    
    RINA: "You know I was just kidding."
    
    Nour sighs.
    
    NOUR: "Yeah... Everyone says that."
    
    &Nour stands, silently, trembling.
    
    -> DONE


//in this path, nour escalates the situation super quickly, and it blows up at her.
=tiredofyou

    RINA: "You *bitch*! I was the only person in our friend group who even talked to you after the fight, everyone else thought you were a freak."
    
    RINA: "You should be grateful."
    
    NOUR: "You couldn't even stand up to them for me. You said NOTHING."
    
    Nour raises her fist, ready to strike Rina.
    
    NOUR: "I blame you for *so* much of my suffering in high school. I wish you were sorry for what you did. You shallow, selfish-"
    
    &Rina disappears from view.
    
    -> DONE


//in this path, nour is on the verge of escalating things
=doiseemoff

    RINA: "God, you're so funny, Yousra. I'm just messing with you! We're still best friends, right?"
    
    NOUR: "I mean..."
    
    :NOUR:
    
    ** ["I know what you said behind my back."]NOUR: "You can keep acting like that, but I know what you said behind my back. I know you outed me to the rest of our friends."
        -> behindmyback
    
    ** ["Why the hell are you STILL pretending to be my friend?"]NOUR: "Why the hell are you STILL pretending to be my friend? I know  outed me to the rest of our friends.
        -> behindmyback

//things blow up after a steady escalation   
=behindmyback

    RINA: "I, uh, yeah..."
    
    Rina glances sideways, lip trembling.
    
    NOUR: "I just, I just... I thought we were friends. I thought I could TRUST you."
    
    NOUR: "When all our "friends" were arguing about gay rights, after Obergefell v. Hodges was done. You said *nothing*."
    
    Nour raises her fist, ready to strike her.
    
    NOUR: "You know, that really fucked me up. That really, really fucked me up."
    
    RINA: "I just didn't want them to think I was, like, you know..."
    
    &NOUR: "A freak? Gay? like me?"
    
    -> DONE

=nothingelse

    Nour has nothing else to say to Rina. What's done is done.
    
    Rina stares at her, blankly.
    
    &Nour's fists loosen, and Rina fades from view.
    
    The party comforts Nour, attempting to help her move past this incident.
    
    -> END
 

== rina_realvisited ==

+   -> rina_dream

//SUBSEQUENT DREAM KNOTS HERE


//---------------- REAL WORLD ----------------

== rina_real ==

+   -> rina_dream

== rina_dreamvisited ==

+   -> rina_dream

//She's not in the real world, if these redirects are needed, there's an error
