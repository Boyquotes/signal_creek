
//---------------- DREAM WORLD ----------------
// Nour observes Ms Suwan's reluctance, observes her change in demenear when she notices Ms Suwan. She should also not be able to see chad brody kristy until middle-ish of game
 -> chadbrodykristy_first 
  
  //When Ms Suwan is not ready to talk to them, at start
  -> chadbrodykristy_notready
      {
        - chadbrodykristy_notready && musicstand4 && priceofsalt && pinbuttons:
            -> chadbrodykristy_suwanreturns
       }
  
  
  
// ----- Part of First interaction when they just get to the mall-----

== chadbrodykristy_first==
NICK: "Are those people real? How did they even get in here?"
NOUR: "Why don't we go up to them and ask? Maybe they know how to get out of here?"
//NICK: "Maybe they know where TopicSpot is, I haven't been there in forever!"
//player might already have been there
NICK: "Maybe they could tell us where they keep all of the cool stuff! Employees always get free things all the time, right?"
NOUR: "Nick we're trying to get of here not play games."
NOUR: "And no, employees don't always get free things...that's not how employment works."
NICK: "Man, you're no fun."
NOUR: <i>What is this kid on?</i>
NOUR: <i>I swear, if I'm in here for another 10 minutes I'm gonna go insane. We need to find a way out of here.</i>
    * "Nick, can you go ask them what's going on?" -> chadbrodykristy_nicksaysno
    * "Ms. Suwan, can you please ask them how we can get out of here?" ->chadbrodykristy_mssuwansilent
    
===chadbrodykristy_nicksaysno===
NICK: "Why do I have to do it?"
NOUR: "Because you're a kid, so they might be more willing to help us."
NICK: "Or—now hear me out—maybe they would be more willing to listen to the older person in the group?"
    **"Fine, I guess you're right. Ms. Suwan what do you think?" -> chadbrodykristy_mssuwansilent

===chadbrodykristy_mssuwansilent===
//MS SUWAN not MS.SUWAN for character tag 
MS SUWAN: "..."
NOUR: "Hello...? Are you listening?"
//changing to present tense
<i>Ms Suwan's face turns paler by the second, almost translucent. Her eyes fixate on the group of kids standing three feet away. She looked as though she saw a ghost...if ghosts were real.</i>
//when actually writing suwan's name in the game, there needs to be a [SPACE] after the period 
NICK: "MS. SUWAN!!!"
MS SUWAN: "...!"
MS SUWAN: "No need to shout. What's going on?"
NOUR: "Could you talk to those people over there and ask if they know what's going on?"
MS SUWAN: "I think that would be a waste of time. All we need to do is get the elevator fixed and we should be good to go."
MS SUWAN: "I'm going to try to get a hold of the repair guy and see if he can come down here. I think he's still on the clock, but I'm not sure."
    *** "Um, I don't think anyone is going to come." -> chadbrodykristy_mssuwanresponse
    *** "It would be easier to just ask them." -> chadbrodykristy_mssuwanresponse

->END

