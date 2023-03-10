// VAR chadkristybrody_visitedSW1 = true
// VAR musicstand_visitedSW2 = false
// VAR swevent3_visited = false

// ->cafetables

=== cafetables === 
//chadkristybrody_visitedSW1 is the first conversation with CBK, Suwan's Route Event 1
//musicstand_visistedSW2 is the conversation about the live recording with music stand, Suwan's Route Event 2
//swevent3_visited is if Ms. Suwan's route is complete

//note to self: do some gathers - choices that lead to the same conversation 

{
    - chadbrodykristy1 && musicstand2 && chadbrodykristy3:
        -> cafetables_end
        
    - chadbrodykristy2 && musicstand2 && chadbrodykristy3: 
        -> cafetables3
        
    - chadbrodykristy2 && musicstand2:
        -> cafetables3_5
        
    - chadbrodykristy2 && cafetables1:
        -> cafetables2_5
        
    - chadbrodykristy2:
        -> cafetables2
        
    - else: 
        -> cafetables1
}

=== cafetables1 ===
    NOUR: "Didn't think I'd see this cafe here. It's even in good condition."
    
    MS. SUWAN: "I still refuse to think any of this is real. I was right here before leaving this floor for demolition."
    
    MS. SUWAN: "Yet I'm looking at the same chairs and tables, though they're in much better condition. Like how I remember they used to be."
    
    NOUR: "You've been here before?"
    
    MS. SUWAN: "A long time ago. It was the only table big enough for...a group."
    
    NOUR: "I remember this being a good spot in the cafe, too." 
    
    NOUR: "..."
    
    NOUR: "I used to come here with someone too. A friend."
    
    MS. SUWAN: "We should move on. No use in dwelling over...never mind."
    
    NOUR: "I...ok."
    
    NOUR: <i>She's right. Talking about our old memories here...it hurts more than I thought it would.</i>
    
    NOUR: <i>Seems like we both have things we want to avoid.</i>
    
    NOUR: <i>Is that the right thing to do though?</i>
    -> END

=== cafetables2 ===
    NOUR: "Didn't think I'd see this cafe here. It's even in good condition. Seems like anything is possible in this place..."
    
    MS. SUWAN: "Same chairs and tables, but now they look much newer. Like how I remember they used to be."
    
    MS. SUWAN: "But why are we here, Nour?"
    
    NOUR: "Oh. Um, well...Did you come here with them? Those three from before?"
    
    MS. SUWAN: "I don't want to talk about this or them anymore. It's a complete waste of time."
    
    NICK: "Ms. Suwan...are you really ok?"
    
    MS. SUWAN: "I'm fine. Just—just stop asking questions. It's over now."
    
    NICK: "You don't look so good though..."
    
    MS. SUWAN: "..."
    
    NOUR: <i>For her to not even be able to hide that look on her face means that those three really did mean a lot to her.</i>
    
    NOUR: <i>I definitely know how that feels...a friendship gone wrong.</i>
    
    NOUR: <i>She can't keep avoiding this conversation, even if she thinks that's the easier thing to do. Even Nick noticed that she isn't ok.</i>
    
    NOUR: <i>But how do I get her to talk about what happened?</i>
    -> cafetables_getsuwantotalk

=== cafetables2_5 ===
    NOUR: "Did you come here with them? Those three from before? They seemed like, well...they cared about you."
    
    MS. SUWAN: "I don't want to talk about this or them anymore. It's a complete waste of time."
    
    NICK: "Ms. Suwan...are you really ok?"
    
    MS. SUWAN: "I'm fine. Just—just stop asking questions. It's over now."
    
    NICK: "You don't look so good though..."
    
    MS. SUWAN: "..."
    
    NOUR: <i>For her to not even be able to hide that look on her face means that those three really did mean a lot to her.</i>
    
    NOUR: <i>I definitely know how that feels...a friendship gone wrong.</i>
    
    NOUR: <i>She can't keep avoiding this conversation, even if she thinks that's the easier thing to do. Even Nick noticed that she isn't ok.</i>
    
    NOUR: <i>But how do I get her to talk about what happened?</i>
    ->cafetables_getsuwantotalk

