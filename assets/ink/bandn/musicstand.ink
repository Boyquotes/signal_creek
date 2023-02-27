// this is crucial to Ms Suwan's character arc

//First visit
// Noor runs up to music stand and starts convo about how her parents would listen to this music all of the time so she grew up around it 
// Ms Suwan then opens up about her old college friends and how they went to concerts all of the time
// Nour asks if they're still close and she ignores the question

// Next visit- after second interaction with chad brody kristy
//Ms Suwan goes to music stand and reveals more about the friendship
//each added interaction leads to more information being added until you visited all of the other Suwan objecs when Nour decides to buy Ms Suwan the record for her 
//that gesture unlocks her ability to talk to her
-> musicstand_1
{
   - musicstand_1:
    -> musicstand2

}
{
    - musicstand_1 && pinbuttons_dreamvisited:
    -> musicstand3

}

{
    - musicstand2 && priceofsalt:
    -> musicstand4

}
{
    - musicstand4 && chadbrodykristy_ready:
    -> musicstand5

}


==musicstand_1==
NOUR: "Oh my god they have it!"
MS.SUWAN: "What? A Paradise album?"
NOUR: "Yes! I used to listen to their "Actually I Do Mind" album all the time. I haven't heard it in forever"
MS.SUWAN: "Hm"
NOUR: "Um, do you know Paradise?"
NOUR: <i> Wow what if she has good taste in music. That would be a surprise. </i>
MS.SUWAN: "I did listen to them quite a bit in college."
NOUR: "Ooo where did you go to college?"
MS.SUWAN: "Oh it was this little law school upstate."
NOUR: "That's pretty cool! Did you like it?"
MS.SUWAN: "It was challenging but overall got me where I needed to be"
NOUR: "That's nice. So how did you get into Paradise?"
MS.SUWAN: "Well during law school, me and my friends used to..."
MS.SUWAN: ...
NOUR: ...
NOUR: "A-"
MS.SUWAN: "Sorry"
MS.SUWAN: "Can we go look at something else?"
NOUR: "Yes, sorry" 
NOUR: <i> I wonder what happened with her and her friends, I need to remember to ask about it later </i>
-> END



==musicstand2==
NOUR: "Do you mind if I play this album? I really miss it."
MS.SUWAN: "Go ahead"
NOUR: "Yay I haven't listened to "Sounds like Old Angst" in over a decade!" 
The record slowly enters the record player and suddenly the music begins to fill the entire store.
NOUR: "Oh my god this is just as good as it was when I was 14"
MS.SUWAN: "Gosh I haven't heard this song in ages!"
NOUR: "You listened to it with you're friends right?"
MS.SUWAN: "How'd you know that?"
NOUR: "You started to mention them before and then things got a little weird."
MS.SUWAN: "I don't talk about them anymore"
Nick: "Did something happen between you and them?" 
NOUR: "Nick! Sorry we don't mean to pry"
NOUR: <i> Thank god Nick asked first because I really want to know what happened </i>
MS.SUWAN: "Well, me and friends Chad, Brody, and Kristy used to be very close in law school. We all lived on the same dorm floor so that's how we all met. I had just moved to New Jersey from Thailand so I didn't know anyone They were my first real friends here."
MS.SUWAN: "We umm, we used to host study sessions together all of the time, it was really nice."
MS.SUWAN: "We had this study session once and it was right after that Paradise album came out. We couldn't stop playing it, I think we played it over and over again all night."
NOUR: "Haha really?"
MS.SUWAN: "Oh yeah! After that we started having study and listen sessions where we would play Paradise while we studied and rock out all night."
NICK: "YOU ROCK OUT?"
Ms. Suwan: "I used to all of the time. But that was a different time. Things change."
NOUR: "So, your friends, do you still talk to them often?"
Ms.Suwan's smile began to fade a little
MS.SUWAN: "What? Oh um not anymore"
NICK: "WHAT HAPPENED?"
NOUR: "Nick!"
NICK: "What? I wanna know"
MS.SUWAN: "Can you turn that off for a second. It's starting to give me a migraine"
NOUR: "Yes sorry"
The room became silent
Ms. Suwan takes the record off of the record player and places it back on the shelf
NOUR: <i> Ok something definitely happened with her friends that stopped them from being friends, I need to remember to ask about it later </i> 
->DONE