=== chadbrodykristy_mssuwanresponse ===
NOUR: "Also, your phone isn't going to work down here. I'm not getting any bars."
NOUR: "If anyone knows anything about this place, it's gotta be people who were here before us, right?"
NOUR: <i>If...if they even are real people? I'm not gonna think too hard about that.</i>
//NOUR: <i>Great, I'm stuck with a basketcase and a literal child. I should have never ran into that elevator.</i>
NOUR: "Didn't you see the lights go crazy and the elevator fly up super fast? Wherever we are, we aren't where we're suppose to be."
NOUR: "I don't think a repair guy could fix this, even if he managed to get here somehow."
NICK: "True! That elevator doesn't seem to be working after we used it."
//ok, issue here is that Suwan saw the floor being torn down. i don't buy that she'd think this is the same floor, but would justify it differently 
//MS SUWAN: "The elevator just had some technical issues and then broke down. Nothing is out of the ordinary."
MS SUWAN: "..."
MS SUWAN: "Maybe I mistakened this area of the mall for the wrong one. This...this could be a different floor."
MS SUWAN: "Whatever is happening here is illegal and wrong. I'm going to report everyone here immediately, and...and..."
<i>She stares at the three people, dazed. She looks...afraid. Guilty?</i>
NOUR: <i>Why do I get the feeling she might know them?</i>
NOUR: "Fine. If you both won't talk to them, I will."
NOUR: <i> Just be cool, they don't look super mean or weird. Maybe they're chill. Just don't embarass yourself </i>
NOUR: "Um, hello. We were on that elevator and it started going super fast and the lights started flickering and now we can't get back down. Do you guys know what's going on?"
No Response...
NOUR: "Look, we're sorry to bother you but we really need help right now."
No Response...
NOUR: <i>They're just staring blankly at Ms. Suwan. Something really weird is going on...</i>
NOUR: "If you could just help us out for one second—"
MS SUWAN: "Give it up. We don't need help from strangers. We can help ourselves just fine."
???: "Strangers?" 
MS SUWAN: "!"
???: "Looks like Chad, Kristy, and Brody all got demoted to strangers. What a surprise."
NOUR: "What the—"
BRODY: "Strangers? Ouch. So that's what you thought of us this whole time? Good to know, Kan."
NICK: "Who is Kan?"
KRISTY: "You may look a older, but it's a comfort to know nothing else has changed Kannika"
NICK: "Ok, now who is Kannika?"
NOUR: "Dude, that's Ms. Suwan's first name. How could you already forget?"
NOUR: "Uh, Ms. Suwan? Are you ok...?"
<i>Ms. Suwan stands frozen. For once, it seems like she has nothing clever to say.</i>
CHAD: "Speechless, Suwan? Never thought I'd get to see that."
BRODY: "Don't worry. I'm sure that once she finds her words, she'll spin us some new excuse for what she did to us."
MS SUWAN: "..."
NOUR: "Ms. Suwan, do you—"
MS SUWAN: "We're leaving."
CHAD: "Don't worry Kan—we'll be right here in case you want to ignore us again."
MS SUWAN: "<i>I said we're done here.</i>"
NOUR: "I...alright. We can leave."
NICK: "But I thought that they could help us out?"
MS SUWAN: "Word of advice, kid? The only person you can trust is yourself. I'm figuring this out alone."
MS SUWAN: "I think there was a B&N on this floor. Maybe a computer there is working so we can contact someone to get us out of here."
NICK: "Well. That was kind of awkward. Haha...?"
MS SUWAN: "..."
NICK: "Um, Nour! I want to check out some games in TopicSpot! They could have cool games for us to play."
NOUR: <i>I want to talk about those three people to Ms. Suwan, but I don't think she's going to say a single thing about them.</i>
NOUR: <i>I guess we could take a look at the B&N and see if there's anything that could help us leave here...</i>
NOUR: <i>Or we could take a look at the TopicSpot too.</i>
NOUR: <i>Wherever we decide to go, I think it's best if I don't mention these three until Ms. Suwan is ready to open up to me.</i>
->END

== chadbrodykristy_notready==
NOUR: "Is everything alright, Ms. Suwan?"
MS SUWAN: "..."
NOUR: <i>I wish she wouldn't be so stubborn and just say something—anything—to them.</i>
NOUR: "You sure you don't want to just talk to them?"
MS SUWAN: "What? Huh?"
MS SUWAN: "I mean, no. I have nothing to say. Let's just go."
    **** "Come on, they could tell us how to leave!" -> chadbrodykristy_askagain
    **** "Ok, let's go visit some place else." -> END

=== chadbrodykristy_askagain ===
NOUR: "They might know something about this place that we don't—"
MS SUWAN: "Nour, I said no. Now, let's go."
NOUR: "...Fine." 
-> END

