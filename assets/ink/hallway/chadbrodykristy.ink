
== chadbrodykristy ==

{
    - musicstand1 && musicstand2: 
        -> chadbrodykristy3
        
    - chadbrodykristy2:
        -> chadbrodkristy2_repeat
        
    - musicstand1:
        -> chadbrodykristy2
        
    - chadbrodykristy1:
        -> chadbrodykristy1_repeat
        
    - else:
        -> chadbrodykristy1
}

== chadbrodykristy1==
    
    &FOLLOW_NICK_NickCBKStart
    
    &FOLLOW_SUWAN_SuwanCBKStart
    
    NOUR: "Hello... Would you guys know anything about-"
    
    &PAUSE_1.0
    
    &EMOTE_SUWAN_UpIdle
    
    &EMOTE_NICK_UpIdle
    
    &PORTRAIT_nick_nickworried

    NICK: "Hey, are these people real? How'd they even get in here?"
    
    &PORTRAIT_ms. suwan_suwannervous
    
    &FOLLOW_NOUR_NourCBKStart
    
    &PAUSE_1.0
    
    &EMOTE_NOUR_RightIdle
    
    NOUR: <i>Maybe they know a way out of here.</i>
    
        * "Nick, are you down to ask them for help?"
            
            NICK: "They'll probably listen more to someone who's older."
            
                ** "Fair enough. Ms. Suwan, what do you think?"
    
        * "Ms. Suwan, can you ask them for help?"

    - MS. SUWAN: "..."
    
    &PORTRAIT_nour_nourannoyed
    
    NOUR: "...Ms. Suwan? Are you listening?"
    
    &PORTRAIT_nick_nickangry
    
    &EMOTE_NICK_LeftIdle

    NICK: "Hey, lady!!!"
    
    MS. SUWAN: "...!"
    
    &PORTRAIT_ms. suwan_suwanannoyed
    
    MS. SUWAN: "No need to shout. What's going on?"
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "Can you ask these people what's going on?"
    
    MS. SUWAN: "We must focus on the elevator."
    
    MS. SUWAN: "I will contact a technician to come down here."
        
        * "I don't think anyone outside is going to believe us[."], but these people will."
        
        * "It wouldn't hurt to ask these people[..."], they're right here."
    
    - &PORTRAIT_nour_nournervous
    
    NOUR: <i>If... they're even real?</i>
    
    &PORTRAIT_nick_nickworried
    
    NICK: "What kind of repair guy could fix a magical elevator?"
    
    &PORTRAIT_ms. suwan_suwannervous
    
    MS. SUWAN: "This... maybe I am thinking of the wrong floor..."
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: <i>Why do I get the feeling she might know them?</i>
    
    &PORTRAIT_nour_nourannoyed

    NOUR: "Fine. I'll ask them again."
    
    &FOLLOW_NOUR_SuwanCBKTalk
    
    &PORTRAIT_nour_nourneutral
    
    &PAUSE_0.7
    
    &EMOTE_NOUR_UpIdle
    
    NOUR: "Look, we're sorry to bother you, but we really need help right now."
    
    ...
    
    &PORTRAIT_nour_nournervous
    
    NOUR: <i>They're just staring blankly at Ms. Suwan. Something really weird is going on...</i>
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "If you could just help us out for one second—"
    
    &PORTRAIT_ms. suwan_suwanannoyed
    
    MS. SUWAN: "No use. We do <i>not</i> need help from strangers."
    
    &PORTRAIT_???_chadneutral
    
    ???: "Strangers?"
    
    &FOLLOW_NOUR_NourCBKStart
    
    &PAUSE_0.175
    
    &EMOTE_NOUR_UpIdle
    
    &PORTRAIT_ms. suwan_suwannervous
    
    MS. SUWAN: "!"
    
    &PORTRAIT_???_brodyneutral
    
    ???: "Looks like Chad, Kristy, and Brody got demoted to strangers. What a surprise."
    
    NOUR: "What the—"
    
    &PORTRAIT_chad_chadannoyed
    
    CHAD: "So that's what you thought of us this whole time, Kannika?"
    
    NICK: "Who's Kannika?"
    
    &PORTRAIT_kristy_kristysad
    
    KRISTY: "Niki, how could you say that to us? We were so close..."
    
    KRISTY: "Were all the study sessions and rock shows nothing to you?"

    &PORTRAIT_nick_nickrealization
    
    NICK: "Did she say... <i>rock shows</i>?"
    
    &PORTRAIT_nour_nourneutral
    
    &EMOTE_NOUR_RightIdle
    
    NOUR: "Ms. Suwan? Are you... okay?"
    
    &PORTRAIT_ms. suwan_suwanshadow
    
    MS. SUWAN: "..."
    
    CHAD: "Speechless? Never thought I'd get to see that."
    
    BRODY: "Once she finds her words, she'll spin us some new excuse for what she did."
    
    NOUR: "Ms. Suwan, do you—"
    
    &PORTRAIT_ms. suwan_suwanshadow
    
    MS. SUWAN: "We're leaving."
    
    BRODY: "Don't worry Suwan, we'll be right here."
    
    BRODY: "In case you want to ignore us. <i>Again</i>."
    
    NICK: "They don't wanna help us out?"
    
    MS. SUWAN: "Word of advice? The only person you can trust is yourself."
    
    MS. SUWAN: "I will handle this <i>alone</i>."
    
    &PORTRAIT_ms. suwan_suwanneutral
    
    MS. SUWAN: "There is a bookstore on this floor— the B&N."
    
    MS. SUWAN: "They must have a way to contact the outside."
    
    &PORTRAIT_nour_nourannoyed

    NOUR: "Are you sure you can't ask them anything?"
    
    MS. SUWAN: "I have nothing to say. Let us go."
    
    NICK: "I'm still thinking about the rock shows that you <i>supposedly</i> went to..."
    
    &FOLLOW_NOUR_stop
    
    &PORTRAIT_nour_nourpondering
    &PORTRAIT_ms. suwan_suwanneutral
    &PORTRAIT_nick_nicknetural

    -> chadbrodykristy1_repeat
            
