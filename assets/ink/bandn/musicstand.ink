//First visit
// Noor runs up to music stand and starts convo about how her parents would listen to this music all of the time so she grew up around it 
// Ms Suwan then opens up about her old college friends and how they went to concerts all of the time
// Nour asks if they're still close and she ignores the question
//Ms Suwan goes to music stand and reveals more about the friendship
//each added interaction leads to more information being added until you visited all of the other Suwan objecs when Nour decides to buy Ms Suwan the record for her 
//that gesture unlocks her ability to talk to her

== musicstand ==

{
    - chadbrodykristy1 && musicstand1 && cafetables_getsuwantotalk:
        -> musicstand2
    - chadbrodykristy1 && musicstand1:
        -> musicstand_interval
    - chadbrodykristy1:
        -> musicstand1
}


==musicstand1==
//better onboarding from CBK


    NOUR: "Oh my god, they have it!"
    
    MS. SUWAN: "Have what?" 
    
    NOUR: "<i>Actually, I Do Mind</i>—only the best Paradise album! I haven't heard it in forever."
    
    MS. SUWAN: "I remember that one. Good album."
    
    NOUR: "You...you listen to Paradise?"
    
    MS. SUWAN: "Yes. Well, used to."
    
    NOUR: "Oh...that's, wow!"
    
    MS. SUWAN: "Why are you looking at me like that?"
    
    NOUR: "Uh, well..."
        
        * [Tell her it's unexpected]
            
            NOUR: "I just didn't expect you to listen to a rock band. You don't really—no offense—seem like the type."
            
            MS SUWAN: "I was very different back then."
            
            NOUR: "Do you listen to them now?"
            
            MS SUWAN: "No. It was a distraction, so I stopped."
            
            NOUR: <i>She looks a little uncomfortable.</i>
        
        * [Hide the surprise]
            NOUR: "Oh, it's nothing. I wasn't going to say anything—"
            
            MS SUWAN: "You were going to say that I don't seem like the type, right?"
    
            NOUR: "Um...yeah. Sorry."
            
            MS SUWAN: "Well, I don't anymore, so you aren't entirely incorrect. It was a distraction, so I stopped."
            
            NOUR: <i>She looks a little uncomfortable.</i>
    
-   NOUR: "I see. I guess you probably were a student while Paradise came out with this, right?"
    
    MS SUWAN: "Right. During school, me and my friends used to..."
    
    MS SUWAN: "..."
        * [Ask if she's ok]
            NOUR: "Are you ok?"
            
            MS. SUWAN: "I'm fine. Paradise just reminds me of hard times. That's all."

        * [Ask about law school]
            NOUR: "Where did you go for law school?"
    
            MS. SUWAN: "Seton Hall University."
    
            NOUR: "That's pretty cool. Did you like it?"
    
            MS SUWAN: "It was challenging. However, my education there got me where I needed to be."
            
        * [Ask about her friends]
            NOUR: "What did you and your friends used to do?"
    
    - NOUR: "Did you listen to this with your friends?"
    
    MS. SUWAN: "Yes. After moving to New Jersey from Thailand, I came to law school. Since we all lived in the same dorm floor, we became close." 
    
    MS. SUWAN: "We used to host study sessions and play Paradise while we studied."
    
    MS. SUWAN: "I think I owe Paradise my first real friendships."
    
    NICK: "Rocking out led to your friendships? That's so cool..."
    
    MS. SUWAN: "But that was a different time. Things change."
    
    NICK: "How 'bout we rock out right now then? For old time's sake?"
    
    MS. SUWAN: "I don't think this would be a good use of our time."
    
    
    
    
     
    NOUR: "Do you mind if I play this album? I really miss it."
    
    MS SUWAN: "I don't care either way. Go ahead."
    
    NOUR: "Time to put on a classic...<i>Sounds like Old Angst</i>!" 
    <i>The record slowly enters the player, and suddenly the music begins to fill the entire store.</i>
    
    //CODE HERE - PLAY "SOUNDS LIKE OLD ANGST" 

    
    NOUR: "So, your friends...do you still talk to them often?"
    
    <i>Ms.Suwan's smile fades a little.</i>
    
    MS. SUWAN: "Not anymore."
    
    NICK: "What happened?"
    
    NOUR: "Nick!"
    
    NICK: "What? I wanna know!"
    
    
    //CODE HERE - STOP PLAYING "SOUNDS LIKE OLD ANGST" 
    
    
   
    MS. SUWAN: "Can you turn that off? It's starting to give me a migraine."



    MS. SUWAN: "Soon after, we went to Paradise concerts. Studying and listening to music doubled the time it took me to complete assignments."
    
    MS. SUWAN: "I struggled to catch up because I was still learning English at the time, but my friends did just fine."

    MS. SUWAN: "Once, they got upset at me for not going to a concert with them. I chose to not fail my finals in the end. They didn't care about my situation, so I stopped caring about them." 
    
    MS. SUWAN: "I stopped hanging out with them, they started going to concerts without me, and the rest is history."
    
    NICK: "That really sucks."
    
    MS. SUWAN: "I don't know what to do about it anymore. I haven't talked to them since that fight."
    
    NOUR: "Have you seen them since?"
    
    MS. SUWAN: "..."
    
    MS. SUWAN: "Can we go look at something else?"
    
    NOUR: <i>This is getting us nowhere! If we could just have her make amends, maybe those three could help us get out of here!</i>
    
    
    NOUR: "Ok, that's it! You can't keep avoiding your friends then coming back here and being all sad about it."
    
    MS. SUWAN: "Excuse me??"
    
    NOUR: "NO, THAT'S IT! I'VE TRIED TO HELP YOU THIS ENTIRE TIME, BUT YOU'RE THE ONE THAT'S NOT DEALING WITH YOUR OWN PROBLEMS!"
    
    NOUR: "You keep talking about how hard you worked for everything in your life, law school, then becoming a lawyer. How could you, of all people, be afraid of anything?"
    
    MS. SUWAN: "You don't know what it's like to look back at your past and know there's nothing you can do to change it because it is decades behind you."
    
    MS. SUWAN: "Sometimes the best thing you can do is forget about it to move on."
    
    NOUR: "Did you though?"
    
    MS. SUWAN: "Did I what?"
    
    NOUR: "Did you forget about it? Did you move on?"
    
    MS. SUWAN: "..."
    
    NOUR: "Sometimes you need to confront your past, even if you know there's nothing you can do to change it, just so that you can get it out of your system."
    
    MS. SUWAN: "But I can't. What's the point? I..."
        * "I'll be right by your side."
        
        * "If none of this is real, there's no risk involved, right?"
        
        * "Do it for yourself."
    
    - NOUR: "I think working out your feelings with them could help you and your past feelings. What do you say?"
    
    MS. SUWAN: "...Fine. I'll talk to them."
    
    NOUR: <i>I finally managed to convince her! I should go find Chad, Kristy, and Brody now so that Ms. Suwan can confront them once and for all.</i>

    -> END

//figure out how to implement intervals for when other items are not collected
==musicstand_interval==
    NOUR: <i> I probably shouldn't approach the music stand right now, Ms.Suwan seems to have a bad history with it. I don't want to make her upset. Maybe later though... </i>
    
    -> DONE

==musicstand2==
    MS. SUWAN: "...Back here again, it seems."
    
    NOUR: "I also liked to listen to Paradise with my friend in the past. Sometimes it hurts to listen to it, which is why I hadn't played it in so long."
    
    MS. SUWAN: "..."
    
    MS. SUWAN: "Do you think it's possible? To still love the things that remind of your mistakes?"
        * ["You have to accept the pain either way."]
            NOUR: "And accepting the pain of a memory also lets you remember the good in them too."
            
            NOUR: "Like the happiness music gave you."
            
        * ["Nothing should stop you from enjoying what you love."]
            NOUR: "It looked like you really did love Paradise, and I think it's such a shame to note let yourself enjoy it anymore because of what happened."
            
            NOUR: "Don't let your past stop you from finding joy in what you've always loved."
            
        * ["We can't carry our regrets with us forever."]
            NOUR: "You know this better than I do—some things work out, and some don't. But it doesn't mean you've failed or that you're ruined forever."
            
            NOUR: "What matters is that you can free yourself of guilt by acknowledging that you aren't perfect. It's ok to forgive yourself."
    
    - NOUR: "And I thought about what you said earlier. You're right. There are things you can't fix, and you should worry about the one's you can. You can't change what happened, but that doesn't mean you should avoid it entirely."
    
    NOUR: "Plus, you have the strange opportunity to do that anyway, thanks to this weird mall."
    
    MS. SUWAN: "I suppose you're right about that."
    
    NOUR: "So I was thinking...since you've avoided these albums long enough, why don't you take one with you? I saw how much you enjoyed listening to it, and you're not a stressed out student anymore. You can let yourself rock out once in a while."
    
    MS. SUWAN: "...Alright. Which one should I take?"
        * [Album 1]
            Nour gives Ms. Suwan Album 1. 
            
        * [Album 2]
            Nour gives Ms. Suwan Album 2. 
            
        * [Album 3]
            Nour gives Ms. Suwan Album 3. 
    
    - MS. SUWAN: "Thank you, Nour."
    
    MS. SUWAN: "I want to take this album and go apologize to them all."
    
    MS. SUWAN: "I don't know if they'll accept my apology, but I have to try."
    
    NOUR: <i>It looks like Ms. Suwan is ready to apologize to Chad, Kristy, and Brody. I should go lead her to them now.</i>
    
    -> END



