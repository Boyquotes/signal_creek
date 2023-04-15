== cafetables ==
//note to self: do some gathers - choices that lead to the same conversation 

{
    - cafetables3:
        -> explored_everything
        
    - chadbrodykristy2 && musicstand2 && chadbrodykristy3: 
        -> cafetables3

    - chadbrodykristy2 && musicstand2:
        -> cafetables3_5
        
    - cafetables_getsuwantotalk:
        -> cafetables2_5_repeat

    - chadbrodykristy2 && cafetables1:
        -> cafetables2_5
        
    - chadbrodykristy2:
        -> cafetables2
        
    - else: 
        -> cafetables1
}

== cafetables1 ==

    NOUR: "Didn't think I'd see this cafe here. It's even in good condition."
    
    &PORTRAIT_ms. suwan_suwansad
    
    MS. SUWAN: "I still refuse to think any of this is real. I was <i>right here</i> when I did a final look-around before confirming the demolition a few weeks ago."
    
    &PORTRAIT_ms. suwan_suwansad
    
    MS. SUWAN: "Yet I'm looking at the same chairs and tables, though they're in much better condition. Like how I remember they used to be."
    
    NOUR: "You've been here before? I mean, here at these tables."
    
    NOUR: "You don't strike me as the type of person to sit and chill at a mall for a while."
    
    &PORTRAIT_ms. suwan_suwansad
    
    MS. SUWAN: "A long time ago. It was the only table big enough for... a group."
    
    NOUR: "I remember this being a good spot in the cafe, too." 
    
    &PORTRAIT_nour_noursad
    
    NOUR: "..."
    
    &PORTRAIT_nour_noursad
    
    NOUR: "I, uh. Used to come here with someone, too. A friend."
    
    &PORTRAIT_ms. suwan_suwanneutral
    
    MS. SUWAN: "We should move on. No use in dwelling over... never mind."
    
    &PORTRAIT_nour_noursad
    
    NOUR: "I... ok."
    
    NOUR: <i>She's right. Thinking about all the old memories I have here... it hurts more than I thought it would.</i>
    
    NOUR: <i>Seems like we both have things we want to avoid.</i>
    
    NOUR: <i>Is that the right thing to do, though...?</i>
    
    -> END

== cafetables2 ==

    NOUR: "Didn't think I'd see this cafe here. It's even in good condition."
    
    NOUR: "Seems like anything is possible in this place..."
    
    MS. SUWAN: "Same chairs and tables."
    
    MS. SUWAN: "But somehow, they look much newer than before the mall was condemned."
    
    MS. SUWAN: "Just like how I remember them."
    
    &PORTRAIT_ms. suwan_suwanannoyed
    
    MS. SUWAN: "But why are we here, Nour?"
    
    &PORTRAIT_nour_nournervous
    
    NOUR: "Oh. Um, well... Did you come here with them?"
    
    NOUR: "Those three from before?"
    
    &PORTRAIT_ms. suwan_suwanshadow
    
    MS. SUWAN: "I don't want to talk about this or them anymore. It's a complete waste of time."
    
    NICK: "Ms. Suwan... Are you really okay?"
    
    &PORTRAIT_ms. suwan_suwanshadow
    
    MS. SUWAN: "I'm fine. Just—just stop asking questions. It's over now."
    
    NICK: "You don't look so good though..."
    
    &PORTRAIT_nick_nickworried
    
    NICK: "Ms. Suwan...?"
    
    &PORTRAIT_ms. suwan_suwanshadow
    
    MS. SUWAN: "..."
    
    NOUR: <i>For her to not even be able to hide that look on her face...</i>
    
    NOUR: <i>That means those three really did mean a lot to her.</i>
    
    NOUR: <i>I definitely know how that feels... a friendship gone wrong.</i>
    
    NOUR: <i>She can't keep avoiding this conversation, even if she thinks it's the easier choice.</i>
    
    NOUR: <i>Even Nick noticed that she isn't okay.</i>
    
    NOUR: <i>But how do I get her to talk about what happened?</i>
    
    -> cafetables_getsuwantotalk

== cafetables2_5 ==

    NOUR: "Did you come here with them? Those three from before? They seemed like, well... they cared about you."
    
    &PORTRAIT_ms. suwan_suwanannoyed
    
    MS. SUWAN: "I don't want to talk about this or them anymore. It's a complete waste of time."
    
    NICK: "Ms. Suwan... are you really ok?"
    
    &PORTRAIT_ms. suwan_suwanshadow
    
    MS. SUWAN: "I'm fine. Just—just stop asking questions. It's over now."
    
    NICK: "You don't look so good though..."
    
    &PORTRAIT_nick_nickworried
    
    NICK: "Ms. Suwan..?"
    
    &PORTRAIT_ms. suwan_suwanshadow
    
    MS. SUWAN: "..."
    
    NOUR: <i>For her to not even be able to hide that look on her face means that those three really did mean a lot to her.</i>
    
    NOUR: <i>I definitely know how that feels... a friendship gone wrong.</i>
    
    NOUR: <i>She can't keep avoiding this conversation, even if she thinks that's the easier thing to do.</i>
    
    NOUR: <i>Even Nick noticed that she isn't okay.</i>
    
    NOUR: <i>But... how do I get her to talk about what happened?</i>
    
    ->cafetables_getsuwantotalk

