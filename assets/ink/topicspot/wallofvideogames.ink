=== wallofvg ===
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
    
        &PORTRAIT_nick_nickbigsmile
        
    NICK: "Yeah! I've heard so much about God of Warcraft - my friend let me play it a little on his yBox."
    
    NICK: "The graphics and story are so top-notch. Definitely deserved all those awards!"
    
        &PORTRAIT_nour_noursmile
        
    NOUR: "Even I've heard of how good it is."
    
    NICK: "It makes grown men cry!"
    
        * "What game is this over here?"
        
                &PORTRAIT_nour_nourrealization
            
            NOUR: "I think I've seen ads for this game, but I don't really know what it's about."
            
                &PORTRAIT_nick_nickbigsmile
        
            NICK: "Woah, they're still making <i>Call of Destiny</i> games?!"
            
            MS. SUWAN: "I still recall when the first one was released... that stirred quite a controversy."
            
                &PORTRAIT_nick_nickshocked
            
            NICK: "Wow... You're so old..."
            
                &PORTRAIT_nour_nourannoyed
            
            NOUR: "<i>Nick!</i>"
            
                &PORTRAIT_nick_nickshocked
            
            NICK: "ACK! Sorry..."
            
                &PORTRAIT_mssuwan_mssuwanannoyed
            
            MS. SUWAN: "I prefer the term 'experienced'."
            
                &PORTRAIT_nour_nourpondering
            
            NOUR: "Why do we need like eleven of those, anyway?"
            
                &PORTRAIT_nick_nickbigsmile
            
            NICK: "Well, it's just cool! You get to shoot big guns and drive tanks and stuff!"
            
            NICK: "And they keep making the guns and tanks feel better and better to shoot!"
            
                &PORTRAIT_nour_nourannoyed
            
            NOUR: "... And you're sure it's not military propoganda?"
            
            -> END
            
        * "Probably shouldn't spend much more time here."
        
                &PORTRAIT_nour_nourneutral
        
            NOUR: "Looking at these things are the most we can do, and that's not gonna get us out of here."
            
            MS. SUWAN: "These are display-only, after all."
            
                &PORTRAIT_nick_nickpondering
        
            NICK: "Oh... yeah. I guess there's no point in looking at games we can't even play..."
            
            -> END

=== wallofvg_nickMad ==
//He is refusing to talk after visitng bookshelf.

    NICK: "..."
    
    NOUR: "Come on... Not a single word about any of these?"
    
    NICK: "..."
    
    NOUR: "Not even about the <i>Residential Villain</i> series? I heard that's pretty big, too."
    
    MS. SUWAN: "She's right. Even I have dabbled a little in playing. Once or twice."
    
    NICK: "..."
    
    MS. SUWAN: "They were always my friends' games, however."
    
    MS. SUWAN: "It seems like the price of these games only seem to get more expensive."
    
        &PORTRAIT_nick_nicksad
    
    NICK: "..."
    
        &PORTRAIT_nour_nourpondering
    
    NOUR: <i>Right, looking at the prices on these things... sixty bucks a game? </i>
    
        &PORTRAIT_nour_noursad
    
    NOUR: <i>This might be one reason why Nick doesn't let himself enjoy games... It's hard to, knowing the cost.</i>
    
    -> END

=== wallofvg_afterNickRouteComplete ===
//After he visited Console and started talking again.

        &PORTRAIT_nour_noursmile

    NOUR: "So how many of these have you played? Or are you just a die-hard <i>Aple Quest</i> fan?"
    
        &PORTRAIT_nick_nickpondering
    
    NICK: "Haha... not many, actually."
    
    NICK: "This is all the big new triple-A stuff. It's kind of all a little too..."
    
        &PORTRAIT_nour_nourneutral
    
    NOUR: "<i>Too...?</i>"
    
    
    NICK: "Well... I mean... it doesn't matter if it's extra fancy or Game of the Year."
    
    NICK: "My mom would <i>kill</i> me before she gave me sixty whole dollars to spend on ONE game."
    
        &PORTRAIT_nour_noursad
    
    NOUR: "Right, right..."
    
        -> END
