
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
    
    &PORTRAIT_nick_nicknervous

    NICK: "Hey, are these people real? How'd they even get in here?"
    
    &PORTRAIT_ms. suwan_mssuwannervous
    
    &FOLLOW_NOUR_NourCBKStart
    
    &PAUSE_1.0
    
    &EMOTE_NOUR_RightIdle
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: <i>Maybe they know a way out of here.</i>
    
    &PORTRAIT_nour_nourneutral
    
        * "Nick, are you down to ask them for help?"
            
            &PORTRAIT_nick_nickpondering
            
            NICK: "They'll probably listen more to someone who's older."
            
            &PORTRAIT_nour_nourpondering
            
                ** "Fair enough. Ms. Suwan, what do you think?"
    
        * "Ms. Suwan, can you ask them for help?"

    - MS. SUWAN: "..."
    
    &PORTRAIT_nour_nourannoyed
    
    NOUR: "... Ms. Suwan? Are you listening?"
    
    &PORTRAIT_nick_nickangry
    
    &EMOTE_NICK_LeftIdle

    NICK: "Hey, Ms. Suwan!"
    
    MS. SUWAN: "... !"
    
    &PORTRAIT_ms. suwan_mssuwanannoyed
    
    MS. SUWAN: "No need to shout. What's going on?"
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "Can you ask these people what's going on?"
    
    &PORTRAIT_ms. suwan_mssuwanneutral
    
    MS. SUWAN: "We must focus on the elevator."
    
    &PORTRAIT_ms. suwan_mssuwanpondering
    
    MS. SUWAN: "I will contact a technician to come down here."
    
    &PORTRAIT_nour_nourpondering
        
        * "I don't think anyone outside is going to believe us[."], but these people will."
        
        * "It wouldn't hurt to ask these people[..."], they're right here."
    
    - &PORTRAIT_nour_nournervous
    
    NOUR: <i>If... they're even real?</i>
    
    &PORTRAIT_nick_nicknervous
    
    NICK: "What kind of repair guy could fix a magical elevator?"
    
    &PORTRAIT_ms. suwan_mssuwannervous
    
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
    
    &PORTRAIT_nour_nourannoyed
    
    NOUR: <i>They're just staring blankly at Ms. Suwan.</i>
    
    &PORTRAIT_nour_nournervous
    
    NOUR: <i>Something really weird is going on...</i>
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "If you could just help us out for one second—"
    
    &PORTRAIT_ms. suwan_mssuwanannoyed
    
    MS. SUWAN: "No use. We do <i>not</i> need help from strangers."
    
    &PORTRAIT_???_chadneutral
    
    ???: "Strangers?"
    
    &FOLLOW_NOUR_NourCBKStart
    
    &PAUSE_0.175
    
    &EMOTE_NOUR_UpIdle
    
    &PORTRAIT_ms. suwan_mssuwannervous
    
    MS. SUWAN: "!"
    
    &PORTRAIT_???_brodyneutral
    
    ???: "Looks like Chad, Kristy, and Brody got demoted to strangers..."
    
    &PORTRAIT_???_brodyannoyed
    
    BRODY: "Not like I'm surprised. Typical Suwan..."
    
    &PORTRAIT_nour_nourrealization
    
    NOUR: "What the—"
    
    &PORTRAIT_chad_chadannoyed
    
    CHAD: "So that's what you thought of us this whole time, Kannika?"
    
    NICK: "Who's Kannika?"
    
    &PORTRAIT_kristy_kristysad
    
    KRISTY: "Niki, how could you say that to us? We were so close..."
    
    &PORTRAIT_kristy_kristyangry
    
    KRISTY: "Were all the study sessions and concerts nothing to you?"

    &PORTRAIT_nick_nicknervous
    
    NICK: "Did she say... <i>concerts</i>?"
    
    &PORTRAIT_nour_nourneutral
    
    &EMOTE_NOUR_RightIdle
    
    NOUR: "Ms. Suwan? Are you... okay?"
    
    //&PORTRAIT_ms. suwan_mssuwanshadow
    &PORTRAIT_ms. suwan_mssuwannervous
    
    MS. SUWAN: "..."
    
    &PORTRAIT_chad_chadneutral
    
    CHAD: "Speechless? Never thought I'd get to see that."
    
    &PORTRAIT_brody_brodyneutral
    
    BRODY: "But once she finds her words..."
    
    &PORTRAIT_brody_brodyannoyed
    
    BRODY: "... She'll spin us some new excuse for what she did."
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: "Ms. Suwan, do you—"
    
    //&PORTRAIT_ms. suwan_mssuwanshadow
    &PORTRAIT_ms. suwan_mssuwansad
    
    MS. SUWAN: "We're leaving."
    
    &PORTRAIT_brody_brodyneutral
    
    BRODY: "Don't worry Suwan, we'll be right here."
    
    &PORTRAIT_brody_brodyangry
    
    BRODY: "In case you want to ignore us. <i>Again</i>."
    
    &PORTRAIT_nick_nicksad
    
    NICK: "They don't wanna help us out?"
    
    &PORTRAIT_ms. suwan_mssuwanpondering
    
    MS. SUWAN: "Word of advice? The only person you can trust is yourself."
    
    &PORTRAIT_ms. suwan_mssuwanangry
    
    MS. SUWAN: "I will handle this <i>alone</i>."
    
    &PORTRAIT_ms. suwan_suwanneutral
    
    MS. SUWAN: "There is a bookstore on this floor— the B&N."
    
    &PORTRAIT_ms. suwan_mssuwanpondering
    
    MS. SUWAN: "They must have a way to contact the outside."
    
    &PORTRAIT_nour_nourannoyed

    NOUR: "Are you sure you can't ask them anything?"
    
    &PORTRAIT_ms. suwan_mssuwanangry
    
    MS. SUWAN: "I have nothing to say. Let us go."
    
    &PORTRAIT_nick_nickpondering
    
    NICK: "Are we gonna talk about the concerts that you <i>supposedly</i> went to..."
    
    &PORTRAIT_ms. suwan_mssuwanannoyed
    
    MS. SUWAN: "<i>No.</i> B&N, NOW."
    
    &PORTRAIT_nick_nicksad
    
    NICK: "..."
    
    &PORTRAIT_nour_noursad
    
    NOUR: "..."
    
    &PORTRAIT_nour_nourannoyed
    
    NOUR: <i>She really doesn't want to talk to these people... but why?</i>
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: <i>... I should find out. It could help us leave this place.</i>
    
    &FOLLOW_NOUR_stop
    
    &PORTRAIT_nour_nourpondering
    &PORTRAIT_ms. suwan_mssuwanneutral
    &PORTRAIT_nick_nicknetural

    -> chadbrodykristy1_repeat
            