== cafetables_getsuwantotalk ==

    * "We need to talk about what happened."
    
        NOUR: "They used to be your friends, right?"
        
        &PORTRAIT_ms. suwan_suwanangry
        
        MS. SUWAN: "Are you serious? I said <i>leave</i> it."
        
        NOUR: "Clearly you did something, but you could tell us the whole story."
        
        NOUR: "Both sides matter, and—"
        
        &PORTRAIT_ms. suwan_suwanangry
        
        MS. SUWAN: "There is nothing to discuss."
        
        NOUR: "You were rude to them, that wasn't like you! We heard everything." 
        
        NOUR: "Yet you say there's no point in having this conversation?"
        
        &PORTRAIT_ms. suwan_suwanannoyed
        
        MS. SUWAN: "Conversation? This is a one-sided interrogation."
        
        &PORTRAIT_ms. suwan_suwanannoyed
        
        MS. SUWAN: "You have some nerve, Nour. I've repeatedly told you to drop the subject."
        
        MS. SUWAN: "Clearly, your meddling know no bounds."
        
        &PORTRAIT_ms. suwan_suwanangry
        
        MS. SUWAN: "The way I deal with things is <i>my</i> business."
        
        MS. SUWAN: "I don't need the opinions of someone who just watched me go through a humiliating ordeal."
        
        &PORTRAIT_ms. suwan_suwanangry
        
        MS. SUWAN: "You would hardly understand what I went through anyway."
        
        NOUR: "..."
        
        NOUR: <i>Ugh, that went terribly. Being direct just made her even more hostile.</i>
        
        NOUR: <i>And I DO understand her! Way more than she thinks.</i>
        
        NOUR: <i>Maybe I should try approaching this differently...</i>
            
            -> cafetables_getsuwantotalk
    
    * "I... think I can relate to what may've happened."
        
        NOUR: "I used to come here with an old friend. This was our favorite spot in the cafe."
        
        NOUR: "Perfect amount of sun, non-rickety tables..."
        
        NOUR: "And just far enough from the cashier that you could actually hear the person you're with."
        
        NOUR: "We never wanted to go home and do homework, so we would imagine staking it out here in the cafe.</i>
        
        NOUR: "We would ration pastries and live off of our favorite lattes."
        
        NICK: "So how did it go? Did you ever get to do it?"
        
        &PORTRAIT_nour_noursad
        
        NOUR: "No... We had a falling out. It was bad. I don't talk to her anymore."
        
        MS. SUWAN: "..."
        
        &PORTRAIT_ms. suwan_suwannervous
        
        MS. SUWAN: "I didn't know that."
        
        NOUR: "It's easier to avoid what happened, but ignoring the good memories hurts, too."
        
        NOUR: "Like this one here."
        
        NOUR: "Losing that friendship messed me up for a long time."
        
        NOUR: "I got my homework done quicker, sure. But honestly speaking?"
        
        &PORTRAIT_nour_noursad
        
        NOUR: "She made it a lot easier."
        
        &PORTRAIT_ms. suwan_suwansad        
        
        MS. SUWAN: "...They were like that for me, too. Made school easier."
        
        &PORTRAIT_nour_noursmile
        
        NOUR: "I guess that's the point of having friends, right?"
        
        &PORTRAIT_ms. suwan_suwansad 
        
        MS. SUWAN: "But they were distractions for me in the end. Our hobbies, our hangouts..."
        
        MS. SUWAN: "It was all time and energy I knew I could use for my career."
        
        MS. SUWAN: "So, I made my decision. When they were gone, I had <i>everything</i>..."
        
        MS. SUWAN: "175 on my LSAT, a stacked resume, and a promising career."
        
        NOUR: "Was it worth it?"
        
        MS. SUWAN: "Objectively speaking, yes. I got everything I wanted."
        
        NICK: "Huh... And that made you happy?" 
        
        NICK: "You don't... like... y'know, regret anything?"
        
        MS. SUWAN: "Don't be silly. I have a fulfilling life."
        
        NICK: "Then what do you do for fun? What do you do that makes you happy?"
        
        MS. SUWAN: "That's easy. I—"
        
        NICK: "NOT related to your lawyer stuff. FUN stuff."
        
        NICK: "Like, what do you do after you come home from lawyer-ing?"
        
        MS. SUWAN: "..."
        
        &PORTRAIT_ms. suwan_suwannervous
        
        MS. SUWAN: "I... I don't. I just go to sleep to wake up early the next day. On repeat."
        
        NOUR: "Not even a hobby?"
        
        MS. SUWAN: "Well... I used to. But not anymore." 
        
        MS. SUWAN: "Not for a long time..."
        
        NOUR: <i>Seems like she was shaken up by Nick asking what she did for fun....</i>
        
        NOUR: <i>Her past pain shouldn't hold her back from the things that used to make her happy.</i>
        
        NOUR: <i>They still could.</i>
        
        NOUR: <i>She might not be ready to face her ex-friends, but maybe I could open her up to the idea.</i>
        
        NOUR: <i>I should show her something that she used to love with her friends...</i>
        
        NOUR: <i>...Because I think she's ready to hear it again.</i>
            -> END
    
    * "So... Do you like going to cafes?"
        
        MS. SUWAN: "No. It's more efficient and practical to make my own coffee."
        
        NOUR: "Do you ever drink coffee with, like... other people?"
        
        MS. SUWAN: "No."
        
        NOUR: "Have you always preferred it that way? Spending time alone?"
        
        &PORTRAIT_ms. suwan_suwanannoyed
        
        MS. SUWAN: "...Yes."
        
        NOUR: "Did you ever—"
        
        &PORTRAIT_ms. suwan_suwanangry
        
        MS. SUWAN: "Enough of these pointless questions. We need to focus on more pressing matters."
        
        NOUR: <i>That didn't go too well. Being indirect got me nowhere near the subject.</i>
        
        NOUR: <i>Maybe I should try approaching this differently...</i>
            
        -> cafetables_getsuwantotalk
    
    // + [I have nothing to say] I'll try to get her to talk later.
        
    //     -> END
