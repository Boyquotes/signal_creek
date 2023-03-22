
== chadbrodykristy ==

{
    - musicstand1 && musicstand2: 
        -> chadbrodykristy3
    - chadbrodykristy2:
        -> chadbrodkristy2_repeat
    - musicstand1:
        -> chadbrodykristy2
    - chadbrodykristy_notready:
        -> chadbrodykristy_notready_repeat
    - chadbrodykristy1: 
        -> chadbrodykristy_notready
    - else:
        -> chadbrodykristy1
}

== chadbrodykristy1==
    NICK: "Are those people real? How did they even get in here?"
    
    NOUR: <i>We could go up to them and ask? Maybe they know how to get out of here?</i>
    
        * "Nick, can you go ask them what's going on?"
            NICK: "Won't they be more willing to listen to the older person in the group?"
            
                **"Fine, I guess you're right. Ms. Suwan what do you think?"
    
        * "Ms. Suwan, can you please ask them how we can get out of here?"
    //MS. SUWAN not MS.SUWAN for character tag 
    - MS. SUWAN: "..."
    
    NOUR: "Hello...? Are you listening?"
    //changing to present tense
    <i>Ms Suwan's face turns pale. Her eyes fixate on the group of kids.</i>

    NICK: "MS. SUWAN!!!"
    
    MS. SUWAN: "...!"
    
    MS. SUWAN: "No need to shout. What's going on?"
    
    NOUR: "Could you talk to those people over there and ask if they know what's going on?"
    
    MS. SUWAN: "All we need to do is get the elevator fixed and we should be good to go."
    
    MS. SUWAN: "I'm going to try to get a hold of the repair guy and see if he can come down here."
        
        *** "I don't think anyone is going to come."
        
        *** "It would be easier to just ask them."
    
    - NOUR: "If anyone knows anything about this place, it's gotta be people who were here before us, right?"
    
    NOUR: <i>If...if they even are real people?</i>
    
    NICK: "I don't think a repair guy could fix the elevator, even if he managed to get here somehow..."
    
    MS. SUWAN: "Maybe I mistakened this area of the mall for the wrong one. This...this could be a different floor."
    
    MS. SUWAN: "Whatever is happening here is illegal and wrong...and..."
    
    <i>She stares at the three people, dazed. She looks...afraid. Guilty?</i>
    
    NOUR: <i>Why do I get the feeling she might know them?</i>

    NOUR: "Fine. If you both won't talk to them, I will."
    
    NOUR: "Um, hello. Do you guys know what's going on?"
    
    No Response...
    
    NOUR: "Look, we're sorry to bother you but we really need help right now."
    
    No Response...
    
    NOUR: <i>They're just staring blankly at Ms. Suwan. Something really weird is going on...</i>
    
    NOUR: "If you could just help us out for one second—"
    
    MS. SUWAN: "Give it up. We don't need help from strangers. We can help ourselves just fine."
    
    ???: "Strangers?" 
    
    MS. SUWAN: "!"
    
    ???: "Looks like Chad, Kristy, and Brody all got demoted to strangers. What a surprise."
    
    NOUR: "What the—"
    
    CHAD: "So that's what you thought of us this whole time, Kannika?"
    
    NICK: "Who is Kannika?"
    
    KRISTY: "Niki, how could you say that to us? We were so close...were all the study sessions and rock concerts nothing to you?"

    NICK: "Ok, now who is Niki? Also, ROCK CONCERTS?"
    
    NOUR: "Uh, Ms. Suwan? Are you ok...?"
    
    <i>Ms. Suwan stands frozen. For once, it seems like she has nothing clever to say.</i>
    
    CHAD: "Speechless? Never thought I'd get to see that."
    
    BRODY: "I'm sure that once she finds her words, she'll spin us some new excuse for what she did to us."
    
    MS. SUWAN: "..."
    
    NOUR: "Ms. Suwan, do you—"
    
    MS. SUWAN: "We're leaving."
    
    BRODY: "Don't worry Suwan—we'll be right here in case you want to ignore us again."
    
    MS. SUWAN: "<i>I said we're done here.</i>"
    
    NOUR: "I...alright. We can leave."
    
    NICK: "But I thought that they could help us out?"
    
    MS. SUWAN: "Word of advice? The only person you can trust is yourself. I'm figuring this out alone."
    
    //MS. SUWAN: "I think there was a B&N on this floor. Maybe a computer there is working so we can contact someone to get us out of here."
    
    MS. SUWAN: "There's a bookstore on this floor—the B&N? There must be something there that could help us escape this place."
    
    NOUR: <i>I want to talk about those three people to Ms. Suwan, but I don't think she's going to say a single thing about them.</i>
    
    NOUR: <i>I guess we could take a look at the B&N and see if there's anything that could help us leave here...</i>
    
    NOUR: <i>Wherever we decide to go, I think it's best if I don't mention these three until Ms. Suwan is ready to open up to me.</i>
    
    ->END

