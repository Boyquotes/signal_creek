== wertoys ==

    It's the old toy store, <i>We R Toys</i>.

    {
        - wertoys_find_prince:
            -> wertoys_end
            
        - consoles_start_aplequest && beautystand_find_pinklady && bobatea_find_dukedelicious && fountain_findfather && weirdtree_findgranny:
            -> wertoys_find_prince
            
        - wertoys_before_aplequest:
            -> wertoys_before_aplequest_repeat
            
        - else:
            -> wertoys_before_aplequest
    }
    

== wertoys_before_aplequest ==

    MS. SUWAN: "It's been ransacked. Typical. Those who break into this mall are <i>children</i>."

    NOUR: "I remember fighting with my parents about what kind of toys are normal for girls."
    
    NICK: "Man, talk about a mood killer. What did the toy store do to you two?"
    
    -> END
    
== wertoys_end ==
    
    After an exchange of encouraging words, the Apple Prince has left the store.
    
    -> END

== wertoys_find_prince == 
    
    NOUR: "..."
    
    &PORTRAIT_???_princependragonsad
    
    ???: "I feel... so... useless..."
    
    NOUR: "What the... Hello?"
    
    &SHLORP_APPLE_PrincePendragon_in
    
    ???: "Down here."
    
    PRINCE PENDRAGON: "I am the fallen prince... Prince Pendragon."
    
    NOUR: "...Uh-"
    
    &PORTRAIT_prince pendragon_princependragonsad
    
    PRINCE PENDRAGON: "<i>FALLEN</i>, I say! Fallen from the Mother Tree, fallen from the sky, fallen from grace..."
    
    PRINCE PENDRAGON: "...onto this floor."
    
    NOUR: "You're <i>the</i> Prince?"
    
    NICK: Nick's eyes widen.
    
    &PORTRAIT_prince pendragon_princependragonbashful
    
    PRINCE PENDRAGON: "You've heard of little ol' me?"
    
    NOUR: "We've heard many things about you from the council."
    
    &PORTRAIT_prince pendragon_princependragonsad
    
    PRINCE PENDRAGON: "The others speak of nothing but their disapointment in me, the <i>failure</i>, I presume?"
    
    &PORTRAIT_prince pendragon_princependragonneutral
    
    NOUR: "Actually, the opposite."
    
    * "They said your people need you."
    
        PRINCE PENDRAGON: "They need... <i>me</i>?
    
    * "They said you have a noble heart."
    
        PRINCE PENDRAGON: "Me? A noble heart?"
        
    * "They said you are beloved by all."
    
        PRINCE PENDRAGON: "I am... beloved?"
        
    - &PORTRAIT_prince pendragon_princependragonsad   
    
    PRINCE PENDRAGON: "No, that cannot be true."
    
    MS. SUWAN: "Unfortunately, I am <i>somehow</i> able to corroborate."
        
    PRINCE PENDRAGON: "You do not understand!"
    
    PRINCE PENDRAGON: "Daddy threw me away, like the rotten little boy I am."
    
    PRINCE PENDRAGON: "He sent me to Earth as punishment for my failures on the battlefield."
    
    PRINCE PENDRAGON: "The floor is all I know, and it is where I belong."
    
    NOUR: "You've gotta pick yourself up off that floor at some point."
    
    PRINCE PENDRAGON: "How can I? My skin is not firm enough to roll me forward!"
    
    PRINCE PENDRAGON: "My flesh isn't juicy enough for the lady apples!"
    
    PRINCE PENDRAGON: "And I am too <i>tiny</i> for the crown!"
    
    NOUR: "Uh... What?"
    
    &PORTRAIT_prince pendragon_princependragontears
    
    PRINCE PENDRAGON: "I'll never be brave, smart, or juicy enough. I am simply unfit to be a prince."
    
    &PORTRAIT_nick_nicknervous
    
    NICK: "..."
    
    * "There's more to apples than juice and skin."
    
        PRINCE PENDRAGON: "More than juice and skin? Nothing else makes a good apple."
    
    * "Why did the Emperor really send you here?"
    
        PRINCE PENDRAGON: "Like I told you... I am not fit to be prince."
    
    - NOUR: "I'd have to disagree."
    
    PRINCE PENDRAGON: "How?"
    
    NOUR: "Well, for one... You seem like a sweet apple."
    
    &PORTRAIT_prince pendragon_princependragonbashful
    
    PRINCE PENDRAGON: "Hoo hoo, you think so?"
    
    &PORTRAIT_nour_noursmile
    
    NOUR: "And nutritious..."
    
    &PORTRAIT_prince pendragon_princependragonneutral
    
    PRINCE PENDRAGON: "Human, I am not for consumption!"
    
    &PORTRAIT_prince pendragon_princependragonbashful
    
    PRINCE PENDRAGON: "But you flatter me..."
    
    NOUR: "Just because you don't fit the mold of a typical apple, doesn't mean you're any less worthy."
    
    &PORTRAIT_prince pendragon_princependragontears
    
    NICK: "..."
    
    * "Remind yourself of your strengths."
    
        NOUR: "You have a lot to offer to the world."
        
        PRINCE PENDRAGON: "What could I offer? I have nothing."
    
    * "Don't compare yourself to others."

        NOUR: "And don't compare yourself to others."
        
        PRINCE PENDRAGON: "It is hard not to... There are far better apples than I..."
    
    - &PORTRAIT_nick_nicksad 
    
    NICK: "No, that's not true, Prince!"
    
    &PORTRAIT_nour_nourshocked
    
    NOUR: "...!"
    
    NICK: "The only reason Emperor Evercrisp sent you to Earth was for your own protection."
    
    NICK: "From the Fruit Wars!"
    
    NICK: "It wasn't about your worth."
    
    &PORTRAIT_nick_nicknervous
    
    NICK: "You're really smart, and good at picking up on things about people."
    
    &PORTRAIT_nick_nickneutral
    
    NICK: "Remember when you used your observation skills to figure out the Cornling's battle strategy?"
    
    &PORTRAIT_prince pendragon_princependragonneutral
    
    PRINCE PENDRAGON: "Ah, yes... I studied Cornlings for <i>months</i>..."
    
    NICK: "And you were able to help the Bean Boys get their town back from the Cornling army."
    
    &PORTRAIT_prince pendragon_princependragonsmile
    
    PRINCE PENDRAGON: "You know, I met the Prince of Corn... In fact, he and I became friends."
    
    NICK: "No way! That wasn't even in Aple Quest! Oh man..."
    
    NICK: "So the secret traitor of the Cornlings was the Prince of Corn this WHOLE TIME?"
    
    NICK: "You aren't a failure—you're a <i>hero</i>. It takes a lot of smarts and guts to do all that!"
    
    &PORTRAIT_prince pendragon_princependragonneutral
    
    PRINCE PENDRAGON: "I... I see. Perhaps I was focusing so much on my mistakes that I allowed it to cloud my mind."
    
    PRINCE PENDRAGON: "We are not our mistakes! We are not our failures!"
    
    NICK: "That's right! We <i>aren't</i>! You shouldn't be the one to bring yourself down."
    
    NICK: "And... I know what it's like to wanna give up on everything."
    
    NICK: "Not feeling good enough for anyone."
    
    NICK: "But the council, the Prince of Corn, and the Emperor... They care about you!"
    
    NICK: "They need you to win the war, but they also wanted you to be safe!"
    
    NICK: "And now they're worried they can't find you!"
    
    &PORTRAIT_prince pendragon_princependragonsad
    
    PRINCE PENDRAGON: "I can't believe I did that to everyone..."
    
    NICK: "They <i>love</i> you no matter what, Prince Pendragon!"
    
    PRINCE PENDRAGON: "How could I have forgotten... The very reason I fight?"
    
    &PORTRAIT_prince pendragon_princependragonneutral
    
    PRINCE PENDRAGON: "I can't afford to wallow in self-pity! The people need me."
    
    PRINCE PENDRAGON: "My... My <i>family</i> needs me!"
    
    PRINCE PENDRAGON: "Thank you, young human. I see the wisdom in my father's decision to send me here."
    
    PRINCE PENDRAGON: "And likewise, his decision to send YOU all here to bring me back!"
    
    PRINCE PENDRAGON: "Perhaps... it is <i>I</i> who will bring peace to the fruits!"
    
    NICK: "You can do it!"
    
    NICK: "As long as you remember the way of the Mother Tree..."
    
    NICK: "<i>By the power of pulp and seed—</i>"
    
    &PORTRAIT_prince pendragon_princependragonsmile
    
    PRINCE PENDRAGON: "<i>I choose to believe in ME!</i>"
    
    NICK: "That's right! Now get your apple bottom to space and FIGHT ON!"
    
    PRINCE PENDRAGON: "HOO HOO! I can feel the juices FLOWING... !"
    
    PRINCE PENDRAGON: "I feel as though my journey is just beginning... but it will be different this time."
    
    PRINCE PENDRAGON: "This time, perhaps, <i>things will end differently</i>!"
    
    NICK: "Wait! You don't mean..."
    
    NICK: "A SECRET ENDING!?"
    
    PRINCE PENDRAGON: "HOO HOO! There's only one way to find out!"
    
    PRINCE PENDRAGON: "I will never forget you, human! From my core, THANK YOU!"
    
    &PORTRAIT_prince pendragon_princependragonneutral
    
    PRINCE PENDRAGON: "And from one Prince to another..."
    
    PRINCE PENDRAGON: "I also hope you find your way and choose to believe in yourself!"
    
    NICK: "...!"
    
    &PORTRAIT_prince pendragon_princependragonsmile
    
    PRINCE PENDRAGON: "I am ready to be sent away now! FAREWELL! HOO HOO!!!"
    
    &SHLORP_APPLE_PrincePendragon_out
    
    &PAUSE_0.5
    
    NICK: "..."
    
    * "I'm glad the Prince is feeling better."
    
        NICK: "You helped him see his worth. That was cool..."
        
        NOUR: "<i>You</i> did that, not me."
    
    * "I get why you like that game.["] It's kinda cool."
    
        NICK: "Heh, yeah. It is. Weirdly enough, it taught me a lot about life."
    
    - MS. SUWAN: "That was a very mature conversation, Nick. You should be proud."
    
    MS. SUWAN: "And also, consider practicing the advice you give out."
    
    NOUR: "True. You know, you've got a lot in common with Prince Pendragon."
    
    NICK: "..."
    
    NICK: "Thanks."
    
    // NICK: "Hey, wanna play Aple Quest with me?"
    
    NOUR: <i>Now that Nick is excited about the secret ending, maybe he'll be willing to talk over a game of Aple Quest.</i>
    
    &PORTRAIT_nour_noursmile
    
    NOUR: "Wanna play Aple Quest?"
    
    NICK: "..."
    
    -> END

=== wertoys_before_aplequest_repeat ===

    With the lack of toys inside, it can hardly be called a toy store anymore.
    
    -> END