=== cafetables_getsuwantotalk ===
    * [Get straight to the point]
        NOUR: "I think we should talk about what happened. They used to be your friends, right?"
        
        MS. SUWAN: "Are you serious? I said <i>leave</i> it."
        
        NOUR: "Clearly you did something, but I think we should hear the full story. Both sides matter, and—"
        
        MS. SUWAN: "There is nothing to discuss."
        
        NOUR: "You were rude to them! We heard everything. There's no point in avoiding this conversation?"
        
        MS. SUWAN: "Conversation? This is a one-sided interrogation."
        
        MS. SUWAN: "You have some nerve. I've repeatedly told you to drop the subject, but clearly your meddling know no bounds."
        
        MS. SUWAN: "The way I deal with things is <i>my</i> business. I don't need the opinions of someone who just watched me go through a humiliating ordeal."
        
        MS. SUWAN: "You would hardly understand what I went through anyway."
        
        NOUR: <i>Ugh, that went terribly. Being direct just made her even more hostile.</i>
        
        NOUR: <i>And I do understand her! Way more than she thinks.</i>
        
        NOUR: <i>Maybe I should try approaching this differently...</i>
            
            -> cafetables_getsuwantotalk
    
    * [Relate to her situation]
        
        NOUR: "I used to come here with an old friend. This was our favorite spot in the cafe."
        
        NOUR: "Perfect amount of sun, non-rickety tables, and just far enough from the cashier so that you could actually hear the person you were with."
        
        NOUR: "We never wanted to go home and do homework, so we would imagine staking it out here in the cafe. We could ration pastries and live off of our favorite lattes."
        
        NICK: "So how did it go? Did you ever get to do it?"
        
        NOUR: "No...we had a falling out. It was bad. I don't talk to her anymore."
        
        MS. SUWAN: "..."
        
        MS. SUWAN: "I didn't know that."
        
        NOUR: "It's easier to avoid what happened, but ignoring the good memories I made hurt too much. Like this one here."
        
        NOUR: "Losing that friendship messed me up for a long time. I got my homework done quicker, sure, but honestly speaking? She made it a lot easier."
        
        MS. SUWAN: "...They were like that for me, too. Made school easier."
        
        NOUR: "I guess that's the point of having friends, right?"
        
        MS. SUWAN: "But they were distractions for me in the end. Our hobbies, our hangouts...it was all time and energy I knew I could use for my career."
        
        MS. SUWAN: "So, I made my decision. When they were gone, I had everything—175 on my LSAT, a stacked resume, and a promising career."
        
        NOUR: "Was it worth it?"
        
        MS. SUWAN: "Objectively speaking, yes. I got everything I wanted."
        
        NICK: "Huh...and that makes you happy? You don't...like...y'know, regret anything?"
        
        MS. SUWAN: "Don't be silly. I have a fulfilling life."
        
        NICK: "Then what do you do for fun? What do you do that makes you happy?"
        
        MS. SUWAN: "That's easy. I—"
        
        NICK: "NOT related to your lawyer stuff. FUN stuff. Like, what do you do after you come home from lawyer-ing?"
        
        MS. SUWAN: "..."
        
        MS. SUWAN: "I...I don't. I just go to sleep to wake up early the next day. On repeat."
        
        NOUR: "Not even a hobby?"
        
        MS. SUWAN: "Well...I used to. But not anymore. Not for a long time..."
        
        NOUR: <i>Ms. Suwan looks like she's...she's in shock. What Nick asked about what she does for fun now must've shaken her up.</i>
        
        NOUR: <i>I can't just stop here. Her past pain shouldn't hold her back from the things that used to—and could still—make her happy.</i>
        
        NOUR: <i>She might not be ready to face her ex-friends, but maybe I could ease her into opening up to the idea.</i>
        
        NOUR: <i>I got through to her with an old memory of her friends. Maybe she's ready to revisit another old love of hers with a new perspective.</i>
        
        NOUR: <i>I wonder...is she ready to listen to Paradise again? I should lead her there to find out.</i>
            
            -> END
    
    * [Bring it up subtly]
        
        NOUR: "So...do you like going to cafes?"
        
        MS. SUWAN: "No. It's more efficient and cost-effective for me to make my own coffee."
        
        NOUR: "Do you ever drink coffee...with other people?"
        
        MS. SUWAN: "No."
        
        NOUR: "Have you always preferred it that way? Drinking it alone?"
        
        MS. SUWAN: "...Yes."
        
        NOUR: "Did you ever—"
        
        MS. SUWAN: "Enough of these pointless questions. We need to focus on more pressing matters."
        
        NOUR: <i>That didn't go too well. Being indirect got me nowhere near the subject.</i>
        
        NOUR: <i>Maybe I should try approaching this differently...</i>
            
            -> cafetables_getsuwantotalk
    
    // + [I have nothing to say] I'll try to get her to talk later.
        
    //     -> END

=== cafetables3_5 ===
    MS. SUWAN: "Let's not stop here. I'm ready to talk to the three of them."
    
    NOUR: <i>I should go find Chad, Kristy, and Brody.</i>
        -> END

=== cafetables3 ===
    MS. SUWAN: "Now thinking back, I had some good memories at this table too."
    
    NOUR: "Really?"
    
    MS. SUWAN: "Chad, Kristy, Brody, and I would discuss the concepts and inspirations behind Paradise's albums. We would pool in money to afford limited edition shirts and CDs..."
    
    MS. SUWAN: "We were notorious for being rowdy and hounding the cafe owner into playing Paradise."
    
    NOUR: "Did it work?"
    
    MS. SUWAN: "I don't know. We were banned from the cafe eventually for being 'disruptive to the public'."
    
    MS. SUWAN: "I suppose bringing our own speakers and CD players to play our own music in protest didn't help our case."
    
    NICK: "I can't believe it..."
    
    MS. SUWAN: "What?"
    
    NICK: "You were cool this WHOLE TIME?"
    
    MS. SUWAN: "Don't get any wrong ideas. You shouldn't behave that way in public."
    
    MS. SUWAN: "...But of course, I believe that any establishment should listen to the people's demands. Healthy discourse and all that."
    
    Ms. Suwan begrudgingly smiles. Nick looks at her with newfound respect.
    
    NOUR: <i>It sounds like this cafe really did hold precious memories for her. It did for me, too...</i>
    
    NOUR: <i>Would I have been hapier if I had ended things differently with my friend?</i>
    
    MS. SUWAN: "Nour? Are you ok?"
    
    NOUR: "Huh? Oh. Yeah. I'm...I'm ok."
    
    NOUR: "I was just thinking about...something. It's nothing."
    
    MS. SUWAN: "That didn't seem like nothing to me, but if that's what you want to say..."
    
    NOUR: <i>I nod at her. I don't like the way she looks at me.</i
    
        -> cafetables_end

=== cafetables_end ===

    NOUR: <i>I think we've explored everything we could here.</i>
        
        -> END