== chadbrodykristy_argument==
NOUR: "There's no backing out of this now. You have to face them once and for all. You'll feel better, I promise."
MS SUWAN: "You're right."
//present tense already here, good!!
<i>Ms. Suwan approaches Chad, Brody, and Kristy.</i>
KRISTY: "The one and only Kannika! You finally decided to speak to us, and it's not just for our study notes. Must be a miracle!"
MS SUWAN: "Is it really you guys? How are you here?"
KRISTY: "Why did you abandon us Kan? We missed you so much."
MS SUWAN: "I didn't abandon you, I had-"
BRODY: "Let me guess, work? It's always work with you."
MS SUWAN: "I'm sorry I actually studied so I wouldn't flunk school instead of wasting my nights drinking and going to Paradise concerts."
BRODY: "Yeesh, sorry for wanting to just hang out like normal friends."
MS SUWAN: "I had a so much riding on my career. For me to sabotage it like that when it hadn't even started? No. Failing was not an option."
CHAD: "Fail? Kan, you always did better than any of us. We have never seen you get below a 90 on an exam, ever."
KRISTY: "You always blamed us for your failures when in reality? You just had ridiculous standards for yourself and you were always trying to beat."
//I LIKE TURNING INTO KANNIKA 
KANNIKA: "Maybe that's because I didn't have it easy like the rest of you!"
CHAD: "Easy?! Is this a competition now to see who suffered the most?"
KANNIKA: "NONE of you would ever understand what it was like for me! How hard I worked to get where I am with nothing but myself to rely on."
KANNIKA: "I had to be the best if I wanted to get half of the opportunities you guys got!"
KANNIKA: "You would've done the <i>exact same thing</i> if you were in my position."
KRISTY: "But Kannika..."
CHAD: "You know us better than anyone else."
BRODY: "<b>Would we have done the same things you did to us?</b>"
<i>Silence hangs heavily in the room. Everyone stares at Kannika. She doesn't answer them back.</i>
KRISTY: "Whatever. Ignore us like you did back then."
CHAD: "Don't talk to us until you're actually ready to apologize."
BRODY: "Like she'll ever be."
<i>Chad, Kristy, and Brody stop staring at Ms. Suwan and keep to themselves. Impenetrable.</i>
MS SUWAN: "..."
MS SUWAN: "I tried. And look where that got me."
MS SUWAN: "...I want to leave. Now."
NICK: "Ms. Suwan..."
NOUR: <i>That went horribly. I thought that maybe confronting them would work things out, but it doesn't seem like Ms. Suwan realizes what she did was wrong.</i>
NOUR: <i>I have to make her realize that her friendship could have been saved if she had done things differently.</i>
NOUR: <i>Maybe if I can show her something nearby that could've been an important memory for her and her friends, I could get her to open up more.</i>
NOUR: <i>If the three of them are here, then maybe something close to us could help us.</i>
-> END

