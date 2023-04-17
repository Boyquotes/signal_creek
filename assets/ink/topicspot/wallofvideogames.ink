=== wallofvideogames ===
{
    - bookshelf && consoles:
        -> wallofvg_afterNickRouteComplete
        
    - bookshelf:
        -> wallofvg_nickMad
        
    - else:
        -> wallofvg_beforeNickRoute
}

=== wallofvg_beforeNickRoute ===
//Before shit goes down

    NOUR: "So these are all the newest releases, huh..."
    
    NICK: "Yeah! Ohh, I've heard so much about God of Warcraft - my friend let me play it for a bit on his XBOX."
    
    NICK: "The graphics and story are so top-tier. Like, I totally understand why it won Game of the Year."
    
    NOUR: "Even I've heard of how good it is."
    
    NICK: "It makes grown men cry!"
    
        * [ "What game is this over here?" ] 
            
            NOUR: "I think I've seen ads for this game, but I don't really know what it's about."
        
            NICK: "Woah, they're still making <i>Call of Destiny</i> games?!"
            
            MS. SUWAN: "I still recall when the first one was released... that stirred quite a controversy."
            
            NICK: "Wow... You're so old..."
            
            NOUR: "<i>Nick!</i>"
            
            NICK: "ACK! Sorry..."
            
            MS. SUWAN: "I prefer the term 'experienced'."
            
            NOUR: "Why do we need like eleven of those, anyway?"
            
            NICK: "Well, it's just cool! You get to shoot big guns and run around and drive tanks and stuff!"
            
            NICK: "And they keep making the guns and tanks feel better and better to shoot!"
            
            NOUR: "... And you're sure it's not military propoganda?"
            
            -> END
            
        * [ "Probably shouldn't spend much more time here." ] 
        
            NOUR: "Looking at these things are the most we can do, and that's not gonna get us out of here."
            
            MS. SUWAN: "These are display-only, after all."
        
            NICK: "Oh... yeah. I guess there's no point in looking at games we can't even play..."
            
            -> END

=== wallofvg_nickMad ==
//He is refusing to talk after visitng bookshelf.

    NICK: "..."
    
    NOUR: "Come on... Not a single word about any of these?"
    
    NICK: "..."
    
    NOUR: "Not even about the <i>Residential Villain</i> series? I heard this series is pretty big, too."
    
    MS. SUWAN: "She's right. Even I have dabbled a little in playing this series. Once or twice."
    
    NICK: "..."
    
    MS. SUWAN: "They were always my friends' games, however."
    
    MS. SUWAN: "It seems like the price of these games only seem to get more expensive."
    
    He frowns harder.
    
    NOUR: <i>Right, looking at the prices on these things... sixty bucks a game? </i>
    
    NOUR: <i>This might be one reason why Nick doesn't let himself enjoy games... It's hard to, knowing the cost.</i>
    
    -> END

=== wallofvg_afterNickRouteComplete ===
//After he visited Console and started talking again.

    NOUR: "So how many of these have you played? Or are you just a die-hard <i>Aple Quest</i> fan?"
    
    NICK: "Haha... not many, actually."
    
    NICK: "This is all the big new triple-A stuff. It's kind of all a little too..."
    
    NOUR: "<i>Too...?</i>"
    
    NICK: "Well... I mean... it doesn't matter if it's extra fancy or Game of the Year."
    
    NICK: "My mom would <i>kill</i> me before she gave me sixty whole dollars to spend on ONE game."
    
    NOUR: "Right, right..."
    
        -> END
