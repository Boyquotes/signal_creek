== consoles ==

{
    - consoles_afternickroute:
        -> explored_everything
        
    - nourplaysaplequest:
        -> consoles_afternickroute
        
    - wertoys_find_prince:
        -> nourplaysaplequest
        
    - consoles_start_aplequest:
        -> consoles_start_aplequest_repeat
        
    - aplequestguide_after_bookshelf_fightstarts:
        -> consoles_start_aplequest
        
    - consoles_before_start && consoles_before_aplequest:
        -> consoles_visited
        
    - consoles_before_start:
        -> consoles_before_aplequest
        
    - else: 
        -> consoles_before_start
}

=== consoles_before_start ===
    A start screen for a retro game called Aple Quest plays.
    
    &PORTRAIT_nick_nicksmallsmile
    
    NICK: "<i>Aple Quest</i>? Here? In brand-new condition?"
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "Looks like it still runs just fine."
    
    &PORTRAIT_nick_nickbigsmile
    
    NICK: "Man, I can't believe it's here in its original retro console!"
    
        * "You wanna give it a go?"
            
            &PORTRAIT_nick_nicksmallsmile
            
            NICK: "I—!"
            
            &PORTRAIT_nick_nicknervous
            
            NICK: "Um... no. This stuff's for little kids, so..."
            
            &PORTRAIT_nick_nicksad
            
            NICK: "I probably shouldn't."
            
        * "We shouldn't waste time..."
            
            &PORTRAIT_nour_nourneutral
        
            NOUR: "We should look for something that could help us."
            
            &PORTRAIT_nick_nicknervous
            
            NICK: "Um... yeah. This stuff's for little kids, so..."
            
            &PORTRAIT_nick_nicksad
            
            NICK: "We should just move on."
    
    - &PORTRAIT_nour_nourpondering
    
    NOUR: "...Hey, are you alright?"
    
    &PORTRAIT_nick_nickshadow
    
    NICK: "I'm fine. Let's just go already."
    
    &PORTRAIT_nour_noursad
    
    NOUR: "Whatever you say..."
    
    NOUR: <i>Weird. He seemed like he wanted to talk about this game.</i>
    
    NOUR: <i>I guess something about it is bothering him.</i>
    
    NOUR: <i>Maybe he'll want to talk about it later...</i>

    -> END

== consoles_before_aplequest ==

    The soft 8-bit boops of <i>Aple Quest</i> play, but Nick only stares at the screen. 
    
        &PORTRAIT_nour_nournervous
    
    NOUR: <i>Why isn't he saying anything? Maybe I have to start first...</i>
    
        &PORTRAIT_nour_noursmile
    
    NOUR: "You know a lot about this game, right Nick?"
    
        &PORTRAIT_nick_nickworried
    
    NICK: "Yeah. I don't know. Not really."
    
    &PORTRAIT_ms. suwan_mssuwanannoyed
    
    MS. SUWAN: "You said many words with little meaning."
    
    &PORTRAIT_nick_nickangry
    
    NICK: "I meant to say <i>no</i>! Just get off my case already, okay?"
    
    &PORTRAIT_ms. suwan_mssuwanneutral
    
    MS. SUWAN: "No need to be defensive. It was not a personal attack."
    
        &PORTRAIT_nick_nicksad
    
    NICK: "Whatever..."
    
    Nick huffs and turns away from the game.
    
    -> consoles_visited

== consoles_visited ==
    
    &PORTRAIT_nour_noursad
    
    NOUR: <i>Nick doesn't seem to want to talk about this yet.</i>
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: <i>We'll come back when he's ready.</i>
    
    &PORTRAIT_nick_nickneutral
    
    NICK: "Can we look at the spray paint or something?"

    -> END

== consoles_start_aplequest_repeat ==

    &PORTRAIT_nour_nourneutral

    NOUR: <i>Emperor Evercrisp said we've gotta find the four Aple Council members.</i>
    
    &PORTRAIT_nour_noursmile
    
    NOUR: <i>Once we find them, then we can find the Prince.</i>
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: <i>They should be hidden somewhere in the hallway.</i>
    
    -> END