=== chadbrodykristy1_repeat ===
            
    &PORTRAIT_nour_nourrealization
    
    NOUR: <i>Ms. Suwan went to rock shows with these people...</i>
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: <i>I wonder if the music section in B&N has anything that would help her open up about her past.</i>
    
    -> END

== chadbrodykristy2 ==
    
    &FOLLOW_NICK_NickCBKStart
    
    &FOLLOW_SUWAN_SuwanCBKStart
    
    &FOLLOW_NOUR_NourCBKStart
    
    NOUR: "You can't keep avoiding this. It'll eat you up inside."
    
    &PAUSE_0.2
    
    &EMOTE_NICK_UpIdle
    
    &EMOTE_NOUR_RightIdle
    
    &EMOTE_SUWAN_UpIdle
    
    &PORTRAIT_suwan_suwanannoyed
    
    MS. SUWAN: "...I suppose."

    &FOLLOW_SUWAN_SuwanCBKTalk
    
    &PAUSE_0.5
    
    &PORTRAIT_ms. suwan_suwanannoyed
    
    &EMOTE_NOUR_UpIdle
    
    BRODY: "You <i>finally</i> decide to speak to us!"
    
    MS. SUWAN: "...How are you here?"
    
    KRISTY: "Why did you abandon us, Niki? You know, we really missed you."
    
    &PORTRAIT_ms. suwan_suwannervous
    
    MS. SUWAN: "I didn't abandon you, I had-"
    
    BRODY: "Let me guess, work? It's always work with you."
    
    MS. SUWAN: "Apologies for prioritizing my studies over getting <i>wasted</i> at Paradise shows."
    
    BRODY: "We weren't getting <i>wasted</i> every night!"
    
    KRISTY: "Sure, we went to shows. You were invited to <i>all of them</i>."
    
    KRISTY: "<i>And</i> we spent countless hours studying at the Cafe, where we <i>also</i> invited you."
    
    KRISTY: "You said you'd go. And then, you stopped showing up."
    
    MS. SUWAN: "Even <i>one</i> bit of wasted time could have jeopardized my career."
    
    BRODY: "So you abandoned your friends, and the promises you made to us."
    
    BRODY: "Is that success to you?"
    
    CHAD: "Kannika, you did better than all of us. Never below a 90 on exams."
    
    &PORTRAIT_ms. suwan_suwanangry
    
    KANNIKA: "And I had to work <i>twice as hard</i> as you to get those scores."
    
    &PORTRAIT_kristy_kristyangry
    
    KRISTY: "...You know what, fine."
    
    KRISTY: "Don't talk to us until you're ready to apologize."
    
    MS. SUWAN: "..."
    
    &EMOTE_SUWAN_DownIdle
    
    &FOLLOW_SUWAN_SuwanCBKStart
    
    &PORTRAIT_ms. suwan_suwanannoyed
    
    &EMOTE_NOUR_RightIdle
    
    &EMOTE_NICK_LeftIdle
    
    MS. SUWAN: "I want to leave. Now."
    
    &PORTRAIT_nour_noursad
    
    * "Don't you want to apologize?"
    
    * "They still haven't helped us find a way out."
    
    - MS. SUWAN: "I <i>said</i> I want to leave."
    
    &PORTRAIT_nick_nickworried
    
    &PORTRAIT_nour_nourneutral
    
    NICK: "...Hold on, you guys studied at a Cafe? You know, there's one <i>here</i>."
    
    NICK: "That's the one I hung out at."
    
    MS. SUWAN: "That's great. We are leaving."
    
    NOUR: <i>Ms. Suwan could've saved her friendships if she had done things differently.</i>
    
    NOUR: <i>She's pretty dismissive about the Cafe... Nick might be onto something.</i>
    
    &FOLLOW_NOUR_stop
    &FOLLOW_SUWAN_NICK
    &FOLLOW_NICK_NOUR

    &LIGHT_Suwan0
    
    {~firstLightCharacter = "Ms. Suwan"}
    {~firstLightPronoun = "she's"}
    
    -> light_on