== chadbrodykristy_notready==
    NOUR: "Are you sure you can't ask them anything?"
    
    MS. SUWAN: "I have nothing to say. Let's just go."
    
        **** "They could tell us how to leave!"
            NOUR: "They might know something about this place that we don't—"
    
            MS. SUWAN: "Nour, I said no. Now, let's go."
    
            NOUR: "...Fine." 
    
        **** "Ok, let's go visit some place else." 
    
    - MS. SUWAN: "Let's go the B&N. There should be some things in there that can help us leave this place."
    
    NICK: "I'm still thinking about the rock concerts they mentioned..."
    
    NICK: "I can't imagine you going to one! Can I ask what band it was? Did you wear something CRAZY?"
    
    MS. SUWAN: "Enough about the rock concerts. Nour, we should explore the B&N."
    -> chadbrodykristy_notready_repeat
            
=== chadbrodykristy_notready_repeat ===
    NOUR: <i>Looks like Ms. Suwan's still not ready to open up to either of us. I guess we should go to the B&N and see if there's anything useful.</i>
            
    NOUR: <i>...Though Nick brings up a good point. If she went to rock concerts with those three people and doesn't want to talk to them...something must've happened.</i>
    
    NOUR: <i>If I find something related to the band or their music, maybe I could get more information about what happened.</i>
    
    NOUR: <i>Maybe B&N has a music section somewhere?</i>
        -> END

== chadbrodykristy2 ==
    NOUR: "Are you ready to talk to them, Ms. Suwan?"
    
    MS. SUWAN: "I'm still not entirely sure..."
    
    NOUR: "There's no backing out of this now. You have to face them once and for all. You'll feel better, I promise."
    
    MS. SUWAN: "...I suppose it'd be a worth a shot."
    //present tense already here, good!!
    <i>Ms. Suwan approaches Chad, Brody, and Kristy.</i>
    
    BRODY: "The one and only Suwan! You finally decided to speak to us, and it's not just for our study notes. Must be a miracle!"
    
    MS. SUWAN: "Is it really you guys? How are you here?"
    
    KRISTY: "Why did you abandon us, Niki? We missed you so much."
    
    MS. SUWAN: "I didn't abandon you, I had-"
    
    BRODY: "Let me guess, work? It's always work with you."
    
    MS. SUWAN: "I'm sorry I actually studied so I wouldn't flunk school instead of wasting my nights drinking and going to Paradise concerts."
    
    BRODY: "Yeesh, sorry for wanting to just hang out like normal friends."
    
    MS. SUWAN: "I had a so much riding on my career. For me to sabotage it like that when it hadn't even started? No. Failing was not an option."
    
    CHAD: "Fail? Kannika, you always did better than any of us. We never saw get below a 90 on an exam, ever."
    
    KRISTY: "You always blamed us for your failures when in reality? You just had ridiculous standards you were always trying to beat."
    //I LIKE TURNING INTO KANNIKA 
    
    NOUR: <i>Ms. Suwan's face morphs into a bitter expression. A reflection of her younger, rasher self...</i>
    
    KANNIKA: "Maybe that's because I didn't have it easy like the rest of you!"
    
    CHAD: "Easy? Is this a competition now to see who suffered the most?"
    
    KANNIKA: "NONE of you would ever understand what it was like for me! How hard I worked to get where I am with nothing but myself to rely on."
    
    KANNIKA: "You would've done the <i>exact same thing</i> if you were in my position."
    
    KRISTY: "But Niki..."
    
    CHAD: "You know us better than anyone else."
    
    BRODY: "<b>Would we have done the same things you did to us?</b>"
    
    <i>Silence hangs heavily in the room. Everyone stares at her. She doesn't answer them back.</i>
    
    KRISTY: "Ignore us like you did back then for the conerts, our <b>cafe</b> study sessions, and the rest of our years at Seton Hall."
    
    CHAD: "Don't talk to us until you're actually ready to apologize."
    
    BRODY: "Like she'll ever be. We should've never invited her to our <b>cafe</b> study sessions from the very beginning."
    
    CHAD: "And we always waited for you to go to the cafe beause you promised us."
    
    KRISTY: "We always waited."
    
    BRODY: "Always."
    
    <i>Chad, Kristy, and Brody stop staring at Ms. Suwan and keep to themselves.</i>
    
    MS. SUWAN: "..."
    
    NICK: "Cafe study sessions? You mean at the cafe here at the mall?"
    
    NOUR: "I used to go that place all the time."
    
    NOUR: "Is that why they're here at the mall? Are they waiting for...you?"
    
    MS. SUWAN: "Idiots. Why wait for someone who wouldn't wait for you?"
    
    MS. SUWAN: "I...I tried. And look where that got me."
    
    MS. SUWAN: "I want to leave. Now."
    
    NOUR: <i>Ms. Suwan doesn't realize what she did was wrong.</i>
    
    NOUR: <i>I have to make her realize that her friendship could have been saved if she had done things differently.</i>
    
    NOUR: <i>If she doesn't want to be here, I should go to where she was supposed to go all those years ago to make good on that promise.</i>

