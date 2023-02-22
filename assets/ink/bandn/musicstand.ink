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
Nour: "Oh my god they have it!"
Ms.Suwan: "What? A Paradise album?"
Nour: "Yes! I used to listen to their "Actually I Do Mind" album all the time. I haven't heard it in forever"
Ms. Suwan: "Hm"
Nour: "Um, do you know Paradise?"
Nour: <i> Wow what if she has good taste in music. That would be a surprise. </i>
Ms.Suwan: "I did listen to them quite a bit in college."
Nour: "Ooo where did you go to college?"
Ms.Suwan: "Oh it was this little law school upstate."
Nour: "That's pretty cool! Did you like it?"
Ms. Suwan: "It was challenging but overall got me where I needed to be"
Nour: "That's nice. So how did you get into Paradise?"
Ms. Suwan: "Well during law school, me and my friends used to..."
Ms. Suwan: ...
Nour: ...
Nour: "A-"
Ms.Suwan: "Sorry"
Ms. Suwan: "Can we go look at something else?"
Nour: "Yes, sorry" 
Nour: <i> I wonder what happened with her and her friends, I need to remember to ask about it later </i>
-> END



==musicstand2==
Nour: "Do you mind if I play this album? I really miss it."
Ms. Suwan: "Go ahead"
Nour: "Yay I haven't listened to "Sounds like Old Angst" in over a decade!" 
The record slowly enters the record player and suddenly the music begins to fill the entire store.
Nour: "Oh my god this is just as good as it was when I was 14"
Ms.Suwan: "Gosh I haven't heard this song in ages!"
Nour: "You listened to it with you're friends right?"
Ms. Suwan: "How'd you know that?"
Nour: "You started to mention them before and then things got a little weird."
Ms.Suwan: "I don't talk about them anymore"
Nick: "Did something happen between you and them?" 
Nour: "Nick! Sorry we don't mean to pry"
Nour: <i> Thank god Nick asked first because I really want to know what happened </i>
Ms.Suwan: "Well, me and friends Chad, Brody, and Kristy used to be very close in law school. We all lived on the same dorm floor so that's how we all met. I had just moved to New Jersey from Thailand so I didn't know anyone They were my first real friends here."
Ms.Suwan: "We umm, we used to host study sessions together all of the time, it was really nice."
Ms.Suwan: "We had this study session once and it was right after that Paradise album came out. We couldn't stop playing it, I think we played it over and over again all night."
Nour: "Haha really?"
Ms.Suwan: "Oh yeah! After that we started having study and listen sessions where we would play Paradise while we studied and rock out all night."
Nick: "YOU ROCK OUT?"
Ms. Suwan: "I used to all of the time. But that was a different time. Things change."
Nour: "So, your friends, do you still talk to them often?"
Ms.Suwan's smile began to fade a little
Ms.Suwan: "What? Oh um not anymore"
Nick: "WHAT HAPPENED?"
Nour: "Nick!"
Nick: "What? I wanna know"
Ms.Suwan: "Can you turn that off for a second. It's starting to give me a migraine"
Nour: "Yes sorry"
The room became silent
Ms. Suwan takes the record off of the record player and places it back on the shelf
Nour: <i> Ok something definitely happened with her friends that stopped them from being friends, I need to remember to ask about it later </i> 
->DONE

==musicstand3==
Nick grabs the Paradise album and places it on the record player
Suddenly, the room fills with music
Nour: "Nick!"
Nick: "What?"
Nour: "You know Ms.Suwan is sensitive to this music!"
Ms.Suwan: "I'm alright my migraine went away, you can keep it playing"
Nour: "That's good."
Nour: <i> I really want to ask about her friends but I don't want to pry.</i>
Ms.Suwan: "I'm sure you want to know more about my old friends"
Nour: <i> WAS I TALKING OUT LOUD?? CAN SHE HEAR MY THOUGHTS??? </i>
Nour: "Yeah you got me"
Ms.Suwan: "Well when we had those study and listen sessions, I started doing worse in my classes. After a while, we stopped the study sessions completely and just went to Paradise concerts."
Ms.Suwan: "For some reason, they still did well on their homeworks and exams because they were naturally gifted students but I struggled to catch up because I was still learning English at the time. It didn't come to me like it came to them."
Nour: "I'm really sorry."
Ms.Suwan: "There was one time. They invited me to a concert but I couldn't go because I was close to failing out of school. I remember they got really mad at me for not coming and I got really mad at them for not caring enough about my situation. They started going to concerts without me. Stopped inviting me to places all together."
Nick: "That really sucks"
Ms.Suwan: "I don't know what to do about it anymore. I haven't talked to them since that fight."
Nour: "Have you seen them since?"
Ms.Suwan's face went white. 
Ms.Suwan: ...
Nour: <i> I've seen that look on her face before, she looks like she's seen a ghost, if ghosts were real. I can't remember where though. </i>
Ms.Suwan: "Can we go look at something else?"
Nour: "yes, sorry" 
Nour: <i> I don't know what else she is keeping from us but I need to remember to ask about it later. </i>
-> END
//figure out how to implement intervals for when other items are not collected
==musicstand_interval==
Nour: <i> I probably shouldn't approach the music stand, Ms.Suwan seems to have a bad history with it. I don't want to make her upset </i>
->DONE

==musicstand4==
Nour: "Ok that's it! Who are those people in the hallway and what are you not telling us?"
Ms.Suwan: "Nour?"
Nour: "NO THAT'S IT! I'VE TRIED TO HELP YOU THIS ENTIRE TIME BUT YOU AREN'T TELLING US THE COMPLETE TRUTH!"
Ms.Suwan: "You're right."
Nour: "AND ANOTHER THIN- wait what?"
Ms.Suwan: "I haven't been completely honest"
Nick: "Knew it"
Nour: "NICK NO YOU DIDN'T SHUSH! Ok now it's time to admit what you've been keeping from us"
Ms.Suwan: The people in the hallway...I believe they are my friends from law school. I can't explain why or how but they look identical to them and I can't help but freeze everytime I see them."
Nour: "WHAT????"
Ms.Suwan: "I apologize for not saying something sooner"
Nour: "YOU APOLOGIZE?? AFTER TRYING TO CONVINCE US OVER AND OVER AGAIN THAT NOTHING STRANGE IS GOING ON IN THIS MALL. AFTER I TOLD YOU ABOUT SEEING MY OLD FRIEND AND YOU TRYING TO CONVINCE ME THAT I WAS SEEING THINGS?!?!? TRYING TO CONVINCE NICK HE WAS SEEING THINGS IN TOPICSPOT?!?! YOU KNEW THIS WHOLE TIME!"
Nick: "How could you?"
Ms.Suwan: "Look I didn't want to believe it. There was no way they could look the same for the past 20 years let alone be here with me. Please, try to understand where I'm coming from."
Nour: "I can't even look at you. Come on Nick let's go check out something else" 
->END

==musicstand5==
Nour: "I thought about what you said and you're right. There are things you can't fix and you should worry about the one's you can. Now you can't change what happened between you and your friends. But you can choose to look back fondly at the good times you had with them"
Ms.Suwan: "I suppose you're right about that"
Nour: "So I was thinking. Since you've avoided these albums long enough, why don't you take one with you. Come on I saw how much you enjoyed listening to it and you're not a stressed law student anymore. You can let yourself rock out once in a while."
Ms.Suwan: "Ha you got a point there"
Nour: "Come on take it"
Nour gave Ms.Suwan the Paradise album
Ms.Suwan: "Thank you Nour"
Nour: "No worries."
-> END



