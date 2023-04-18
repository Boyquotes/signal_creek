== bookshelf ==

    It's a tall bookshelf filled with many informative books.
    
    Instructional guides, exam prep workbooks, and how-to books for those interested in <i>fun</i> new hobbies!
    
    {
        // - noursuggestion && nicktalksaboutfantasygame:
            // -> END
        - bookshelf_afternickroute:
            -> bookshelf_end
            
        - aplequestguide && nourplaysaplequest:
            -> bookshelf_afternickroute
            
        - aplequestguide_after_bookshelf_fightstarts:
            -> bookshelf_afterfight
            
        - nour_suggests_hobbies && consoles:
            -> bookshelf_nour_suggests_hobbies_repeat
            
        - spraycans_start:
            -> nour_suggests_hobbies
    }
    
    -> END

== bookshelfback == 

    -> bookshelf
    
== bookshelfside ==

    ->bookshelf

    
== nour_suggests_hobbies ==

    * "Ugh... This makes me think about high school."
    
        NOUR: "My parents expected me to get the best possible exam scores."
        
        NICK: "I don't really care about tests."
        
        NOUR: "Really?"
        
        NICK: "I mean, yeah, who even cares if I know PEMDAS or the Pythagorean Theorem?"
        
        MS. SUWAN: "Your college admissions counselors."
        
        NICK: "I'm not even thinking about college right now. I'm only sixteen."
        
        MS. SUWAN: "Sixteen is the time to start applying yourself more."
        
        MS. SUWAN: "If you want to get into a good college, that is."
        
        NICK: "Nah. I just wanna have fun while I can, y'know?"
        
        MS. SUWAN: "If you have fun now, you will struggle later."
        
        NICK: "But I don't want to live that way."
        
        MS. SUWAN: "Well, we are not given a choice."

        NOUR: <i>Things are getting a little bit heated. I should try to change the subject.</i>
    
    * "Look at this, Nick... <i>How to Draw Manga Characters</i>!"
    
        NOUR: "This would be a pretty fun hobby, right?"
        
            ** "Are you interested?"
            
                NOUR: "It might be cool to try learning something new. That's what got me into photography."
        
            ** "People who can draw are pretty cool."
            
                NOUR: "You might end up liking it. That was my experience with photography."
    
            - NICK: "I don't know. I'm not really good at art and stuff."
        
            MS. SUWAN: "I think Nick should focus on finding a hobby that could benefit his future."
            
            NOUR: "Well, a hobby is something you <i>enjoy</i>, not necessarily—"
            
            NICK: "This hobby needs talent <i>and</i> doesn't benefit my future?"
            
            NICK: "Not interested."
    
    * "Hey...there's <i>The Making of Aple Quest - The Classic RPG Series</i>!"
        
        NOUR: "Isn't this the game you wanted to see before?"
        
        NOUR: "The one in TopicSpot's game console?"
        
        NOUR: "This could be an interesting hobby."
        
        NOUR: "You could become a game designer!"
        
        NICK: "It's not that easy. I don't even know how to code."
        
        NOUR: "You could learn to be an expert at this game, then."
        
        NOUR: "It could be like studying history, except it's something you like."
        
        NICK: "I don't want to study something that I like. That would ruin it."
        
        NICK: "...And I'd be no good at memorizing stuff like that. I'm not that smart."
    
    * "There's also... <i>Intro to Persusasive Arguments</i>."
    
        NOUR: "Seems like a pre-pre-LSAT kind of book."
        
        NOUR: "Good for beginners looking to learn more!"
        
        NICK: "I think I'd rather die than read something like that."
    
        MS. SUWAN: "It would be best for you to remain open-minded."
        
        MS. SUWAN: "I had no idea I would enjoy law until I came across good study aids."
        
        MS. SUWAN: "Taking that extra step ensures that you excel at what you do."
        
        MS. SUWAN: "This could be something."
        
        NICK: "I don't wanna force myself to like something. That's not how you pick up interests."
        
        NICK: "...And either way, I wouldn't understand it, no matter how hard I tried."
    
    - NOUR: "What about..."
    
        * "Art History Around the World?"
        
        * "Mechanical Engineering 101?"
        
        * "JavaScript for Beginners?"
        
    - NICK: "I literally <i>don't care</i>. I don't want to study anything."
    
    MS. SUWAN: "You will not get far in life if you cannot change your mindset."
    
        * "That's a bit harsh, Ms. Suwan..."
        
            MS. SUWAN: "Listen, if this kid's parents failed to give him the truth, someone has to."
            
            MS. SUWAN: "I had to learn the hard way."
        
        * "Nick, people will think you're more capable if you know how to do something."
        
            NOUR: "Isn't that what you want?"
        
            NICK: "I don't have to know how to do something that requires me to <i>read</i> for fun."
            
            NICK: "I just... I don't know, it's a waste of time."
            
            MS. SUWAN: "As if you're not wasting your time now, being a delinquent teenager?"
        
    - NICK: "You're old and boring. Study <i>this</i>, responsiblility <i>that</i>—whatever."
    
    NICK: "What happened to having a <i>life</i>?"
    
    MS. SUWAN: "That was incredibly rude."
    
    MS. SUWAN: "I <i>have</i> a life."
    
    MS. SUWAN: "One I worked tooth and nail to earn."
    
    MS. SUWAN: "...While others got things handed to them on a silver plate."
    
    MS. SUWAN: "It is a privilege to get the opportunity to learn."
    
    MS. SUWAN: "Especially without constantly worrying about factors outside of your control."
    
     NICK: "I just don't see why I need to waste all of my time."
     
     NICK: "I wanna have fun before I gotta start worrying about adult problems."
    
        * "Making the real world seem bleak won't help anyone."
        
            NOUR: "You can have fun practicing your skills, and it may even lead you somewhere in life."
        
        * "You can have fun and work hard at the same time..."
        
            NOUR: "Not everything has to be miserable. Not even work."
    
    - NOUR: "Look, whether I make money from photography or not, I'll always love doing it."
    
    NICK: "Aren't <i>you</i> lucky? You have something you're good at."
    
    NICK: "Well, guess what, Nour? Not everyone is smart or good at something."
    
        * "I wasn't born with the ability to take pictures."
        
            NOUR: "You can only get better at something through practice."
        
        * "How do you know I'm good at it?"
        
            NOUR: "For all you know, I could suck at taking pictures."
        
            NOUR: "The time I've put into what you think I'm 'naturally' good at isn't visible."
            
    - &PORTRAIT_nick_nickshadow
    
    NICK: "Never mind. Neither of you guys would get it. 
    
    NICK: "Some of us are either born dumb, or end up liking useless crap like <i>Aple Quest</i>."
    
    NICK: "..Or both."
    
    NICK: "I could never be like you two. Not now, and not ever."

    NOUR: <i>He looks upset. It doesn't look like he's open to learning anything new.</i>
    
    NOUR: <i>But I still want to cheer him up.</i>
    
    NOUR: <i>Maybe I've been approaching this all wrong.</i>
    
    NOUR: <i>I could find something in this store that already makes him happy.</i>
        
    -> END
    
