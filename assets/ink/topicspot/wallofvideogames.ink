=== wallofvideogames ===
//Wall of video games located in TopicStop
//Nick-centric
//Something that he will speak about when he doesn't want to talk after
//event 2
{
    - bookshelf && consoles:
        -> wallofvg2
        
    - bookshelf:
        -> wallofvg1
        
    - else:
    
        -> wallofvg
}

=== wallofvg ===
//Before shit goes down

NOUR: "So these are all the newest releases, huh..."

NICK: "Yeah! Ohh, I've heard so much about God of Warcraft - my friend let me play it for a bit on his XBOX. The graphics and story are so top-tier. Like, I totally understand why it won Game of the Year."

NOUR: "Even I've heard of how good it is."

NICK: "It makes grown men cry!"

* [ Look at another game. ] -> wallofvg_1
* [ Leave. ] -> END

-> END

=== wallofvg_1 ===

NICK: "Whoa, they're still making Call of Duty games?!"

SUWAN: "I still recall when the first one was released... that stirred quite a controversy."

NICK: "Wow... You're so old..."

SUWAN: "I prefer the term 'wise'."

NOUR: "Why do we need eleven of those, anyway?"

NICK: "Well, it's just cool! You get to shoot big guns and run around and drive tanks and stuff! And they keep making the guns and tanks feel better and better to shoot!"

NOUR: "...And you're sure it's not military propoganda?"

-> END

=== wallofvg1 ==
//He is refusing to talk after visitng bookshelf.

NICK: "..."

NOUR: "Come on... Not a word? Not even about the Residential Villain series? I heard this series is pretty huge. Look, even Ms. Suwan's heard of these."

SUWAN: "I <i>suppose</i> I've even played one. Once or twice."

NICK: "..."

He looks disinterested, frowning a little more than before.

<i> Right, looking at the prices on these things... sixty bucks a game? </i>
<i> I'm surprised anyone could get into these. Guess I better keep looking. </i>

-> END

=== wallofvg2 ===
//After he visited Console and started talking again.

NOUR: "So how many of these have you played? Or are you just a die-hard Fantasy Game fan?"

NICK: "Haha... not many, actually. This is all the big new triple-A stuff. It's kind of all a little too..."

NOUR: "<i>Too...?</i>"

NICK: "Well... I mean... it doesn't matter if it's Game of the Year. My mom would <i>kill</i> me before she gave me sixty whole dollars to spend on ONE game."

NOUR: "Right, right..."

    -> END