== cafetables2_5_repeat ==

    NOUR: <i>I got through to her with an old memory of her friends.</i>
    
    NOUR: <i>Maybe she's ready to revisit another old love of hers with a new perspective.</i>
    
    NOUR: <i>I wonder... Is she ready to listen to Paradise again?</i>
    
    NOUR: <i>We should head back to B&N to find out.</i>
    
    -> END

== cafetables3_5 ==
    // MS. SUWAN: "Let's not stop here. I'm ready to talk to the three of them."
    
    NOUR: <i>I should go find Chad, Kristy, and Brody.</i>
       
        -> END

== cafetables3 ==

    MS. SUWAN: "Now thinking back, I had some good memories at this table too."
    
    NOUR: "Really?"
    
    MS. SUWAN: "Chad, Kristy, Brody, and I would discuss the concepts and inspirations behind Paradise's albums."
    
    MS. SUWAN: "We would pool in money to afford limited edition shirts and CDs..."
    
    MS. SUWAN: "And we were notorious for being rowdy and hounding the cafe owner into playing Paradise."
    
    NICK: "Yo, you were a <i>rebel!</i>"
    
    NICK: "I wish I could've seen that!"
    
    NOUR: "Did it work?"
    
    MS. SUWAN: "I don't know. We were banned from the cafe eventually for being 'disruptive to the public'."
    
    &PORTRAIT_ms. suwan_suwansmile
    
    MS. SUWAN: "I suppose bringing our own speakers and CD players to play our own music in protest didn't help our case."
    
    NICK: "I can't believe it..."
    
    MS. SUWAN: "What?"
    
    &PORTRAIT_nick_nickbigsmile
    
    NICK: "You were so COOL back then!"
    
    &PORTRAIT_ms. suwan_suwanannoyed
    
    MS. SUWAN: "Don't get any wrong ideas. You shouldn't behave that way in public."
    
    MS. SUWAN: "...But of course, I believe that any establishment should listen to the people's demands."
    
    &PORTRAIT_nour_noursmile
    
    NOUR: "Agreed. Plus, I don't think your actual job is totally different from that ideal, either."
    
    MS. SUWAN: "A lawyer states their case and persuades others for their cause."
    
    &PORTRAIT_ms. suwan_suwansmile
    
    MS. SUWAN: "I just... spend my time doing it at the office rather than a mall's cafe."
    
    Ms. Suwan begrudgingly smiles. Nick looks at her with newfound respect.
    
    NOUR: <i>It sounds like this cafe really did hold precious memories for her. It did for me, too...</i>
    
    NOUR: <i>Would I have been happier if I had ended things differently with my friend?</i>
    
    MS. SUWAN: "Nour? Are you ok?"
    
    NOUR: "Huh? Oh. Yeah. I'm... I'm ok."
    
    NOUR: "I was just thinking about... something. It's nothing."
    
    MS. SUWAN: "That didn't seem like nothing to me, but if that's what you want to say..."
    
    NOUR: <i>I nod at her. I don't like the way she looks at me.</i>
    
    -> explored_everything