&LIGHT_Suwan0
-> light_on
-> END

=== chadbrodkristy2_repeat ===
    NOUR: <i>The three of them mentioned something about the cafe. I also used to go to the cafe here a lot too with...nevermind. That's not important right now.</i>
    
    NOUR: <i>I could try going there to see if it could spark a memory of Ms. Suwan's that could get her to realize her mistake.</i>
-> END
=== chadbrodykristy3 ===
    
    NOUR: "We're back. Go ahead, Ms. Suwan."

    <i>Ms. Suwan takes a nervous breath and steels herself.</i>
    
    KANNIKA: "I-I didn't mean to push you guys away. I just had to get ahead, and..."
    
    KANNIKA: "No. I'm done with excuses. I'm sorry for being a terrible friend."
    
    KANNIKA: "You guys just wanted to cheer me up and be my actual friends. I couldn't see it at the time because I was so focused on myself."
    
    KANNIKA: "I was so obsessed and anxious over our final exam. I couldn't sleep, and it tore me up inside thinking I was going to fail it."
    
    KANNIKA: "I kept telling myself it was a waste of time to be at a concert the night before finals. But then after you all convinced me to go, and we got there..."
    
    KANNIKA: "For those 4 hours, the stress of succeeding to the great lengths I enslaved myself to...it was all so small compared to the music."
    
    KANNIKA: "I felt so at peace with you all, cheering in that audience. It made me think of what life could be like."
    
    KANNIKA: "It was a life I chose to turn away from."
    
    KANNIKA: "I never thanked you guys for that experience, but I wanted to now by giving you this album."
    
    <i>Ms. Suwan shows them the album. Chad, Brody, and Kristy stare...and then smile sadly at her.</i>
    
    BRODY: "You were already the best, Suwan. We just wanted to be there for you so you didn't burn yourself out."
    
    CHAD: "We looked up to you, but we also were afraid for you."
    
    KRISTY: "Why do you think we went to those concerts right before our exams?"
    
    CHAD: "We wanted to make sure you got a chance to loosen up after cramming for weeks straight."
    
    KANNIKA: "I...I didn't even realize that. And the things I said to you after..."
    
    KRISTY: "It hurt a lot. But it's ok, Niki. You're doing well, and that's all that mattered to me."
    
    KANNIKA: "Kristy, I'm so sorry about everything. Please-"
    //CODE TO MAKE KRISTY NPC DISAPPEAR
    <i>Kristy suddenly disappears.</i>
    
    NOUR: "Where did she—"
    
    BRODY: "Kristy was always ready to forgive you, but you know me, Suwan. The skeptic. I'm not fully convinced you've changed because old habits die hard."
    
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
    
    <i>Ms. Suwan drops the album to the ground. The thud echoes through the hallway. She doesn't move.</i>
    
    NOUR: "Are you ok?"
    
    No response.
    
    NOUR: "I'm sorry it turned out that way."//possible space for gather
    
    MS. SUWAN: "It's ok. I didn't expect anything to change miraculously."
    
    NOUR: "Maybe if we could find them again, we could change how—"
    
    MS. SUWAN: "There's no changing what could've been. But that's ok with me."
    
    MS. SUWAN: "I've spent so much time fighting to keep my regrets out, but now I've finally looked it in the eye...and I think I can lay this feeling to rest."
    
    NOUR: "But don't you think you could be happier if it had gone better?"
    
    MS. SUWAN: "Sometimes it's not about things getting better. To face them is enough for me."
    
    MS. SUWAN: "Even if they weren't real and this was all just one big dream, my feelings are real."
    
    MS. SUWAN: "There are some things you just can't fix, and that's okay. Worry about the things you can."
    
    NOUR: "..."
    
    NOUR: <i>I don't really understand how she could be ok with how this turned out...but she seems so much more at peace than before.</i>
    
    NOUR: <i>...The album is still on the floor.</i>
        * Pick up the album on the floor
            NOUR: "Here. I think they all wanted you to have this."
            
            MS. SUWAN: "Oh..."
        
            <i>Ms. Suwan accepts the album and holds it close to her.</i>
        
            MS. SUWAN: "Thank you, Nour."
        
    - MS. SUWAN: "It's just too bad that they all disappeared before I had a chance to ask how to leave this place."
    
    NOUR: "It's ok. This was more important. We can definitely find another way out of here."
    
    //INSERT ELEVATOR BEEP BOOP BUTTON LIGHT STUFF HERE
    
    //should there be a moment here that has an SFX for the elevator light...and then have Nour comment on it???
    &LIGHT_Suwan2
    &MOV_RINA_HALLWAY
        -> light_on    
    // -> END