=== chadbrodykristy_suwanreturns===
<i>Ms. Suwan takes a nervous breath and steels herself.</i>
KANNIKA: "I-I didn't mean to push you guys away. I just had to get ahead, and..."
KANNIKA: "No. I'm done with excuses. I'm sorry for being a terrible friend."
KANNIKA: "You guys just wanted to cheer me up and be my actual friends. I couldn't see it at the time because I was so focused on myself."
KANNIKA: "It's funny...before we went to that that last Paradise concert, I was so obsessed and anxious over our final exam. I couldn't sleep, and it tore me up inside thinking I was going to fail it."
KANNIKA: "I didn't want to go the concert with everyone. I kept telling myself it was a waste of time to be at a concert the night before finals. But then we got there, and..."
KANNIKA: "For those 4 hours, I didn't think about the finals once. The stress of succeeding to the great lengths I enslaved myself to...it was all so small compared to the music."
KANNIKA: "I felt so at peace with you all, cheering in that audience. It made me think of what life could be like, and that was something you gifted to me."
KANNIKA: "Something I chose to turn away from."
KANNIKA: "I never thanked you guys for that experience, but I wanted to now by giving you this album."
<i>Ms. Suwan shows them the Paradise album. Chad, Brody, and Kristy stare...and then smile sadly at her.</i>
BRODY: "You were already the best, Kan. We just wanted to be there for you so you didn't burn yourself out."
CHAD: "You were already so far ahead of all of us. We looked up to you, but we also were afraid for you."
BRODY: "Afraid you would crash and burn before your dreams could even come true."
KRISTY: "Why do you think we went to those concerts right before our exams? We wanted to make sure you got a chance to loosen up after cramming for weeks straight."
KANNIKA: "I...I didn't even realize that. And the things I said to you after..."
KRISTY: "It hurt a lot. But it's ok, Kan. You're doing well, and that's all that mattered to me."
KANNIKA: "Kristy, I'm so sorry about everything. Please-"
//CODE TO MAKE KRISTY NPC DISAPPEAR
<i>Kristy suddenly disappears.</i>
NOUR: "Where did she—"
BRODY: "Kristy was always ready to forgive you, but you know me, Kan. The skeptic. I'm not fully convinced you've changed because old habits die hard."
BRODY: "And just look at you. You are exactly the person you wanted to be...on top. Good for you."
KANNIKA: "Brody...what I said back then—"
BRODY: "I don't know if I can accept this apology of yours, but I hope that you know it'll never be too late to change."
KANNIKA: "Brody, wait—"
//CODE TO MAKE BRODY NPC DISAPPEAR
<i>Brody disappears.</i>
CHAD: "You locked yourself in your room studying all of the time. We never got to see you. We were worried."
KANNIKA: "I know. It was wrong of me to lash out at you and blame you for everything."
CHAD: "You know, the Kannika back then wouldn't have been able to admit any of these things. Looks like you're already changing right now."
KANNIKA: "Take the album, Chad. Please. I know how much it meant to all of us."
CHAD: "I think you might need that more than we do, Kan. Don't forget to listen to the music every now and then, ok?"
KANNIKA: "I...I promise."
CHAD: "Good. That's all we ever really wanted for you, Kannika."
//CODE TO MAKE CHAD DISAPPEAR
<i>Chad suddenly disppeared.</i>
<i>Ms. Suwan's album falls to the ground. The thud echoes through the hallway. She doesn't move.</i>
NOUR: "Um..."
NOUR: "Are you ok?"
No response.
NOUR: "I'm sorry it turned out that way."
MS SUWAN: "It's ok. I didn't expect anything to change miraculously."
NOUR: "Maybe if we could find them again, we could change how—"
MS SUWAN: "There's no changing what could've been. But that's ok with me."
MS SUWAN: "I've spent so much time fighting to keep my regrets out, but now I've finally looked it in the eye...and I think I can lay this feeling to rest."
NOUR: "But don't you think you could be happier if it had gone better?"
MS SUWAN: "Sometimes it's not about things getting better. To face them is enough for me."
MS SUWAN: "Even if they weren't real and this was all just one big dream, my feelings are real."
NOUR: "But it did just happened. This, this could be real! We all saw it."
MS SUWAN: "Listen Nour...I've imagined this moment in my head so many times. I couldn't fool myself into thinking there would be a happy ending for all of us."
MS SUWAN: "But I think this might actually have been a happy ending after all. There are some things you just can't fix, and that's okay. Worry about the things you can."
NOUR: "..."
NOUR: <i>I don't really understand how she could be ok with how this turned out...but she seems so much more at peace than before.</i>
NOUR: <i>...The album is still on the floor.</i>
    * Pick up the album on the floor -> chadbrodykristy_mssuwanresponseend
    
=== chadbrodykristy_mssuwanresponseend ===
NOUR: "Here. I think they all wanted you to have this."
MS SUWAN: "Oh..."
<i>Ms. Suwan accepts the album and holds it close to her.</i>
MS SUWAN: "Thank you, Nour."
//INSERT ELEVATOR BEEP BOOP BUTTON LIGHT STUFF HERE

-> END
