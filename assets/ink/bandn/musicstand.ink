// this is crucial to Ms Suwan's character arc

//First visit
// Noor runs up to music stand and starts convo about how her parents would listen to this music all of the time so she grew up around it 
// Ms Suwan then opens up about her old college friends and how they went to concerts all of the time
// Nour asks if they're still close and she ignores the question

// Next visit- after second interaction with chad brody kristy
//Ms Suwan goes to music stand and reveals more about the friendship
//each added interaction leads to more information being added until you visited all of the other Suwan objecs when Nour decides to buy Ms Suwan the record for her 
//that gesture unlocks her ability to talk to her


// -> musicstand_1 
// {
//   - musicstand_1:
//     -> musicstand2

//     - musicstand_1 && pinbuttons:
//     -> musicstand3

//     - musicstand2 && priceofsalt: 
//     -> musicstand4

// }
// {
//     - musicstand4 && chadbrodykristy_ready:
//     -> musicstand5

// }

{
    - musicstand3 && cafetables_getsuwantotalk:
        -> musicstand4
    - musicstand3:
        -> musicstand_interval
    - musicstand2:
        -> musicstand3
    - musicstand1:
        -> musicstand2
    - chadkristybrody1:
        -> musicstand1
}


==musicstand1==
    NOUR: "Oh my god, they have it!"
    
    MS SUWAN: "Have what?" 
    
    NOUR: "<i>Actually, I Do Mind</i>—only the best Paradise album! I haven't heard it in forever."
    
    MS SUWAN: "Hm..."
    
    NOUR: "Um, do you know Paradise?"
    
    //continuity - law school not just college
    
    MS SUWAN: "I did listen to them quite a bit when I was still a student."
    
    NOUR: "You...you did?"
    
    MS SUWAN: "Yes. Why are you looking at me like that?"
    
    NOUR: "Uh, well..."
        
        * [It's unexpected]
            
            NOUR: "I just didn't expect you to listen to a rock band. You don't really—no offense—seem like the type."
            
            MS SUWAN: "I was very different back then."
            
            NOUR: "Do you listen to them now?"
            
            MS SUWAN: "No. It was a distraction, so I stopped."
            
            NOUR: <i>She looks a little uncomfortable. Maybe I should ask her more about it in a different way.</i>
        
        * [It's nothing]
            NOUR: "Oh, it's nothing. I wasn't going to say anything—"
            
            MS SUWAN: "I know—you were going to say that I don't seem like the type, right?"
    
            NOUR: "Um...yeah. Sorry."
            
            MS SUWAN: "Well, I don't anymore. It was a distraction, so I stopped."
            
            NOUR: <i>She looks a little uncomfortable. Maybe I should ask her more about it in a different way.</i>
    
-   NOUR: "Where did you go for law school?"
    
    MS SUWAN: "Oh it was this little law school upstate. Seton Hall University."
    NOUR: "That's pretty cool! Did you like it?"
    
    MS SUWAN: "It was challenging. However, my education there got me where I needed to be."
    
    NOUR: "That's nice. I guess you probably were a student while Paradise came out with this, right?"
    
    MS SUWAN: "Right. During school, me and my friends used to..."
    
    MS SUWAN: "..."
    
    NOUR: "..."
    
    NOUR: "Are you ok-"
    
    MS SUWAN: "Can we go look at something else? I'm not sure this is the best use of our time."
    
    NOUR: "Uh, yeah. Sorry." 
    
    NOUR: <i>I wonder what happened with her and her friends. Maybe I could play one of the records for her.</i>
    
    -> END

==musicstand2==
    NOUR: "Do you mind if I play this album? I really miss it."
    
    MS SUWAN: "I don't care either way. Go ahead."
    
    NOUR: "Time to put on a classic...<i>Sounds like Old Angst</i>!" 
    <i>The record slowly enters the player, and suddenly the music begins to fill the entire store.</i>
    //CODE HERE - PLAY "SOUNDS LIKE OLD ANGST" 
    
    NOUR: "Oh my god, this is just as good as it was when I was 14."
    
    MS SUWAN: "I haven't listened to this in ages."
    
    NOUR: "You listened to it with your friends, right?"
    
    MS SUWAN: "I don't talk about them anymore."
    
    NICK: "Did something happen between you and them?" 
    
    NOUR: "Nick! Sorry, we don't mean to pry."
    
    NOUR: <i>Thank god he asked first. I really want to know what happened...</i>
    
    MS. SUWAN: "I had some close friends in law school. We all lived on the same dorm floor so that's how we all met. I had just moved to New Jersey from Thailand so I didn't know anyone." 
    
    MS. SUWAN: "They were my first real friends here. We used to host study sessions together all of the time, it was really nice."
    
    MS. SUWAN: "We had this study session once right after that Paradise album came out. We couldn't stop playing it, I think we played it over and over again all night."
    
    NOUR: "Haha, really?"
    
    MS. SUWAN: "After that we started having study and listen sessions where we would play Paradise while we studied and rock out all night."
    
    NICK: "YOU ROCK OUT?"
    
    MS. SUWAN: "I suppose I did 'rock out' a little back then. But that was a different time. Things change."
    
    NOUR: "So, your friends...do you still talk to them often?"
    
    <i>Ms.Suwan's smile fades a little.</i>
    
    MS. SUWAN: "Not anymore."
    
    NICK: "What happened?"
    
    NOUR: "Nick!"
    
    NICK: "What? I wanna know!"
    
    MS. SUWAN: "Can you turn that off? It's starting to give me a migraine."
    
    NOUR: "Oh, sure."
    
    <i>The music stops playing.</i>
    
    //CODE HERE - STOP PLAYING "SOUNDS LIKE OLD ANGST" 
    
    <i>Ms. Suwan takes the record off of the record player and places it back on the shelf.</i>
    
    NOUR: <i>Ok, something definitely happened with her friends. I don't want to make her more upset, but if we could get to the bottom of this, I could convince her to talk to those three...</i>
    
    NOUR: <i>Maybe I could play it just one more time.</i>
    
    ->DONE

==musicstand3==
// <i>Nick grabs the Paradise album and places it on the record player.</i>
// <i>Suddenly, the room fills with rock music—the same tune from before.</i>
// NOUR: "Nick!"
// NICK: "What?"
// NOUR: "You know Ms.Suwan is sensitive to this music!"
// MS. SUWAN: "I'm alright my migraine went away, you can keep it playing."
// NOUR: "That's good."
// NOUR: <i>I really want to ask about her friends but I don't want to pry.</i>
    MS. SUWAN: "Ok. What do you want?"
    
    NOUR: "What?"
    
    MS. SUWAN: "I know you want to know more about my old friends. Isn't that why we keep circling back here?"
    
    NOUR: <i>Oh god. Was I talking out loud? I know she's smart...but can she read my thoughts?</i>
    
    NOUR: <i>Wait, focus. I have to answer her...</i>
    
    NOUR: "Yeah, you got me."
    
    MS. SUWAN: "Nosy, aren't you?"
    
    NOUR: "I prefer curious...but also, you didn't seem well when first saw them, so...

    MS. SUWAN: "When we had those study sessions, I started doing worse in my classes. After a while, we stopped the sessions completely and just went to Paradise concerts."
    
    MS. SUWAN: "We spent too much time talking about Paradise and listening to them without actually focusing, which doubled the time it took me to complete assignments."
    
    MS. SUWAN: "But for some reason, they still performed perfectly because they were naturally gifted students. Meanwhile, I struggled to catch up because I was still learning English at the time."

    MS. SUWAN: "Once, they invited me to a concert but I couldn't go because I was close to failing an important final. They got upset with me for not coming which was ridiculous—clearly, they didn't care enough about my situation. They started going to concerts without me and stopped inviting me to places all together."
    
    NICK: "That really sucks."
    
    MS. SUWAN: "I don't know what to do about it anymore. I haven't talked to them since that fight."
    
    NOUR: "Have you seen them since?"
    
    MS. SUWAN: "..."
    
    MS. SUWAN: "Can we go look at something else?"
    
    NOUR: <i>This is getting us nowhere! If we could just have her make amends, maybe those three could help us get out of here!</i>
    
    NOUR: "Ok, that's it! You can't keep avoiding your friends then coming back here and being all sad about it."
    
    MS. SUWAN: "Nour?"
    
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

==musicstand4==
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
    
    MS. SUWAN: "I...I'm ready. I want to take this album and go apologize to them all."
    
    MS. SUWAN: "I don't know if they'll accept my apology, but I have to try."
    
    NOUR: <i>It looks like Ms. Suwan is ready to apologize to Chad, Kristy, and Brody. I should go lead her to them now.</i>
    
    -> END