==musicstand3==
Nick grabs the Paradise album and places it on the record player
Suddenly, the room fills with music
NOUR: "Nick!"
NICK: "What?"
NOUR: "You know Ms.Suwan is sensitive to this music!"
MS.SUWAN: "I'm alright my migraine went away, you can keep it playing."
NOUR: "That's good."
NOUR: <i> I really want to ask about her friends but I don't want to pry.</i>
MS.SUWAN: "I'm sure you want to know more about my old friends"
NOUR: <i> WAS I TALKING OUT LOUD?? CAN SHE HEAR MY THOUGHTS??? </i>
NOUR: "Yeah you got me."
MS.SUWAN: "Well when we had those study and listen sessions, I started doing worse in my classes. After a while, we stopped the study sessions completely and just went to Paradise concerts."
MS.SUWAN: "For some reason, they still did well on their homeworks and exams because they were naturally gifted students but I struggled to catch up because I was still learning English at the time. It didn't come to me like it came to them."
NOUR: "I'm really sorry."
MS.SUWAN: "There was one time. They invited me to a concert but I couldn't go because I was close to failing out of school. I remember they got really mad at me for not coming and I got really mad at them for not caring enough about my situation. They started going to concerts without me. Stopped inviting me to places all together."
NICK: "That really sucks."
MS.SUWAN: "I don't know what to do about it anymore. I haven't talked to them since that fight."
NOUR: "Have you seen them since?"
Ms.Suwan's face went white. 
MS.SUWAN: ...
NOUR: <i> I've seen that look on her face before, she looks like she's seen a ghost, if ghosts were real. I can't remember where though. </i>
MS.SUWAN: "Can we go look at something else?"
NOUR: "Yes, sorry" 
NOUR: <i> I don't know what else she is keeping from us but I need to remember to ask about it later. </i>
-> END
//figure out how to implement intervals for when other items are not collected
==musicstand_interval==
NOUR: <i> I probably shouldn't approach the music stand right now, Ms.Suwan seems to have a bad history with it. I don't want to make her upset. Maybe later though... </i>
->DONE

==musicstand4==
NOUR: "Ok that's it! You can't keep avoiding your friends then coming back here and being all sad about it."
MS.SUWAN: "Nour?"
NOUR: "NO THAT'S IT! I'VE TRIED TO HELP YOU THIS ENTIRE TIME BUT YOU ARE THE ONE THAT'S NOT DEALING WITH YOUR OWN PROBLEMS!"
NOUR: "You keep talking about how hard you worked for everything in your life, law school, then becoming a lawyer. How could you, of all people, be afraid of anything?"
MS.SUWAN: "Nour, you're still young. You don't know what it's like to look back at your past and know there's nothing you can do to change it because it is decades behind you."
MS.SUWAN: "Sometimes the best thing you can do is forget about it to move on."
NOUR: "Did you though?"
MS.SUWAN: "Did I what?"
NOUR: "Did you forget about it? Did you move on?"
MS.SUWAN: "..."
NOUR: "Sometimes you need to confront your past, even if you know there's nothing you can do to change it, just so that you can get it out of your system."
MS.SUWAN: "But I can't Nour. I just can't."
NOUR: "You can."
->END

==musicstand5==
NOUR: "I thought about what you said and you're right. There are things you can't fix and you should worry about the one's you can. Now you can't change what happened between you and your friends. But you can choose to look back fondly at the good times you had with them."
MS.SUWAN: "I suppose you're right about that."
NOUR: "So I was thinking. Since you've avoided these albums long enough, why don't you take one with you. Come on I saw how much you enjoyed listening to it and you're not a stressed law student anymore. You can let yourself rock out once in a while."
MS.SUWAN: "Ha you got a point there."
NOUR: "Come on take it."
Nour gave Ms.Suwan the Paradise album
MS.SUWAN: "Thank you Nour."
NOUR: "No worries."
-> END



