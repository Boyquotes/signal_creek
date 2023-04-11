== musicstand ==

    It's a music stand. Different vintage records are stacked on top of it. 
    
    Nothing catches Nour's interest.

{
    - musicstand4:
        -> musicstand_end
    - chadbrodykristy3:
        -> musicstand4
    - musicstand2:
        -> musicstand2_repeat
    - chadbrodykristy1 && musicstand1 && cafetables_getsuwantotalk:
        -> musicstand2
    - chadbrodykristy1 && musicstand1:
        -> musicstand1_repeat
    - chadbrodykristy1:
        -> musicstand1
}

-> END


==musicstand1==
//better onboarding from CBK

    It's a music stand. Different vintage records are stacked on top of it. 
    
    One record in particular catches Nour's attention. 
    
    NOUR: "Ms. Suwan! You mentioned you liked rock, right?"
    
    MS. SUWAN: "... Yes, why?"
    
    Nour raises the record of <i>Actually, I Do Mind</i> up to show Ms. Suwan. 
    
    NOUR: "Have you heard of this album, then? I used to listen to Paradise all the time when I was younger. They're a rock band, aren't they?"
    
    MS. SUWAN: "... Yes, actually I have. I remember that one. Good album."
    
    NICK: "You listen to rock?"
    
    MS. SUWAN: "Yes. Well... used to."
    
    NOUR: "Oh...that's, wow!"
    
    MS. SUWAN: "Why are you looking at me like that?"
    
    NOUR: "Uh, well..."
        
        * [Tell her it's unexpected]
            
            NOUR: "I'll be honest, I didn't expect you to listen to a rock band. You don't really seem like the type - no offense." 
            
            MS. SUWAN: "I was very different back then."
            
            NOUR: "Do you listen to them now?"
            
            MS. SUWAN: "No. It was a distraction, so I stopped."
            
            NOUR: <i>She looks a little uncomfortable.</i>
        
        * [Hide the surprise]
            NOUR: "It's nothing. I wasn't going to say anything—"
            
            MS. SUWAN: "You were going to say that I don't seem like the type, right?"
    
            NOUR: "Um...yeah. Sorry."
            
            MS. SUWAN: "Well, I don't anymore, so you aren't entirely incorrect. It was a distraction, so I stopped."
            
            NOUR: <i>She looks a little uncomfortable.</i>
    
-   NOUR: "I guess you probably were a student while Paradise came out with this, right?"
    
    MS. SUWAN: "Right. During school, me and my friends used to..."
    
    MS. SUWAN: "..."
        * [Ask if she's ok]
            NOUR: "Are you ok?"
            
            MS. SUWAN: "I'm fine. Paradise just reminds me of hard times. That's all."
            
            NICK: "Kind of ironic, given the name lol."
            
            MS. SUWAN: "..." (ANGRY)
            
            NICK: "... Sorry." (POUTING)

        * [Ask about law school]
            NOUR: "You went to Seton Hall University, right?"
    
            MS. SUWAN: "Right. You asked me this during our interview, remember?"
    
            NOUR: "Yeah... we didn't go into it that much, though. Did you like it?"
    
            MS SUWAN: "... It was challenging, but my education there got me where I needed to be."
            
        * [Ask about her friends]
            NOUR: "What did you and your friends use to do?"
            
            MS. SUWAN: "..."
    
    - NOUR: "Did you listen to this with your friends?"
    
    MS. SUWAN: "... Yes. After moving to New Jersey from Thailand, I came to law school. Since we all lived in the same dorm floor, we became close." 
    
    MS. SUWAN: "We used to host study sessions and play Paradise while we studied."
    
    MS. SUWAN: "I think I owe Paradise my first real friendships."
    
    NICK: "Rocking out led to your friendships? That's so cool..."
    
    MS. SUWAN: "But that was a different time. Things change."
    
    NICK: "How 'bout we rock out right now then? For old time's sake?"
    
    MS. SUWAN: "I don't think that would be a good use of our time right now."
    
        * [Ask to play the album]
            NOUR: "Do you mind if I play this album? I really miss it."
            
        * [Play the album for Nick]
            NOUR: "Maybe we could play it? For Nick? I don't think he's ever even heard <i>of</i> Paradise, let alone one of their songs."
            
            NOUR: "Besides, hearing something on a record is always way better."
            
            MS. SUWAN: "That's true."
            
            NICK: "I've never heard anything on a record before! Can I hear it? Please?"

    - Ms. Suwan sighs and steps back.
    
    MS. SUWAN: "Fine. Go ahead."
    
    NOUR: "Time to put on a classic...<i>Sounds like Old Angst</i>!" 
    
    The record enters the player, and the music begins to fill the store.
    
    //CODE HERE - PLAY "SOUNDS LIKE OLD ANGST" 
    
    NOUR: "So, your friends...do you still talk to them?"
    
    <i>Ms.Suwan's smile fades a little.</i>
    
    MS. SUWAN: "Not anymore."
    
    NICK: "What happened?"
    
    NOUR: "Nick!"
    
    NICK: "What? I wanna know!"

    MS. SUWAN: "Studying and listening to music doubled the time it took me to complete my assignments."
    
    MS. SUWAN: "I struggled to catch up because I was still learning English at the time, but my friends did just fine."

    MS. SUWAN: "Once, they got upset at me for not going to a concert with them. I chose not to fail my finals over the concert in the end."
    
    MS. SUWAN: "They didn't care about my situation, so I stopped caring about them." 
    MS. SUWAN: "... I stopped hanging out with them, they started going to concerts without me, and the rest is history."
    
    NICK: "That really sucks."
    
    MS. SUWAN: "There's nothing I can do about it anymore. I haven't talked to them since that fight."
    
    NOUR: "Have you <i>thought</i> about them since?"
    
    MS. SUWAN: "..."
    
    MS. SUWAN: "Can you turn that off? It's starting to give me a migraine."
    
    NOUR: <i>She's avoiding all of her problems again. Just when I thought we were getting somewhere...</i>
    
    NOUR: <i>If we could just have her make amends, maybe those three could help us get out of here!</i>

    MS. SUWAN: "Nour. Turn the music off. Now."
    
        * [Turn the music off]
        
            //CODE HERE - STOP PLAYING "SOUNDS LIKE OLD ANGST" 

            MS. SUWAN: "Finally. Let's stop talking about my past — it isn't helping us get anywhere."
            
            MS. SUWAN: "Namely, out of here."
            
            NOUR: "You not talking about it is hurting us more! You won't talk to the people who could maybe help us get out of here!"
            
            MS. SUWAN: "They don't know anything. Leave it alone, Nour."
            
            MS. SUWAN: "We're leaving."
        
        * [Don't turn the music off]
            
            MS. SUWAN: "...Nour. Did you hear what I just said?"
            
            //post beta, we can have this option perhaps
                ** [Confront of her]
                
                    NOUR: "Yeah, and I'm choosing to ignore you!"
                
                    MS. SUWAN: "..." (SHOCKED)
                
                    MS. SUWAN: "Nour, I am the <i>adult</i> here, and part of the <i>law</i>. You <i>will</i> listen to me."
                
                    NOUR: "Except you're the one acting immature right now!
                
                ** [Turn the music up louder]
                    
                    //CODE HERE - MAKE MUSIC VOLUME LOUDER
                    
                    MS. SUWAN: "This is extremely immature of you."
                    
                    NOUR: "I can't hear you over this <i>great music</i> that's supposed to <i>bring people together</i>."
    
    - NOUR: "You can't keep avoiding your friends then coming back here and being all sad about it!"
    
    MS. SUWAN: "Excuse me?" (SHOCKED)
    
    NOUR: "You keep talking about how hard you worked for everything in your life! You haven't backed down from anything! How could you, of all people, be afraid of a <i>conversation</i>?"
    
    MS. SUWAN: "You don't know what it's like to look back at your past and know there's nothing you can do to change it because it is decades behind you."
    
    MS. SUWAN: "Sometimes the best thing you can do is forget about it and move on."
    
    NOUR: "Did you though?"
    
    MS. SUWAN: "Did I what?"
    
    NOUR: "Did you forget about it? Did you move on?"
    
    MS. SUWAN: "..."
    
    NOUR: "Sometimes you need to confront your past—even if you know there's nothing you can do to change it."
    
    NOUR: "I promise you, carrying this with you and bottling it up will only hurt you more. Hurt <i>us</i> more."
    
    MS. SUWAN: "I..."
    
        * "I'll be right by your side."
        
        * "If none of this is real, there's no risk involved, right?"
        
        * "Do it for yourself."
    
    - NOUR: "I think working out your feelings with them could help you and your past feelings. What do you say?"
    
    MS. SUWAN: "...Fine. I'll talk to them."
    
    NOUR: <i>I finally managed to convince her to confront them. I should go find Chad, Brody, and Kristy now.</i>

    -> END

//figure out how to implement intervals for when other items are not collected
==musicstand1_repeat==
    // MS. SUWAN: "If I listen to that again, I'm seriously going to get a headache."
    
    // NOUR: "I won't turn it on..."
    
    NOUR: <i>It'd be nice to get her to re-accept her old hobby, but I don't think she's quite ready yet.</i>
    
    NOUR: <i>I can come back to this later. For now, I should go to Chad, Brody, and Kristy, before Ms. Suwan changes her mind about talking to them.</i>
    -> DONE

==musicstand2==
    MS. SUWAN: "..."
    
    MS. SUWAN: "Why are we here again?"
    
    NOUR: "You know, I used to listen to Paradise with my ex-friend, too. Sometimes it hurts to listen to, which is why I hadn't played it in so long."
    
    MS. SUWAN: "..."
    
    MS. SUWAN: "Do you think it's possible? To still love the things that remind you of your mistakes?"
        * ["You have to accept the pain either way."]
            NOUR: "Accepting the pain of a memory also lets you remember the good things that remain."
            
            NOUR: "Like the happiness music gave you."
            
        * ["Nothing should stop you from enjoying what you love."]
            NOUR: "I think it'd be such a shame to not let yourself enjoy Paradise anymore because of what happened."
            
            NOUR: "Don't let your past stop you from finding joy in what you've always loved."
            
        * ["We can't carry our regrets with us forever."]
            NOUR: "Some things work out, and some don't. But it doesn't mean you've failed or that you're ruined forever."
            
            NOUR: "What matters is that you can free yourself of the guilt by acknowledging that you aren't perfect. It's ok to forgive yourself."
    
    // - NOUR: "And I thought about what you said earlier. You're right. There are things you can't fix, and you should worry about the one's you can."
    
    - NOUR: "You can't change what happened, but that doesn't mean you should avoid it entirely."
    
    NOUR: "Plus, you have the opportunity to do that anyway, thanks to this weird mall. I don't think any of this is real, the stakes are... relatively low, right?"
    
    MS. SUWAN: "I suppose you're right about that."
    
    NOUR: "... Why don't you take an album with you? You're not a stressed out student anymore. You could let yourself rock out once in a while."
    
    MS. SUWAN: "...Alright. Which one should I take?"
        * [<i>Actually, I Do Mind</i>]
            Nour gives Ms. Suwan <i>Actually, I Do Mind</i>. 
            
        * [<i>Stain</i>]
            Nour gives Ms. Suwan <i>Stain</i>. 
            
        * [<i>Out Birth</i>]
            Nour gives Ms. Suwan <i>Out Birth</i>. 
    
    - MS. SUWAN: "Thank you, Nour."
    
    MS. SUWAN: "I want to take this album and go apologize to them all."
    
    MS. SUWAN: "I don't know if they'll accept my apology, but I have to try."
    
    NOUR: <i>It looks like Ms. Suwan is ready to apologize to Chad, Brody and Kristy. We should go to them now.</i>
        &LIGHT_Suwan1
        -> light_on
    // -> END

=== musicstand2_repeat ===
    // MS. SUWAN: "I want to apologize to Chad, Kristy, and Brody. Properly, this time."
    
    // NOUR: "Alright. Let's go to them now."

    NOUR: <i>Ms. Suwan's ready to apologize to Chad, Brody and Kristy. We should go to them now.</i>
-> END

=== musicstand4 ===
    NOUR: "I wish I could've gone to a Paradise concert. It must've been so cool to hear them live." 
    
    MS. SUWAN: "It was. Nothing like the digital recordings—the energy isn't the same."
    
    MS. SUWAN: "I should've gone to more concerts."
        * [Tell her it's not too late]
            NOUR: "It's not too late. If you discover newer rock artists, you could go to their concerts."
            
            NOUR: "And older bands do reunion concerts too. Whatever the future holds, I know there's a rock concert waiting for you to be in it."
            
        * [Assure her that the records are the next best thing]
            NOUR: "At least we still have these records. Nothing like having vinyl to really get into the music."
            
            NOUR: "I bet you could even find live recordings, too."

    - MS. SUWAN: "I'll keep that in mind, then."
    
    MS. SUWAN: "Thank you, Nour."
        -> END
=== musicstand_end ===
    NOUR: <i>I think we've explored everything we could here.</i>
        
        -> END