=== chadbrodkristy2_repeat ===

    NOUR: <i>Seems like I'm not the only one with bittersweet memories attached to the mall Cafe.</i>
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: <i>Clearly, Ms. Suwan was supposed to study there with these three.</i>
    
    NOUR: <i>Maybe she'll open up to us about it if we go.</i>
    
    -> END

=== chadbrodykristy3 ===
    
    &FOLLOW_NICK_NickCBKStart
    
    &FOLLOW_SUWAN_SuwanCBKStart
    
    &FOLLOW_NOUR_NourCBKStart
    
    NOUR: "We're back. Go ahead, Ms. Suwan."
    
    &PAUSE_0.3
    
    &EMOTE_SUWAN_UpIdle
    
    &EMOTE_NOUR_UpIdle
    
    &EMOTE_NICK_UpIdle

    &FOLLOW_SUWAN_SuwanCBKTalk
    
    &PORTRAIT_ms. suwan_suwannervous
    
    &PAUSE_0.5
    
    MS. SUWAN: "..."
    
    &PORTRAIT_ms. suwan_suwanshadow
    
    KANNIKA: "I-I didn't mean to push you all away. I needed to get ahead, and..."
    
    KANNIKA: "..."
    
    KANNIKA: "...I am done with excuses. I am sorry for being a terrible friend."
    
    &PORTRAIT_suwan_suwanneutral
    
    KANNIKA: "You were wonderful friends, and I was too focused on my career to see that."
    
    KANNIKA: "In retrospect, it was obvious how much you all cared for me."
    
    KANNIKA: "Remember that one time I could not sleep, because I was stressing over finals?"
    
    KANNIKA: "You all invited me to a show."
    
    KANNIKA: "Reluctantly, I agreed to go."
    
    KANNIKA: "...And for a few hours, I was... at peace."
    
    KANNIKA: "We were packed like sardines in a small room."
    
    KANNIKA: "There was that stench of cigarettes and alcohol."
    
    KANNIKA: "We were together."
    
    KANNIKA: "We were shouting the words to our favorite songs alongside fifty strangers."
    
    KANNIKA: "That kind of bliss... Was a life I chose to turn away from."
    
    KANNIKA: "I hope you can... Take this album... as a long overdue <i>thank you</i>."
    
    <i>Ms. Suwan shows them the album in her hands. Chad, Brody, and Kristy stare...</i>
    
    <i>...And then smile sadly at her.</i>
    
    &PORTRAIT_chad_chadsad
    
    &PORTRAIT_brody_brodysad
    
    &PORTRAIT_kristy_kristysad
    
    BRODY: "We just wanted to be there for you so you didn't burn yourself out."
    
    CHAD: "We were afraid for you."
    
    KRISTY: "Why do you think we went to those shows right before our exams?"
    
    CHAD: "We wanted to make sure you got a chance to relax after cramming for <i>weeks</i>."
    
    KANNIKA: "I... failed to realize that."
    
    KANNIKA: "And what I said to you after..."
    
    KRISTY: "It hurt a lot. But it's okay, Niki."
    
    KRISTY: "You're doing well, and that's all that matters to us."
    
    KANNIKA: "Kristy, I am so sorry about everything-"
    
    &PAUSE_0.5
    
    &SHLORP_CBK_Kristy_out
    
    &PAUSE_0.5
    
    &PORTRAIT_nour_nournervous
    
    NOUR: "Where did she—"
    
    BRODY: "Kristy was always ready to forgive you, Suwan."
    
    BRODY: "But I'm not fully convinced that you've changed..."
    
    &PORTRAIT_brody_brodyannoyed
    
    BRODY: "Look, you're exactly the person you always wanted to be. Good for you."
    
    &PORTRAIT_ms. suwan_suwansad
    
    KANNIKA: "Brody... what I said back then—"
    
    &PAUSE_0.5
    
    &SHLORP_CBK_Brody_out
    
    &PAUSE_0.5
    
    CHAD: "You were always locked up in your room, studying. We were worried."
    
    KANNIKA: "I know. It was wrong of me to blame you for <i>my</i> anxiety."
    
    CHAD: "The Kannika we knew wouldn't have been able to admit that."
    
    CHAD: "Looks like you're changing."
    
    KANNIKA: "Take the album, Chad. <i>Please</i>. It would mean the world."
    
    CHAD: "I think you need it more than we do, Kan."
    
    CHAD: "Don't forget to listen to the music and <i>relax</i> every now and then, you hear?"
    
    CHAD: "That's all we ever really wanted for you, Kannika."
    
    KANNIKA: "...Okay."
    
    &PAUSE_0.5
    
    &SHLORP_CBK_Chad_out
    
    &PAUSE_0.5
    
    &PORTRAIT_ms. suwan_suwannervous
    
    KANNIKA: "..."
    
    &PORTRAIT_nour_noursad
    
    &EMOTE_SUWAN_DownIdle
    
    &EMOTE_NICK_LeftIdle
    
    &PAUSE_0.5
    
    NOUR: "Are you okay?"
    
    MS. SUWAN: "..."
    
    NOUR: "I'm sorry it turned out that way."//possible space for gather
    
    &PORTRAIT_ms. suwan_suwanshadow
    
    MS. SUWAN: "...I did not expect anything to change miraculously."
    
    &PORTRAIT_nour_nournervous
    
    NOUR: "Maybe if we could find them again, we could change how—"
    
    &PORTRAIT_ms. suwan_suwansad
    
    MS. SUWAN: "I have spent so much time fighting my regrets."
    
    MS. SUWAN: "But now that I have faced my past... I can lay it to rest."
    
    NOUR: "But don't you think you could be happier if it had gone better?"
    
    &PORTRAIT_ms. suwan_suwanneutral
    
    MS. SUWAN: "We are unable to change the past. We can only choose to accept it."
    
    MS. SUWAN: "With acceptance, maybe... we can grow."
    
    MS. SUWAN: "This... <i>hallucination</i> has helped me realize that."
    
    MS. SUWAN: "There are some things you cannot fix, and that is okay."
    
    MS. SUWAN: "Look forward, and worry about the things you <i>can</i> change."
    
    &PORTRAIT_nour_noursad
    
    NOUR: "..."
    
    NOUR: <i>...She seems to be more at peace, even though she can't change her past.</i>
    
    &LIGHT_Suwan2
    
    &FOLLOW_NOUR_stop

    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "..."
    
    &PAUSE_1.5
    
    &MOV_RINA_HALLWAY
    
    &EMOTE_SUWAN_UpIdle
    
    &PAUSE_0.15
    
    MS. SUWAN: "Nour, your old friend is here."
    
    &EMOTE_SUWAN_DownIdle
    
    MS. SUWAN: "If I could face the mistakes I made with Chad, Brody, and Kristy..."
    
    MS. SUWAN: "I believe you are prepared to do the same with her."
    
    &FOLLOW_NOUR_stop
    &FOLLOW_SUWAN_NICK
    &FOLLOW_NICK_NOUR
    
        -> light_on