== consoles_start_aplequest ==

        &PORTRAIT_nour_noursmile
        
    NOUR: "Look, Nick. It's the game we were reading about before."
    
        &PORTRAIT_nick_nickworried
    
    NICK: "..."
    
        &PORTRAIT_nour_nournervous
    
    NOUR: "Do you want to try playing it?"
    
    Nick turns his head away, silent.
    
    MS. SUWAN: "Give it up, Nour. He's throwing a tantrum—"
    
    &SHLORP_poop_EmperorEvercrisp_in
    
        &PORTRAIT_???_emperorevercrispsmile
    
    ???: "NEVER GIVE UP!!!"
    
        &PORTRAIT_nour_nournervous
    
    NOUR: "What the—!"
    
    The console screen glitches, and the game starts by itself...
    
    &PORTRAIT_???_emperorevercrisppreach

    ???: "The Council of Malus Domestica has fallen, and you are our only hope!"
    
    &PORTRAIT_ms. suwan_mssuwanannoyed
    
    MS. SUWAN: "Nour, what did you press?"
    
        &PORTRAIT_nour_nourannoyed
    
    NOUR: "I didn't press anything!"
    
    &PORTRAIT_???_emperorevercrispsmile
    
    ???: "Do not panic, for I am a friend—"
    
    &PORTRAIT_???_emperorevercrisppreach
    
    EMPEROR EVERCRISP: "I am <b>EMINENT EMPEROR EVERCRISP APLE</b>, leader of the Aples!"
    
        &PORTRAIT_nour_nournervous
    
    NOUR: "The game character is... speaking... to us?"
    
    &PORTRAIT_ms. suwan_mssuwanrealization
    
    MS. SUWAN: "This can't be real. This has to be some trick or prank."
    
    &PORTRAIT_emperor evercrisp_emperorevercrispsmile
    
    EMPEROR EVERCRISP: "Ho ho! Who is to say what is real and what is not?"
    
    &PORTRAIT_emperor evercrisp_emperorevercrispneutral
    
    EMPEROR EVERCRISP: "For you three... Those Who Walk Between Planes..." 
    
    &PORTRAIT_emperor evercrisp_emperorevercrisppreach
    
    EMPEROR EVERCRISP: "The past, present, and future exist all at once!"
    
        &PORTRAIT_nour_nourpondering
    
    NOUR: "Those who walk between... what?"
    
    &PORTRAIT_emperor evercrisp_emperorevercrispneutral
    
    EMPEROR EVERCRISP: "Our <i>Prince</i> went to Earth in search of the <b>four</b> missing members to restore order..."
    
    &PORTRAIT_emperor evercrisp_emperorevercrispsad
    
    EMPEROR EVERCRISP: "... But we've lost all communication with him."
    
    &PORTRAIT_emperor evercrisp_emperorevercrisppreach
    
    EMPEROR EVERCRISP: "Please, Dream Walkers! Bring me the Prince and all the Apple Council members!"
    
    &PORTRAIT_emperor evercrisp_emperorevercrispsmile
    
    EMPEROR EVERCRISP: "I shall reward you handsomely!"
    
    &PORTRAIT_ms. suwan_mssuwanpondering
    
    MS. SUWAN: "Dream Walkers?"
    
        &PORTRAIT_nour_nourpondering
    
    NOUR: "If we return with everyone, you'll reward us with what, exactly?"
    
    &PORTRAIT_emperor evercrisp_emperorevercrisppreach
    
    EMPEROR EVERCRISP: "Ho ho... How about access to our SECRET ENDING...?"
    
    &PORTRAIT_nick_nickshocked
    
    NICK: "... !"
    
    &PORTRAIT_emperor evercrisp_emperorevercrispsmile
    
    EMPEROR EVERCRISP: "Does this not entice you? HMM?"
    
    &PORTRAIT_nour_nourneutral
    
        * "Yeah."
        
                &PORTRAIT_nour_noursmile
                
            NOUR: "We have a big fan of yours over here, actually."
            
            NOUR: "I think he'd love to get a Secret Ending, right?"
            
                &PORTRAIT_nick_nickworried
            
            NICK: "..."
            
                &PORTRAIT_nour_noursad
            
            NOUR: "Um, that was a silent agreement."
            
            &PORTRAIT_emperor evercrisp_emperorevercrispsmile
            
            EMPEROR EVERCRISP: "HO HO! EXCELLENT, MARVELOUS, SPECTACULAR!!!"
        
        * "Not really..."
        
            &PORTRAIT_emperor evercrisp_emperorevercrispsmile
            
            EMPEROR EVERCRISP: "HO HO! EXCELLENT—"
            
            &PORTRAIT_emperor evercrisp_emperorevercrispneutral
            
            EMPEROR EVERCRISP: "... Oh."
            
            &PORTRAIT_emperor evercrisp_emperorevercrispsad
            
            EMPEROR EVERCRISP: "Does a Secret Ending not motivate you enough?"
            
                &PORTRAIT_nour_nourpondering
            
            NOUR: "Mmm... nope. I don't really know anything about <i>Aple Quest</i>."
            
            &PORTRAIT_nick_nickshocked
            
            NICK: "..."
            
                &PORTRAIT_nour_nourneutral
            
            NOUR: "I also don't know you. You could be a dangerous, uh, apple for all we know." 
            
            &PORTRAIT_emperor evercrisp_emperorevercrispneutral
            
            EMPEROR EVERCRISP: "OH... um..."
            
            &PORTRAIT_emperor evercrisp_emperorevercrisppreach
            
            EMPEROR EVERCRISP: "H-How would you like, say, a FREE BOX OF APLE QUEST SPACE-O's?"
            
            &PORTRAIT_nour_nournervous
            
            NOUR: "... Um. I don't know."
            
            &PORTRAIT_emperor evercrisp_emperorevercrispsad
            
            EMPEROR EVERCRISP: "Don't you want a delicious, nutritious breakfast cereal?"
            
            &PORTRAIT_emperor evercrisp_emperorevercrispsmile
            
            EMPEROR EVERCRISP: "IT'S SPACE <i>AND</i> APPLE THEMED!"
            
                &PORTRAIT_nour_nourpondering
            
            NOUR: "Eh..."
            
            &PORTRAIT_emperor evercrisp_emperorevercrispsad
            
            EMPEROR EVERCRISP: "P-Please?"
            
            &PORTRAIT_nick_nickworried
            
            NICK: "..."
            
                &PORTRAIT_nour_nourrealization
            
            NOUR: "... You know what? Why not."
            
            &PORTRAIT_nour_noursmile
            
            NOUR: "We have an expert on our side anyway."
            
            &PORTRAIT_emperor evercrisp_emperorevercrispsmile
            
            EMPEROR EVERCRISP: "PHEW! You humans drive a hard bargain, ho ho!"
            
                &PORTRAIT_nour_nourneutral
            
            NOUR: "Oh, and I think we'll pass on the cereal. The ending's enough."
            
            &PORTRAIT_emperor evercrisp_emperorevercrisppreach
            
            EMPEROR EVERCRISP: "VERY COOL!"
            
            &PORTRAIT_emperor evercrisp_emperorevercrispsad
            
            EMPEROR EVERCRISP: "... because I don't know where I put that stuff, ho ho..."
            
    - &PORTRAIT_nour_nourpondering
    
    NOUR: "So all we have to do is find four apple... People... And then the Prince?"
    
    &PORTRAIT_emperor evercrisp_emperorevercrispsmile
    
    EMPEROR EVERCRISP: "If you want that sweet, sweet secret ending!"
    
    &PORTRAIT_emperor evercrisp_emperorevercrispsad
    
    EMPEROR EVERCRISP: "But yes, please. I miss my son very much..."
    
        &PORTRAIT_nour_nourneutral
    
    NOUR: "Do you know where you last saw them all?"
    
    &PORTRAIT_emperor evercrisp_emperorevercrispsmile
    
    EMPEROR EVERCRISP: "Their last coordinates were all within the hallways of the mall."
    
    &PORTRAIT_emperor evercrisp_emperorevercrisppreach
    
    EMPEROR EVERCRISP: "I will give you the sacred APLE BLESSING."
    
    &PORTRAIT_emperor evercrisp_emperorevercrispneutral
    
    EMPEROR EVERCRISP: "The blessing will allow you to teleport all <i>five</i> apples back to me."
    
    &PORTRAIT_emperor evercrisp_emperorevercrisppreach
    
    EMPEROR EVERCRISP: "Once they have consented, they shall disappear and return!"
    
        &PORTRAIT_nour_nourneutral
    
    NOUR: "That sounds simple enough."
    
    &PORTRAIT_emperor evercrisp_emperorevercrispsmile
    
    EMPEROR EVERCRISP: "HO HO! EXCELLENT! I wish you luck, my human friends."
    
    &SHLORP_poop_EmperorEvercrisp_out
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: "Got it. Four apples, one Prince, all in the hallway."
    
        &PORTRAIT_nour_noursmile
    
    NOUR: "Ready for an adventure, Nick?"
    
    &PORTRAIT_nick_nickneutral
    
    NICK: "..."
    
    Nick shrugs, but he's already itching to leave.
    
        &PORTRAIT_nour_nourneutral
    
    NOUR: <i>Still silent, but at least he's communicating again.</i>
        
    //check - every apple found, emperor tells how many are left
    
    //EMPEROR EVERCRISP: "If you require a count of how many of my Aple council brethren you have located, come back to consult me!"
    
    //EMPEROR EVERCRISP: "I shall tell you your APLE PROGRESS!"
    
        &PORTRAIT_nour_noursmile
    
    NOUR: "Sounds good. Guess we should head out to the hallway and start looking."
    
    &PORTRAIT_ms. suwan_mssuwanannoyed
    
    MS. SUWAN: "Do we really—"
    
    Ms. Suwan looks at Nick... and then she sighs.
    
    &PORTRAIT_ms. suwan_mssuwanneutral
    
    MS. SUWAN: "Very well. Let's go find these... apples."
    
        &PORTRAIT_nour_noursmile
    
    NOUR: "Never thought I'd hear something like that from you."
    
        -> END

