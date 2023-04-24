== musicstand ==

    It's a music stand. Different vintage records are stacked on top of it. 

    {
        - musicstand4:
            -> explored_everything
            
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


== musicstand1 ==
//better onboarding from CBK
    
    One record in particular catches Nour's attention. 
    
    &PORTRAIT_nick_nicksmallsmile
    
    NOUR: "Hey, Ms. Suwan. You mentioned going to rock shows in the past, right?"
    
    MS. SUWAN: "...Yes, why?"
    
    // NOUR WALKS FORWARD AND TAKES RECORD FROM THE MUSIC STAND, THEN TURNS AROUND TOWARDS MS SUWAN, HOLDING IT UP.
    
    NOUR: "Have you heard of <i>this</i> album, then?"
    
    Nour raises the record of <i>Actually, I Do Mind</i> up to show Ms. Suwan. 
    
    &PORTRAIT_nour_noursmile
    
    NOUR: "I used to listen to <i>Paradise</i> all the time when I was younger."
    
    MS. SUWAN: "...Yes. I remember that one. Good album."
    
    NICK: "You listen to <i>rock</i>?" // (SHOCKED)
    
    MS. SUWAN: "Yes. Well... used to."
    
    &PORTRAIT_nour_nourshocked
    
    NOUR: "That's... really cool!"
    
    &PORTRAIT_ms. suwan_mssuwanannoyed
    
    MS. SUWAN: "Why are you looking at me like that?" // (FROWNING)
    
    NOUR: "Uh, well..."
        
        * "I didn't expect you to listen to a rock band."
        
            &PORTRAIT_nour_nourpondering
            
            NOUR: "You don't really seem like the type - no offense." 
            
            &PORTRAIT_ms. suwan_mssuwansad
            
            MS. SUWAN: "I was very different back then."
            
            NOUR: "Do you listen to them now?"
            
            &PORTRAIT_ms. suwan_mssuwanannoyed
            
            MS. SUWAN: "No. It was a distraction, so I stopped."
            
            NOUR: <i>She looks a little uncomfortable.</i>
        
        * "It's nothing. I wasn't going to say anything—"
        
            &PORTRAIT_ms. suwan_mssuwanannoyed
        
            MS. SUWAN: "You were going to say that I don't seem like the type, right?"
            
            &PORTRAIT_nour_nournervous
    
            NOUR: "Um... yeah. Sorry." // (EMBARASSED)
            
            
            MS. SUWAN: "Well, I don't anymore, so you aren't entirely incorrect. It was a distraction, so I stopped."
            
            NOUR: <i>She looks a little uncomfortable.</i>
    
-   NOUR: "You must've been a university student when <I>Paradise</i> came out with this album, right?"
    
    MS. SUWAN: "Right. During school, me and my friends used to..."
    
    &PORTRAIT_ms. suwan_mssuwansad
    
    MS. SUWAN: "..." // (FROWNING)
        * "Are you okay?"
        
            &PORTRAIT_ms. suwan_mssuwansad
            
            MS. SUWAN: "I'm fine. Paradise just reminds me of hard times. That's all."
            
            &PORTRAIT_nick_nicksmallsmile
            
            NICK: "Kind of ironic, given the name." // (HAPPY)
            
            &PORTRAIT_ms. suwan_mssuwanangry
            
            MS. SUWAN: "..." // (ANGRY)
            
            &PORTRAIT_nick_nicknervous
            
            NICK: "...Sorry." // (POUTING)

        * "You went to Seton Hall University, right?"
        
    
            MS. SUWAN: "Right. You asked me as much during our interview, remember?"
    
            NOUR: "Yeah, I do..." 
            
            &PORTRAIT_nour_nourpondering
            
            NOUR: "We didn't go into it that much, though. Did you enjoy it?"
    
            MS. SUWAN: "It was... challenging. But my education there got me where I needed to be."
            
        * "What was it that you and your friends used to do?"
        
            &PORTRAIT_ms. suwan_mssuwanangry
            
            MS. SUWAN: "..."
    
    - NOUR: "Did you listen to this with your friends?"
    
    &PORTRAIT_ms. suwan_mssuwannervous
    
    MS. SUWAN: "...Yes. After moving to New Jersey from Thailand, I came to law school."
    
    MS. SUWAN: "Since we all lived in the same dorm floor, we became close." 
    
    MS. SUWAN: "We used to play Paradise while we studied together."
    
    &PORTRAIT_ms. suwan_mssuwansad
    
    MS. SUWAN: "I think I owe Paradise my first real friendships." // (SAD)
    
    &PORTRAIT_nick_nickbigsmile
    
    NICK: "Rocking out led to your friendships? That's so cool..." // (EXCITED)
    
    MS. SUWAN: "But that was a different time. Things change."
    
    NICK: "How 'bout we rock out right now then? For old time's sake?" // (EXCITED)
    
    &PORTRAIT_ms. suwan_mssuwanannoyed
    
    MS. SUWAN: "I don't think that would be a good use of our time."
    
        * "Do you mind if <i>I</i> play this album? I really miss it."
            
        * "Maybe we could play it for Nick?"
        
            &PORTRAIT_nour_nourpondering
        
            NOUR: I don't think he's ever even <i>heard</i> of Paradise, let alone any of their songs."
            
            NOUR: "Besides, hearing something on a record is always way better."
            
            MS. SUWAN: "...That is true."
            
            NICK: "I've never heard anything on a record before! Can I hear it? Please?" // (EXCITED)

    - Ms. Suwan sighs and steps back.
    
    // MS SUWAN STEPS BACK SLIGHTLY FROM THE MUSIC STAND
    
    MS. SUWAN: "Fine. Go ahead."
    
    NOUR: "Time to put on a classic... <i>Sounds like Old Angst</i>!" 
    
    // NOUR PUTS THE RECORD INTO THE PLAYER AND STEPS BACK SLIGHTLY FROM THE MUSIC STAND TO JOIN MS SUWAN.
    
    The record enters the player, and the music begins to fill the store.
    
    //CODE HERE - PLAY "SOUNDS LIKE OLD ANGST" 
    
    NICK: "So, your friends... Do you still talk to them?"
    
    // Ms.Suwan's smile fades a little. THIS SHOULD BE TOLD IN PORTRAIT
    
    MS. SUWAN: "Not anymore."
    
    NICK: "What happened?"
    
    &PORTRAIT_nour_nourangry
    
    NOUR: "Nick!" // (SHOCKED)
    
    &PORTRAIT_nick_nickangry
    
    NICK: "What? I wanna know!" // (ANGRY)
    
    MS. SUWAN: "It's... fine."

    MS. SUWAN: "Listening to music doubled the time it took me to complete my assignments."
    
    &PORTRAIT_ms. suwan_mssuwannervous
    
    MS. SUWAN: "I already struggled to stay on top of my class work because I was learning English at the same time."

    MS. SUWAN: "Once, my friends got upset at me for not going to a concert with them, right around finals."
    
    MS. SUWAN: "I chose not to fail my exams over the concert in the end."
    
    MS. SUWAN: "They didn't care about my situation, so I didn't care about them."
    
    &PORTRAIT_ms. suwan_mssuwansad
    
    MS. SUWAN: "..."
    
    MS. SUWAN: "I stopped hanging out with them, they started going to concerts without me..."
    
    &PORTRAIT_ms. suwan_mssuwanshadow
    
    MS. SUWAN: "And the rest is history." // (SAD)
    
    &PORTRAIT_nick_nicksad
    
    NICK: "..."
    
    NICK: "That really sucks." // (SAD)
    
    &PORTRAIT_ms. suwan_mssuwanneutral
    
    MS. SUWAN: "There is nothing I can do about it anymore."
    
    MS. SUWAN: "I haven't talked to them since that fight."
    
    NOUR: "Have you <i>thought</i> about them since that fight?"
    
    &PORTRAIT_ms. suwan_mssuwansad
    
    MS. SUWAN: "..."
    
    &PORTRAIT_ms. suwan_mssuwanangry
    
    MS. SUWAN: "Can you turn that off? It's giving me a splitting headache." // (ANGRY)
    
    NOUR: <i>She's avoiding all of her problems again.</i>
    
    NOUR: <i>Just when I thought we were getting somewhere...</i>
    
    NOUR: <i>If she could make amends with her old friends, maybe they'll help us get out of here!</i>
    
    &PORTRAIT_ms. suwan_mssuwanangry

    MS. SUWAN: "Nour. Turn the music off. Now." // (ANGRY)
    
        * "Fine, I'll turn it off."
        
            //CODE HERE - STOP PLAYING "SOUNDS LIKE OLD ANGST" 

            MS. SUWAN: "Finally. Let's stop talking about my past — it isn't helping us get anywhere."
            
            MS. SUWAN: "Namely, out of here."
            
            &PORTRAIT_nour_nourannoyed
            
            NOUR: "You not talking about it is hurting us MORE."
            
            NOUR: "You won't talk to the people who might be able to help us get out of here!" // (ANGRY)
            
            &PORTRAIT_ms. suwan_mssuwanannoyed
            
            MS. SUWAN: "They don't know anything. Leave it alone, Nour."
            
            MS. SUWAN: "We're leaving."
        
        * "..."
        
            &PORTRAIT_ms. suwan_mssuwanangry
            
            MS. SUWAN: "...Nour. Did you hear what I just said?" // (ANGRY)
            
            //post beta, we can have this option perhaps
                ** "Yeah, and I'm choosing to ignore you!" // (ANGRY)
                
                    &PORTRAIT_ms. suwan_mssuwanfurious
                
                    MS. SUWAN: "..." // (SHOCKED)
                    
                    &PORTRAIT_ms. suwan_mssuwanfurious
                
                    MS. SUWAN: "Nour, I am the <i>adult</i> here, and part of the <i>law</i>. You <i>will</i> listen to me." // (ANGRY)
                
                    NOUR: "Except you're the one acting immature right now!" // (ANGRY)
                
                ** "You want it louder?"
                    
                    //CODE HERE - MAKE MUSIC VOLUME LOUDER
                    
                    &PORTRAIT_ms. suwan_mssuwanfurious
                    
                    MS. SUWAN: "This is <i>extremely</i> immature of you. I'm very disappointed." // (ANGRY)
                    
                    &PORTRAIT_nour_nourangry
                    
                    NOUR: "I can't hear you over this <i>great music</i> that's supposed to <i>bring people together</i>." // (ANGRY)
    
    -  &PORTRAIT_nour_nourangry
    
    NOUR: "You can't keep avoiding your friends, only to come here and get all sad about it!" // (ANGRY)
    
    MS. SUWAN: "Excuse me?" // (SHOCKED)
    
    NOUR: "You keep talking about how hard you worked for everything in your life."
    
    NOUR: "You haven't backed down from ANYTHING!" // (ANGRY)
    
    NOUR: "How could YOU, of all people, be afraid of a <i>conversation</i>?" // (ANGRY)
    
    MS. SUWAN: "You cannot understand what this is like."
    
    MS. SUWAN: "To look back at the past and know you cannot change a thing, because it is decades behind you."
    
    MS. SUWAN: "Sometimes the best thing you can do is forget about it and <i>move on</i>."
    
    &PORTRAIT_nour_noursad
    
    NOUR: "Did you though?"
    
    MS. SUWAN: "Did I <i>what</i>?"
    
    NOUR: "Did you forget about it? Did you move on?"
    
    MS. SUWAN: "..." // (SAD)
    
    NOUR: "Sometimes you need to confront your past."
    
    NOUR: "Even if you know there's nothing you can do to change it."
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "I promise you, carrying this with you and bottling it up will only hurt you more."
    
    NOUR: "Hurt <i>us</i> more." // (SAD)
    
    MS. SUWAN: "I..." // (SAD)
    
        * "I'll be right by your side, I can help you."
        
        * "If none of this is real, there's no risk involved, right?"
        
        * "Do it for yourself."
    
    - NOUR: "I think working out your feelings with them could help you come to terms with everything."
    
    NOUR: "What d'you say?"
    
    MS. SUWAN: "...Fine. I'll talk to them."
    
    NOUR: <i>I finally managed to convince her to confront them.</i>
    
    NOUR: <i>We should go find Chad, Brody, and Kristy again.</i>

    -> END

//figure out how to implement intervals for when other items are not collected
== musicstand1_repeat ==
    
    NOUR: <i>It'd be nice to get Ms. Suwan to get back into her old hobby.</i>
    
    NOUR: <i>But I don't think she's quite ready yet.</i>
    
    NOUR: <i>I can come back to this later.</i>
    
    NOUR: <i>For now, we should go to Chad, Brody, and Kristy, before she changes her mind about talking to them.</i>
    
    -> END

== musicstand2 ==

    MS. SUWAN: "..."
    
    MS. SUWAN: "Why are we here again?" // (ANGRY)
    
    NOUR: "You know, I used to listen to Paradise with my ex-friend, too."
    
    &PORTRAIT_nour_noursad
    
    NOUR: "Sometimes it hurts to listen to, which is why I hadn't played it in so long." // (SAD)
    
    &PORTRAIT_ms. suwan_mssuwansad
    
    MS. SUWAN: "..."
    
    MS. SUWAN: "Do you think it's possible? To still love the things that remind you of your mistakes?"
        
        * "You have to accept the pain either way."
        
            NOUR: "Doing that will let you remember all the goods things that came out of it, too."
            
            NOUR: "Like the happiness music gave you."
            
        * "Nothing should stop you from enjoying what you love."
        
            NOUR: "I think it'd be such a shame to not let yourself enjoy Paradise anymore because of what happened."
            
            NOUR: "Don't let your past stop you from finding joy in what you've always loved."
            
        * "We can't carry our regrets with us forever."
        
            NOUR: "Some things work out, and some don't. But it doesn't mean you've failed or that you're ruined forever."
            
            NOUR: "What matters is that you can free yourself of the guilt by acknowledging that you aren't perfect. 
            
            NOUR: "It's okay to forgive yourself."
    
    - NOUR: "You can't change what happened, but that doesn't mean you should avoid it entirely."
    
    &PORTRAIT_nour_noursmile
    
    NOUR: "Plus, you have the opportunity to do that anyway."
    
    NOUR: "Thanks to this weird mall."
    
    NOUR: "I don't think any of this is real, so the stakes are... relatively low, right?"
    
    &PORTRAIT_ms. suwan_mssuwanpondering
    
    MS. SUWAN: "I suppose... you're right about that."
    
    NOUR: "...Why don't you take an album with you?"
    
    NOUR: "You're not a stressed out student anymore. You could rock out once in a while."
    
    MS. SUWAN: "...Alright. Which one should I take?"
    
    // NOUR STEPS FORWARD TOWARDS THE MUSIC STAND AND TAKES ONE OF THE ALBUMS, THEN TURNS BACK AROUND AND GOES TOWARDS MS SUWAN, STOPPING IN FRONT OF HER AND GIVING HER THE ALBUM.
    
        * [<i>Actually, I Do Mind</i>]
            Nour gives Ms. Suwan <i>Actually, I Do Mind</i>. 
            
        * [<i>Stain</i>]
            Nour gives Ms. Suwan <i>Stain</i>. 
            
        * [<i>Out Birth</i>]
            Nour gives Ms. Suwan <i>Out Birth</i>. 
            
// MS SUWAN REACHES OUT AND TAKES THE ALBUM.
    
    - MS. SUWAN: "Thank you, Nour."
    
    MS. SUWAN: "I want to take this album and go apologize to them all."
    
    &PORTRAIT_ms. suwan_mssuwansad
    
    MS. SUWAN: "I don't know if they'll accept my apology, but I have to try." // (SAD)
    
    NOUR: <i>It looks like Ms. Suwan is ready to apologize to Chad, Brody, and Kristy.</i>
    
    NOUR: <i>We should go to them now.</i>
        
    &LIGHT_Suwan1
        
    -> light_on

== musicstand2_repeat ==

    NOUR: <i>Ms. Suwan's ready to apologize to Chad, Brody and Kristy. We should go to them now.</i>
    
    -> END

== musicstand4 ==

    &PORTRAIT_nour_noursad

    NOUR: "I wish I could've gone to a Paradise concert. It must've been so cool to hear them live." // (SAD)
    
    MS. SUWAN: "It was. Nothing like the digital recordings. 
    
    MS. SUWAN: "The energy isn't the same."
    
    &PORTRAIT_ms. suwan_mssuwansad
    
    MS. SUWAN: "I should've gone to more concerts when I had the chance." // (SAD)
        * "It's not too late."
        
            NOUR: "If you discover newer rock artists you like, you could go to their concerts."
            
            NOUR: "And older bands do reunion concerts, too." 
            
            &PORTRAIT_nour_noursmile
            
            NOUR: "Whatever the future holds, I know there's a rock concert waiting for you."
            
        * "At least we still have these records."
        
            &PORTRAIT_nour_noursmile
        
            NOUR: Nothing like having vinyl to really get into the music."
            
            NOUR: "I bet you could even find live recordings, too."

    - MS. SUWAN: "I'll keep that in mind, then."
    
    &PORTRAIT_ms. suwan_mssuwansmile
    
    MS. SUWAN: "Thank you, Nour."
    
        -> END