=== bookshelf_nour_suggests_hobbies_repeat ===

    NOUR: <i>Talking about learning and studying made Nick more upset than anything.</i>
    
    NOUR: <i>I don't know why quite yet, but I want to make him feel better.<i>
    
    NOUR: <i>Maybe something less...studious. Like that videogame from earlier he wanted to see.<i>
    
    NOUR: <i>What was it called again? It was fruit related...like Orange Odyssey?</i>
    
    NOUR: <i>I'm sure if I look around this bookstore, I'm bound to find something related to it.</i>
        -> END
    
=== bookshelf_afterfight ===

    NOUR: <i>I don't think I need to see anything else here.</i>
    
    -> END
    
=== bookshelf_afternickroute ===

    NICK: "Were you always good at lawyer-ing, Ms. Suwan?"
    
    MS. SUWAN: "Arguing, yes. Law, on the other hand, I had to start from the bottom."
    
    MS. SUWAN: "I was still learning English while I was becoming a lawyer."
    
    NICK: "Isn't there, like, a lot of reading and writing though? Wasn't it hard?"
    
    MS. SUWAN: "Yes. Every failure told me to give up, but then I remembered how far I had come."
    
    MS. SUWAN: "It's easy to lose track of how much progress you've made when you look much too far into the future."
    
    NICK: "How far I've come...I never thought of it that way."
    
    MS. SUWAN: "Nick, you're still very young. You know what you like, and that's good."
    
    MS. SUWAN: "It would just be a shame if we lost this world's greatest engineer or manga artist before he got the chance to even try because he didn't believe in himself."
    
    NICK: "...Thanks, Ms. Suwan."
    
    NICK: "Also, do you know what manga is?"
    
    MS. SUWAN: "No. But I could learn."
    
    The two of them share a smile.

    -> bookshelf_end

=== bookshelf_end ===

    NOUR: <i>I think we've explored everything we could here.</i>
        
        -> END