=== chadbrodykristy1_repeat ===
            
    &PORTRAIT_nour_nourrealization
    
    NOUR: <i>Ms. Suwan went to rock shows with these people...</i>
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: <i>Maybe the B&N has something that could open her up more about her past.</i>
    
    -> END

== chadbrodykristy2 ==
    
    &FOLLOW_NICK_NickCBKStart
    
    &FOLLOW_SUWAN_SuwanCBKStart
    
    &FOLLOW_NOUR_NourCBKStart
    
    &PORTRAIT_nour_noursad
    
    NOUR: "You can't keep avoiding this. It'll eat you up inside."
    
    &PAUSE_0.2
    
    &EMOTE_NICK_UpIdle
    
    &EMOTE_NOUR_RightIdle
    
    &EMOTE_SUWAN_UpIdle
    
    &PORTRAIT_ms. suwan_mssuwanannoyed
    
    MS. SUWAN: "... I suppose."

    &FOLLOW_SUWAN_SuwanCBKTalk
    
    &PAUSE_0.5
    
    &EMOTE_NOUR_UpIdle
    
    &PORTRAIT_brody_brodyannoyed
    
    BRODY: "You <i>finally</i> decide to speak to us!"
    
    &PORTRAIT_ms. suwan_mssuwanangry
    
    MS. SUWAN: "... How are you here?"
    
    &PORTRAIT_kristy_kristyangry
    
    KRISTY: "Why did you abandon us, Niki?"
    
    &PORTRAIT_kristy_kristysad
    
    KRISTY: "You know, we really missed you..."
    
    &PORTRAIT_ms. suwan_mssuwannervous
    
    MS. SUWAN: "I didn't abandon you. I had-"
    
    &PORTRAIT_brody_brodyannoyed
    
    BRODY: "Let me guess, work? It's always work with you."
    
    &PORTRAIT_ms. suwan_mssuwanangry
    
    MS. SUWAN: "Must I apologize for prioritizing my studies?"
    
    &PORTRAIT_ms. suwan_mssuwanfurious
    
    MS. SUWAN: "For choosing NOT to get <i>wasted</i> at Paradise shows?"
    
    &PORTRAIT_brody_brodyangry
    
    BRODY: "We weren't getting <i>wasted</i> every night!"
    
    &PORTRAIT_kristy_kristysad
    
    KRISTY: "We just wanted to have fun! You were invited to <i>all of them</i>."
    
    &PORTRAIT_kristy_kristyangry
    
    KRISTY: "<i>And</i> we spent hours studying at the cafe, which we <i>also</i> invited you to..."
    
    &PORTRAIT_kristy_kristyannoyed
    
    KRISTY: "You said you'd go. And then, you stopped showing up."
    
    &PORTRAIT_ms. suwan_mssuwannervous
    
    MS. SUWAN: "Even <i>one</i> bit of wasted time could have jeopardized my career."
    
    &PORTRAIT_brody_brodyannoyed
    
    BRODY: "So you abandoned your friends <i>and</i> the promises you made to us."
    
    &PORTRAIT_brody_brodyangry
    
    BRODY: "Is that success to you?"
    
    &PORTRAIT_chad_chadsad
    
    CHAD: "Kannika, you did better than all of us. Never below a 90 on exams."
    
    &PORTRAIT_ms. suwan_mssuwanfurious
    
    KANNIKA: "And I had to work <i>twice as hard</i> as you to get those scores."
    
    &PORTRAIT_kristy_kristysad
    
    KRISTY: "... You know what, fine."
    
    &PORTRAIT_kristy_kristyangry
    
    KRISTY: "Don't talk to us until you're ready to apologize."
    
    &PORTRAIT_ms. suwan_mssuwansad
    
    MS. SUWAN: "..."
    
    &EMOTE_SUWAN_DownIdle
    
    &FOLLOW_SUWAN_SuwanCBKStart
    
    &PORTRAIT_ms. suwan_mssuwanshadow
    
    &EMOTE_NOUR_RightIdle
    
    &EMOTE_NICK_LeftIdle
    
    MS. SUWAN: "I want to leave. Now."
    
    &PORTRAIT_nour_noursad
    
    * "Don't you want to apologize?"
    
    * "They still haven't helped us find a way out."
    
    - &PORTRAIT_ms. suwan_mssuwanfurious
    
    MS. SUWAN: "I <i>said</i> I want to leave."
    
    &PORTRAIT_nick_nickpondering
    
    &PORTRAIT_nour_nourneutral
    
    NICK: "... Hold on. you guys studied at a <i>Cafe</i>?"
    
    &PORTRAIT_nick_nickshocked
    
    NICK: "Isn't there one right <i>here</i>? At this mall?"
    
    &PORTRAIT_nick_nicknervous
    
    NICK: "That's the one I hung out at."
    
    &PORTRAIT_ms. suwan_mssuwanangry
    
    MS. SUWAN: "That's great. We are leaving."
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: <i... Nick might be onto something.</i>
    
    &PORTRAIT_nour_nourannoyed
    
    NOUR: <i>If she doesn't want to talk to those three...</i>
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: <i>Maybe we could talk about them instead.</i>
    
    &FOLLOW_NOUR_stop
    &FOLLOW_SUWAN_NICK
    &FOLLOW_NICK_NOUR

    &LIGHT_Suwan0
    
    // {~firstLightCharacter = "Ms. Suwan"}
    // {~firstLightPronoun = "she's"}
    
    -> light_on


