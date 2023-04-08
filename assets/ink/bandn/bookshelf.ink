== bookshelf ==

    It's a tall bookshelf, stacked with all kinds of instructional guides, exam prep workbooks, and how-to books... for those interested in <i>cool</i> new hobbies!
    
    {
        // - noursuggestion && nicktalksaboutfantasygame:
            // -> END
        - bookshelf_afternickroute:
            -> bookshelf_end
            
        - aplequestguide && nourplaysaplequest:
            -> bookshelf_afternickroute
            
        - aplequestguide:
            -> bookshelf_afterfight
            
        - nour_suggests_hobbies:
            -> bookshelf_nour_suggests_hobbies_repeat
            
        - spraycans_start:
            -> nour_suggests_hobbies
    }

== bookshelfback == 

    -> bookshelf
    
== bookshelfside ==

    ->bookshelf

    
== nour_suggests_hobbies ==

    * "Ugh... This makes me think about high school."
    
        NOUR: "My parents expected me to get the best possible exam scores. I guess if you're the only child, you have to be everything."
        
        NICK: "Screw that. Tests are meaningless..."
        
        NICK: "Who's gonna care about how good I am at math when I'm thirty?"
        
        MS. SUWAN: "Your employers, your clients, the government..."
        
        MS. SUWAN: "You're going to have to take tests for the rest of your life. Get used to it."
        
        NICK: "<i>Get used to it.</i> Well, what if I don't want to?"
        
        MS. SUWAN: "You're not being given a choice here."
        
        NICK: "...I hate this."
        
        NOUR: <i>Things are getting a little bit heated. I should try to change the subject.</i>
    
    * "Look at this, Nick... <i>How to Draw Manga Characters</i>!"
    
        NOUR: "This would be a pretty fun hobby, right?"
        
            * "Are you interested?["] It might be cool to try learning something new. That's what got me into photography."
        
            * "People who can draw are pretty cool.["] You might end up liking it. That was my experience with photography."
    
        - NICK: "I don't know. I'm not really good at art and stuff."
        
        MS. SUWAN: "This would make for a pretty impractical hobby."
        
        MS. SUWAN: "You should focus on something that could benefit your future more."
        
        NOUR: "Well, a hobby is something you <i>enjoy</i>, not necessarily—"
        
        NICK: "This hobby needs talent <i>and</i> is useless?"
        
        NICK: "Not interested."
    
    * "Hey...there's <i>The Making of Aple Quest - The Classic RPG Series</i>!"
        
        NOUR: "Isn't this the game you wanted to see before? The one in TopicSpot's game console?"
        
        NOUR: "This could be an interesting hobby. You could become a game expert or make one yourself!"
        
        NICK: "It's not that easy. I don't even know how to code."
        
        NOUR: "You could learn and be an expert at this game then. It could be like studying history except it's something you like?"
        
        NICK: "I don't want to study something that I like. That would ruin it."
        
        NICK "...And I'd be no good at remembering or memorizing stuff like that. I'm not that smart."
    
    * "There's also... <i>Intro to Persusasive Arguments</i>."
    
        NOUR: "Seems like a pre-pre-LSAT kind of book. Good for beginners looking to learn more!"
        
        NICK: "I think I'd rather die than read something like that."
    
        MS. SUWAN: "You should give more things a try. I didn't know I would like law until I came across good study aids."
        
        MS. SUWAN: "Taking that extra step ensures that you excel at what you do. This could be something."
        
        NICK: "No way! I know myself better than anyone—this stuff's boring and lame."
        
        NICK: "...And I wouldn't understand it, no matter how hard I tried."
    
    - NOUR: "What about..."
    
        * "Art History Around the World?"
        
        * "Mechanical Engineering 101?"
        
        * "JavaScript for Beginners?"
        
    - NICK: "I literally <i>don't care</i>. I don't want to study anything."
    
    MS. SUWAN: "You're going to end up a real slacker if you don't change that mindset of yours."
    
        * "That's a bit harsh, Ms. Suwan..."
        
            MS. SUWAN: "Listen, if this kid's parents aren't giving him the truth, someone has to. I had to learn the hard way."
        
        * "Nick, people will think you're cool if you know how to do something. Isn't that what you want?"
        
            NICK: "I don't have to know how to do something that requires me to <i>read</i> for fun."
            
            NICK: "I just... I don't know, it's a waste of time."
            
            MS. SUWAN: "As if you're not wasting your time now, being a delinquent teenager?"
        
    - NICK: "You're old and boring. Study <i>this</i>, responsiblility <i>that</i>—whatever."
    
    NICK: "Whatever happened to having a life?"
    
    MS. SUWAN: "I hope you know that was incredibly rude."
    
    MS. SUWAN: "I have a life. It's <i>you</i> that doesn't have one because you keep avoiding any means to build one."
    
    MS. SUWAN: "You can't stay a child forever, Nick."
    
        * "Making the real world seem bleak won't help anyone.["] You can have fun practicing your skills, and it may even lead you somewhere in life."
        
        * "You can have fun and work hard at the same time...["] Not everything has to be miserable. Not even work."
    
    - NOUR: "Look, whether I make money from photography or not, I'll always love doing it."
    
    NICK: "Aren't you so lucky? You have something you're good at."
    
    NICK: "Well, guess what, Nour? Not everyone is good at something or smart."
    
        * "I wasn't born with the ability to take pictures.["] You can only get better at something through practice."
        
        * "How do you know I'm good at it?["] For all you know, I could suck at taking pictures."
        
            NOUR: "The time I've put into what you think I'm 'naturally' good at isn't visible."
            
    - NICK: "Nevermind. Neither of you guys would get it. 
    
    A dark expressions falls on Nick's face. 
    
    NICK: "Some of us are either born dumb, end up liking useless shit like <i>Aple Quest</i> games, or both."
    
    NICK: "...I could never be like you two. Not now, and not ever."

    NOUR: <i>He looks upset. It doesn't look like he's open to learning anything new.</i>
    
    NOUR: <i>But I still want to cheer him up.</i>
    
    NOUR: <i>Maybe I've been approaching this all wrong. I could find something in this store that <b>already</b> makes him happy.<i>
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