== nourplaysaplequest ==

    &PORTRAIT_nour_noursmile

    NOUR: "Are you ready for the Secret Ending?"
    
    //Nick is kinda interested, but he hates that he got vulnerable in front of nour and suwan while talking to the prince, so hes tsundere.
    //Back to resisting showing interest... bc he has a complex over that yk so like

    &PORTRAIT_nick_nickworried
    
    Nick remains silent and turned away from the console. 
    
        * "I'm gonna play."
    
    - Nour picks up the game controller.
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "Even if you don't want to play, <i>I</i> still want to know what this ending is all about."
    
    &PORTRAIT_nick_nicksad
    
    NICK: "..."
    
    &PORTRAIT_nour_nournervous
    
    NOUR: "Here goes nothing..."
    
    A tiny character pops up in the middle of the screen.
    
    Rows of weapons and a million character stats overwhelm the space. 
    
    &PORTRAIT_nick_nickshocked
    
    NICK: "..."
    
    Nick leans closer but still says nothing. 
    
    &PORTRAIT_nour_nourneutral
    
        * "Have something to say?"
        
        * "Having fun watching?" 
        
        * "Want to join me?"
    
    - &PORTRAIT_nick_nickneutral
    
    NICK: "... It's alright, it's a single player game. I can watch."
    
    NOUR: "You sure? I just started, you can hop in if you want?"
        
    &PORTRAIT_nick_nicksad
    
    NICK: "No, yeah, it's fine."
    
    &PORTRAIT_nick_nicknervous
    
    NICK: "Can I... can I watch?"
    
        &PORTRAIT_nour_noursmile
    
    NOUR: "Go ahead."
    
        &PORTRAIT_nick_nickshocked

    NICK: "..."
    
        &PORTRAIT_nick_nicknervous
    
    NICK: "Are you sure you want to use a bow with a strength character?"
    
    &PORTRAIT_nick_nickneutral
    
    NICK: "It's not really an optimal build."
    
    &PORTRAIT_nick_nicknervous
    
    NICK: "You won't get a lot of use out of your character's strength..."
    
    &PORTRAIT_nick_nickneutral
    
    NICK: "Unless you use, like, a sword or something."
    
        &PORTRAIT_nour_nournervous
    
    NOUR: "I didn't know, thanks. I guess I'll switch over to another weapon."
    
    Nick nods quietly, content.
    
        &PORTRAIT_nour_noursmile
        
    NOUR: "Oh... but I like the bow. It looks nice."
    
    Nick purses his lips but doesn't seem frustrated. He seems to be thinking.
    
    &PORTRAIT_nick_nicknervous
            
    NICK: "Okay, okay. We can work with that..."
            
    NICK: "You can try and change your stats a bit later..."
    
    NICK: "But for early game, you could just restart with a new character to match your style?"
    
    &PORTRAIT_nick_nickneutral
            
    NICK: "If you like the bow, you should have a good time playing it from the beginning."
    
    &PORTRAIT_nick_nicksad
    
    NICK: "... Or else, this run might really suck."
    
        &PORTRAIT_nour_noursmile
            
    NOUR: "...I think I'll do that, then."
    
    Nick stares intently at the game menu, his leg bouncing up and down.
    
    NOUR: "Okay. First level. Shouldn't be too hard... Right, Nick?"
    
    &PORTRAIT_nick_nickneutral
    
    NICK: "..."
    
    Nick shrugs, but his eyes are glued to the screen.
    
    NOUR: <i>He's really getting into this. Why did he act like he hated this game before, anyway?</i>
    
            &PORTRAIT_nick_nickshocked
    
    NICK: "WATCH OUT!" 
    
        &PORTRAIT_nour_nournervous
    
    NOUR: "SHOOT!"
    
    The character barely dodges a hidden enemy. 
    
    NOUR: "...<i>NICK</i>, you SCARED me."
    
            &PORTRAIT_nick_nickworried
    
    NICK: Nick pauses for a second and then grins sheepishly.
    
    NICK: "Crap, sorry..."
    
        &PORTRAIT_nick_nicknervous
    
    NICK: "You, uh... you almost stepped into a trap that would've insta kill you."
    
        &PORTRAIT_nick_nickbigsmile
    
    NICK: "You see those red glowing orbs? Fire trap. It <i>blows</i>... <i>literally</i>."
    
    He laughs at his own joke.
    
    MS. SUWAN: Ms. Suwan turns away, but there's a small smile creeping up her face.
    
        &PORTRAIT_nour_noursmile
    
    NOUR: "Nice pun."
    
    NOUR: "You know, maybe I should stop playing. It's probably not fun to watch me die every five seconds."
    
            &PORTRAIT_nick_nicknervous
    
    NICK: "No! It's fine. This is technically not <i>supposed</i> to be an easy game..."
    
            &PORTRAIT_nick_nickneutral
    
    NICK: "I should just shut up and let you play. It's not like I'm being helpful by shouting in your ear."
    
        *"But you seem really knowledgeable about the game."
        
            NOUR: "You know that's actually a good thing for a noob like me, right?"
            
                &PORTRAIT_nick_nickneutral
            
            NICK: "I might know a thing or two..."
        
            &PORTRAIT_nick_nickbigsmile
            
            NICK: He blushes a little, kicking his foot and unable to hide a proud smile.
            
        *"No, don't shut up! I'm only surviving because of you!" 
            
            NOUR: "If you don't keep telling me all your tips, I'm gonna die way more. That would be the worst."
            
                &PORTRAIT_nick_nickbigsmile
            
            NICK: Nick beams before clearing his throat, slightly embarassed.
            
    - &PORTRAIT_nick_nickneutral
    
    NICK: "Yeah, Fantasy Game... it's one of my favorites, if not <i>the</i> favorite game I have..."
    
    NICK: "The only problem is that the tutorial is kind of garbage."
    
    NICK: "It assumes the player already knows a bunch of stuff, which isn't true."
    
    NOUR: "Do you play it a lot? Games are cool."
    
    NOUR: "You can totally make gaming your fun hobby."
    
        &PORTRAIT_nick_nickshadow
    
    NICK: Nick's face suddenly falls, and he goes quiet for a moment, glaring at the ground.
    
    NICK: "I don't... actually own the game. I watch a lot of videos about it and watch <i>others</i> play it, but..."
    
        * "..."
        
        * "It's alright, you can talk to me about it..."
    
    - NICK: Nick seems to fumble for the correct words before shrugging, seemingly resigned. 
    
        &PORTRAIT_nick_nicksad
    
    When he looks back up at Nour his eyes are glimmering—not quite crying but close to it.
    
    NICK: "My mom wouldn't let me get the game because my grades were crap." 
    
    NICK: "She said I could get it if I fixed them, but it's..."
    
    NICK: "It's really <i>hard</i>. I'm too dumb to do anything right." 
    
    &PORTRAIT_nour_noursad
    
    NOUR: "You're not dumb, Nick."
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "You know so much about this game, probably far more than you've let on."
    
        &PORTRAIT_nour_noursmile
    
    NOUR: "Right, Ms. Suwan?"
    
    NICK: Nick glances at Ms. Suwan nervously. She clears her throat.
    
    MS. SUWAN: "Intelligence comes in many forms."
    
    MS. SUWAN: "Society may value one above the rest, but it does not make the others less valuable."
    
        &PORTRAIT_nick_nickangry
    
    NICK: "But it's not the <i>same</i>! It's a dumb video game... not <i>math</i> or <i>science</i> or stuff like that."
    
    NICK: "I don't have the time to focus on school, and even when I <i>do</i> it's so <i>hard</i>."
    
    NICK: "It's like there's a... a brick wall just in front of <i>everything</i>."
    
        * "But you love this game. You've dedicated so much time to it."
            
            NOUR: "You're not useless or dumb for liking something a lot."
            
            NOUR: "Memorizing everything about anything takes a good amount of smarts."
            
                &PORTRAIT_nick_nickshocked
            
            NICK: Nick's eyes widen.
            
            NICK: "You mean that?"
            
                &PORTRAIT_nour_noursmile
            
            NOUR: "Yeah, I do."
            
                &PORTRAIT_nick_nicktears
        
            NICK: He curls his fist tightly.
            
            NICK: After a moment, tears start to leak out of his eyes, even as he tries to force them down.
            
            NICK: "No one's ever... <i>Everyone</i> thinks I'm dumb. I've been useless my entire life..."
            
            NICK: "But yeah... I love this game. It means a lot to me."
            
            NICK: "I've always wanted to dedicate more time to it."
        
        * "I'm sorry that it's been so hard for you... but acting out isn't going to make it better."
        
            NOUR: "If you keep doing this, then you'll never be able to truly get into the thing you love."
        
                &PORTRAIT_nick_nicksad
        
            NICK: "So what should I do?"
            
            NICK: "It's not that easy. My life is a <i>mess</i>. I don't know what else to do."
    
    - Nour looks over at Nick's wrist, and suddenly the realization seems to dawn on him.
    
    He looks at the bracelet.
    
        &PORTRAIT_nour_nourneutral
    
    NOUR: "You don't have to rebel against everything to try and regain some kind of control over your life."
    
        &PORTRAIT_nour_nourneutral
    
    NOUR: "You can focus as much as you can on school."
    
    NOUR: "If you do well, you can dedicate the rest of your life to games..."
    
        &PORTRAIT_nour_noursmile
    
    NOUR: "Playing them, making them, whatever you want."
    
    NICK: "...You can make games?"
    
        &PORTRAIT_nour_nourneutral
    
    NOUR: "Yeah! Who do you think made your favorite one?"
    
        &PORTRAIT_nick_nickworried
    
    NICK: Nick thinks for a moment, before looking over at Ms. Suwan, then at Nour.
    
    NICK: He slowly slides the bracelet off, holding it out to Nour. 
    
    NICK: "...Here. Can you put it back for me? I... I don't need it anymore."
    
    &PORTRAIT_nour_noursmile
    
    NOUR: Nour smiles and takes the bracelet.
    
    NOUR: "Sure thing, Nick."
    
        &PORTRAIT_nick_nickbigsmile
    
    NICK: "Okay, now back to the game."
    
    NICK: "If I speedrun this thing fast enough, I bet I could reach that Secret Ending in no time!"
    
    &MOV_RINA_TOPICSPOT
    
        &PORTRAIT_nick_nickshocked
        
    &PAUSE_0.5
    
    NICK: "AGH, she's here! What does she want now?"
    
    &PORTRAIT_nour_nourshocked
    
    NOUR: "Uh-"
    
        &PORTRAIT_nick_nickworried
    
    NICK: "You know what, Nour... I think you should confront her about how she treated you."
    
        &PORTRAIT_nick_nickneutral
    
    NICK: "You can do it!"
    
    &LIGHT_Nick2

    -> light_on

=== consoles_afternickroute ===

    The bow-user character from the last game played stands idle on the screen.
    
        &PORTRAIT_nick_nickbigsmile
    
    NICK: "Next time, we should try to play a tank character!"
    
    NICK: "Defense is the best offense, right?"
    
    MS. SUWAN: "It's the opposite, actually."
    
        &PORTRAIT_nick_nickworried
    
    NICK: "Oh..."
    
    MS. SUWAN: "But I'm not the expert, remember? That's you."
    
    MS. SUWAN: "So perhaps, defense <i>is</i> the best offense."
    
        &PORTRAIT_nick_nickneutral
    
    NICK: "Maybe! I guess the only way to find out would be to play..."
    
        -> END