=== chadbrodkristy2_repeat ===

    &PORTRAIT_nour_noursad

    NOUR: <i>Seems like I'm not the only one with bittersweet memories from the Cafe.</i>
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: <i>Clearly, Ms. Suwan was supposed to study there with these three.</i>
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: <i>Maybe she'll open up to us about it if we go.</i>
    
    -> END

=== chadbrodykristy3 ===
    
    &FOLLOW_NICK_NickCBKStart
    
    &FOLLOW_SUWAN_SuwanCBKStart
    
    &FOLLOW_NOUR_NourCBKStart
    
    &PORTRAIT_nour_nournervous
    
    NOUR: "We're back. Go ahead, Ms. Suwan."
    
    &PAUSE_0.3
    
    &EMOTE_SUWAN_UpIdle
    
    &EMOTE_NOUR_UpIdle
    
    &EMOTE_NICK_UpIdle

    &FOLLOW_SUWAN_SuwanCBKTalk
    
    &PORTRAIT_ms. suwan_mssuwannervous
    
    &PAUSE_0.5
    
    MS. SUWAN: "..."
    
    //&PORTRAIT_ms. suwan_mssuwanshadow
    &PORTRAIT_ms. suwan_mssuwansad
    
    KANNIKA: "I-I didn't mean to push you all away."
    
    &PORTRAIT_ms. suwan_mssuwanangry
    
    KANNIKA: "I needed to get ahead, and..."
    
    &PORTRAIT_ms. suwan_mssuwansad
    
    KANNIKA: "..."
    
    &PORTRAIT_ms. suwan_mssuwanneutral
    
    KANNIKA: "... I am done with excuses."
    
    &PORTRAIT_ms. suwan_mssuwansad
    
    KANNIKA: "I am sorry for being a terrible friend."
    
    &PORTRAIT_ms. suwan_mssuwanneutral
    
    KANNIKA: "You were wonderful friends. I was too focused on my career to see that."
    
    &PORTRAIT_ms. suwan_mssuwanrealization
    
    KANNIKA: "In retrospect, it was obvious how much you all cared for me."
    
    &PORTRAIT_ms. suwan_mssuwansmile
    
    KANNIKA: "Remember that one time I could not sleep because I was stressing over finals?"
    
    &PORTRAIT_ms. suwan_mssuwanpondering
    
    KANNIKA: "You all invited me to a show."
    
    &PORTRAIT_ms. suwan_mssuwannervous
    
    KANNIKA: "Reluctantly, I agreed to go."
    
    &PORTRAIT_ms. suwan_mssuwanrealization
    
    KANNIKA: "... And for a few hours, I was... at peace."
    
    &PORTRAIT_ms. suwan_mssuwanneutral
    
    KANNIKA: "We were packed like sardines in a small room."
    
    &PORTRAIT_ms. suwan_mssuwanangry
    
    KANNIKA: "There was that stench of cigarettes and alcohol."
    
    &PORTRAIT_ms. suwan_mssuwansmile
    
    KANNIKA: "But it didn't matter because we were together."
    
    &PORTRAIT_ms. suwan_mssuwanneutral
    
    KANNIKA: "We were shouting the words to our favorite songs alongside fifty strangers."
    
    &PORTRAIT_ms. suwan_mssuwanrealization
    
    KANNIKA: "That kind of bliss... was a life I chose to turn away from."
    
    &PORTRAIT_ms. suwan_mssuwansad
    
    KANNIKA: "I hope you can... take this album as a long overdue <i>thank you</i>."
    
    Ms. Suwan shows them the album in her hands. Chad, Brody, and Kristy stare...
    
    ... And then smile sadly at her.
    
    &PORTRAIT_chad_chadsad
    
    &PORTRAIT_brody_brodysad
    
    &PORTRAIT_kristy_kristysad
    
    BRODY: "We just wanted to be there for you so you didn't burn yourself out."
    
    CHAD: "We were afraid for you."
    
    KRISTY: "Why do you think we went to those shows right before our exams?"
    
    &PORTRAIT_chad_chadhurt
    
    CHAD: "We wanted to make sure you got a chance to relax after cramming for <i>weeks</i>."
    
    &PORTRAIT_ms. suwan_mssuwanrealization
    
    KANNIKA: "I... failed to realize that."
    
    &PORTRAIT_ms. suwan_mssuwansad
    
    KANNIKA: "And what I said to you after..."
    
    &PORTRAIT_kristy_kristysad
    
    KRISTY: "It hurt a lot."
    
    &PORTRAIT_kristy_kristyneutral
    
    KRISTY: "But it's okay, Niki. You're doing well."
    
    &PORTRAIT_kristy_kristysad
    
    KRISTY: "That's all that matters to us."
    
    &PORTRAIT_ms. suwan_mssuwannervous
    
    KANNIKA: "Kristy, I am so sorry about everything-"
    
    &PAUSE_0.5
    
    &SHLORP_CBK_Kristy_out
    
    &PAUSE_0.5
    
    &PORTRAIT_nour_nournervous
    
    NOUR: "Where did she—"
    
    &PORTRAIT_ms. suwan_mssuwanrealization
    
    MS. SUWAN: "Kristy?"
    
    &PORTRAIT_brody_brodyneutral
    
    BRODY: "Kristy was always ready to forgive you, Suwan."
    
    &PORTRAIT_brody_brodyangry
    
    BRODY: "But I'm not fully convinced that you've changed..."
    
    &PORTRAIT_brody_brodyannoyed
    
    BRODY: "Look, you're exactly the person you always wanted to be. Good for you."
    
    &PORTRAIT_brody_brodysad
    
    BRODY: "... I just hope you don't make the same mistakes you did with us."
    
    &PORTRAIT_ms. suwan_mssuwansad
    
    KANNIKA: "Brody... what I said back then—"
    
    &PAUSE_0.5
    
    &SHLORP_CBK_Brody_out
    
    &PAUSE_0.5
    
    &PORTRAIT_ms. suwan_mssuwannervous
    
    MS. SUWAN: "Brody! Don't leave—"
    
    &PORTRAIT_chad_chadhurt
    
    CHAD: "You were always locked up in your room, studying. We were worried."
    
    &PORTRAIT_ms. suwan_mssuwansad
    
    KANNIKA: "I know. It was wrong of me to blame you for <i>my</i> anxiety."
    
    &PORTRAIT_chad_chadsad
    
    CHAD: "The Kannika we knew wouldn't have been able to admit that."
    
    &PORTRAIT_chad_chadneutral
    
    CHAD: "Looks like you're changing."
    
    &PORTRAIT_ms. suwan_mssuwannervous
    
    KANNIKA: "Take the album, Chad. <i>Please</i>. It would mean the world."
    
    &PORTRAIT_chad_chadsad
    
    CHAD: "I think you need it more than we do, Kan."
    
    &PORTRAIT_chad_chadhurt
    
    CHAD: "Don't forget to listen to the music and <i>relax</i> every now and then, you hear?"
    
    &PORTRAIT_chad_chadneutral
    
    CHAD: "That's all we ever really wanted for you, Kannika."
    
    &PORTRAIT_ms. suwan_mssuwansad
    
    KANNIKA: "... Okay."
    
    &PAUSE_0.5
    
    &SHLORP_CBK_Chad_out
    
    &PAUSE_0.5
    
    &PORTRAIT_ms. suwan_mssuwannervous
    
    KANNIKA: "..."
    
    &PORTRAIT_nour_noursad
    
    &EMOTE_SUWAN_DownIdle
    
    &EMOTE_NICK_LeftIdle
    
    &PAUSE_0.5
    
    NOUR: "Are you okay?"
    
    &PORTRAIT_ms. suwan_mssuwanneutral
    
    MS. SUWAN: "..."
    
    NOUR: "I'm sorry it turned out that way."//possible space for gather
    
    //&PORTRAIT_ms. suwan_mssuwanshadow
    &PORTRAIT_ms. suwan_mssuwansad
    
    MS. SUWAN: "... I did not expect anything to change miraculously."
    
    &PORTRAIT_nour_nournervous
    
    NOUR: "Maybe if we could find them again, we could change how—"
    
    &PORTRAIT_ms. suwan_mssuwannervous
    
    MS. SUWAN: "I have spent so much time fighting my regrets."
    
    &PORTRAIT_ms. suwan_mssuwanpondering
    
    MS. SUWAN: "But now that I have faced my past... I can lay it to rest."
    
    &PORTRAIT_nour_nourrealization
    
    NOUR: "But don't you think you could be happier if it had gone better?"
    
    &PORTRAIT_ms. suwan_mssuwanneutral
    
    MS. SUWAN: "We are unable to change the past. We can only choose to accept it."
    
    &PORTRAIT_ms. suwan_mssuwansad
    
    MS. SUWAN: "With acceptance, maybe... we can grow."
    
    &PORTRAIT_ms. suwan_mssuwanpondering
    
    MS. SUWAN: "This... <i>hallucination</i> has helped me realize that."
    
    &PORTRAIT_ms. suwan_mssuwannervous
    
    MS. SUWAN: "There are some things you cannot fix, and that is okay."
    
    &PORTRAIT_ms. suwan_mssuwansmile
    
    MS. SUWAN: "Look forward, and worry about the things you <i>can</i> change."
    
    &PORTRAIT_nour_noursad
    
    NOUR: "..."
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: <i>... She seems to be more at peace.</i>
    
    &PORTRAIT_nour_nournervous
    
    NOUR: <i>Even though she can't change her past.</i>
    
    &PORTRAIT_nour_nourannoyed
    
    NOUR: <i>...</i>
    
    &PORTRAIT_nour_noursad
    
    NOUR: <i>Could I ever feel like her about the past one day?</i>
    
    &LIGHT_Suwan2
    
    &FOLLOW_NOUR_stop

    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "..."
    
    &PAUSE_1.5
    
    &MOV_RINA_HALLWAY
    
    &EMOTE_SUWAN_UpIdle
    
    &PAUSE_0.15
    
    &PORTRAIT_ms. suwan_mssuwanrealization
    
    MS. SUWAN: "Nour, your old friend is here."
    
    &EMOTE_SUWAN_DownIdle
    
    &PORTRAIT_ms. suwan_mssuwanneutral
    
    MS. SUWAN: "If I could face the mistakes I made with Chad, Brody, and Kristy..."
    
    &PORTRAIT_ms. suwan_mssuwansad
    
    MS. SUWAN: "I believe you are prepared to do the same with her."
    
    &FOLLOW_NOUR_stop
    &FOLLOW_SUWAN_NICK
    &FOLLOW_NICK_NOUR
    
        -> light_on
