== consoles ==

{
    - consoles_afternickroute:
        -> consoles_end
    - nourplaysaplequest:
        -> consoles_afternickroute
    - wertoys_find_prince:
        -> nourplaysaplequest
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
    A start screen for a retro game called <i>Aple Quest</i> plays. Nick seems to be excited.
    
    NICK: "<i>Aple Quest</i>? Here? In its pristine, original condition?"
    
    NOUR: "Looks like it still runs just fine."
    
    NICK: "Man, I can't believe it's here in its original retro console!"
    
        * [Ask if he wants to play]
        
            NOUR: "You wanna give it a go?"
            
            NICK: "I—!"
            
            Nick falters. A somber expression passes his face. 
            
            NICK: "Um...no. This stuff's for babies so..."
            
            NICK: "I probably shouldn't."
            
        * [Leave the video game console]
        
            NOUR: "We should look for something that could help us."
            
            Nick nods glumly. He looks at the game one more time, and then he sighs.
    
    - NOUR: "Hey, are you alright?"
    
    NICK: "I'm fine. Let's just go already."
    
    NOUR: "Whatever you say..."
    
    NOUR: <i>Weird. He seemed like he wanted to talk about this game, but I guess something about it is bothering him.</i>
    
    NOUR: <i>Maybe he'll want to talk about it later...</i>

    -> END

== consoles_before_aplequest ==

    The soft 8-bit boops of <i>Aple Quest</i> play, but Nick only stares at the screen. 
    
    NOUR: <i>Why isn't he saying anything? Maybe I have to start first...</i>
    
    NOUR: "You know a lot about this game, right Nick?"
    
    NICK: "Yeah. I don't know. Not really."
    
    MS. SUWAN: "That communicated almost no meaning with the most amount of words."
    
    NICK: "I meant to say no! Just get off my case already, ok?"
    
    MS. SUWAN: "No need to be defensive. It wasn't a personal attack."
    
    NICK: "Whatever..."
    
    Nick huffs and turns away from the game. 
    
    NOUR: <i>Nick doesn't seem to want to talk about this yet. I'll come back here later when he's ready.</i>
    
        -> END

== consoles_visited ==
    NOUR: <i>Nick doesn't seem to want to talk about this yet. I'll come back here later when he's ready.</i>

        -> END

=== consoles_start_aplequest ===
    NOUR: "Look, Nick. It's the game we were reading about before."
    
    NICK: "..."
    
    NOUR: "Do you want to try playing it?"
    
    Nick turns his head away, silent.
    
    MS. SUWAN: "Give it up, Nour. He's throwing a tantrum—"
    
    &SHLORP_poop_EmperorEvercrisp_in
    
    ???: "NEVER GIVE UP!!!"
    
    NOUR: "What the—!"
    
    The console screen glitches, and the game starts by itself...

    ???: "The Council of Malus Domestica has fallen, and you are our only hope!"
    
    MS. SUWAN: "Nour, what did you press?"
    
    NOUR: "I didn't press anything?!"
    
    ???: "Do not panic, for I am a friend—<b>EMINENT EMPEROR EVERCRISP APLE</b>, leader of the Aples!"
    
    NOUR: "The game character is...speaking...to us?"
    
    MS. SUWAN: "This can't be real. This has to be some trick or prank."
    
    EMPEROR EVERCRISP: "Ho ho! Who is to say what is real and what is not?'
    
    EMPEROR EVERCRISP: "For Those Who Walk Between Planes, reality and all its variants—past, present, and future—exist all at once!"
    
    NOUR: "Those who walk between...what?"
    
    EMPEROR EVERCRISP: Our <i>Prince</b> went to Earth in search of the missing <b>four</b> members to restore order, but we've lost all communication with him."
    
    EMPEROR EVERCRISP: "Please, Dream Walkers! Return the prince and all the members here, and I shall reward you handsomely!"
    
    MS. SUWAN: "Dream Walkers?"
    
    NOUR: "If we return with everyone, you'll reward us with what, exactly?"
    
    EMPEROR EVERCRISP: "Ho ho...how about access to our SECRET ENDING...?"
    
    NICK: "...!"
    
    EMPEROR EVERCRISP: "Does this not entice you? HMM?"
    
        * [Say yes]
            NOUR: "We have a big fan of yours over here, actually. I think he'd love to get a Secret Ending, right?"
            
            NICK: "..."
            
            NOUR: "Um, that was a silent agreement."
            
            EMPEROR EVERCRISP: "HO HO! EXCELLENT, MARVELOUS, SPECTACULAR!!!"
        
        * [Say no]
            NOUR: "Um, not really."
            
            EMPEROR EVERCRISP: "HO HO! EXCELLENT—"
            
            EMPEROR EVERCRISP: "...Oh."
            
            EMPEROR EVERCRISP: "Does a Secret Ending not motivate you enough?"
            
            NOUR: "Mmm...nope. I don't really know anything about <i>Aple Quest</i>."
            
            NOUR: "I also don't know you. You could be a dangerous, uh, apple for all we know." 
            
            EMPEROR EVERCRISP: "OH...um..."
            
            EMPEROR EVERCRISP: "H-How would you like, say, a FREE BOX OF APLE QUEST SPACE-O's? A delicious, nutritious breakfast cereal?"
            
            EMPEROR EVERCRISP: "IT'S SPACE <i>AND</i> APPLE THEMED!"
            
            NOUR: "Eh...I don't know..."
            
            Nick fidgets. He glances at Emperor Evercrisp eagerly. 
            
            NOUR: "...You know what? Why not. We have an expert on our side anyway."
            
            EMPEROR EVERCRISP: "PHEW! You humans drive a hard bargain, ho ho!"
            
            NOUR: "Oh, and I think we'll pass on the cereal. The ending's enough."
            
            EMPEROR EVERCRISP: "VERY COOL!"
            
            EMPEROR EVERCRISP: "...because I don't know where I put that stuff, ho ho!"
            
    - NOUR: "So all we have to do is find four apple...people...and then the Prince?"
    
    EMPEROR EVERCRISP: "If you want that sweet, sweet secret ending!"
    
    EMPEROR EVERCRISP: "But yes, please. I miss my son very much..."
    
    NOUR: "Do you know where you last saw them all?"
    
    EMPEROR EVERCRISP: "Their last coordinates were all within the hallways of the mall."
    
    EMPEROR EVERCRISP: "I will give you the sacred APLE BLESSING that will allow you to teleport all <i>five</i> apples back to me."
    
    EMPEROR EVERCRISP: "Once they have consented to leave, they shall disappear and return!"
    
    NOUR: "That sounds simple enough."
    
    EMPEROR EVERCRISP: "HO HO! EXCELLENT! I wish you luck, my human friends."
    
    &SHLORP_poop_EmperorEvercrisp_out
    
    NOUR: "Got it. Four apples, one prince, all in the hallway."
    
    NOUR: "Ready for an adventure, Nick?"
    
    Nick shrugs, but he's already itching to leave.
    
    NOUR: <i>Still silent, but at least he's communicating again.</i>
        
    //check - every apple found, emperor tells how many are left
    
    //EMPEROR EVERCRISP: "If you require a count of how many of my Aple council brethren you have located, come back to consult me!"
    
    //EMPEROR EVERCRISP: "I shall tell you your APLE PROGRESS!"
    
    NOUR: "Sounds good. Guess we should head out to the hallway and start looking."
    
    MS. SUWAN: "Do we really—"
    
    Ms. Suwan looks at Nick...and then she sighs.
    
    MS. SUWAN: "Very well. Let's go find these...apples."
    
    NOUR: "Never thought I'd hear something like that from you."
    
        -> END

== nourplaysaplequest ==

    NOUR: "Are you ready for the Secret Ending?"
    
    //Nick is kinda interested, but he hates that he got vulnerable in front of nour and suwan while talking to the prince, so hes tsundere.
    //Back to resisting showing interest... bc he has a complex over that yk so like

    Nick remains silent and turned away from the console. 
    
        * [Pick up the controller and play]
    
    - NOUR: "Even if you don't want to play, <i>I</i> still want to know what this ending is all about."
    
    NICK: "..."
    
    NOUR: "Here goes nothing..."
    
    A tiny character pops up in the middle of the screen. Rows of weapons and a million character stats overwhelm the space. 
    
    Nick leans closer but still says nothing. 
    
        * "Have something to say?"
        
        * "Having fun watching?" 
        
        * "Want to join me?"
    
    - NICK: "... It's alright, it's a single player game. I can watch."
    
    NOUR: "You sure? I just started, you can hop in if you want?"
    
    NICK: "No, yeah, it's fine. Can I... can I watch?"
    
    Nour moves over slightly to give Nick the space to watch, nodding with a slight smile. 

    NICK: "..."
    
    NICK: "Are you sure you want to use a bow with a strength character? It's not really an optimal build."
    
    NICK: "You won't get a lot of use out of your character's strength unless you use, like, a sword or something."
    
    NOUR: "I didn't know, thanks. I guess I'll switch over to another weapon."
        
    Nick nods quietly, content.
        
    NOUR: "Oh... but I like the bow. It looks nice."
        
    Nick purses his lips but doesn't seem frustrated. He seems to be thinking.
            
    NICK: "Ok, ok. We can work with that..."
            
    NICK: "You can try and change your stats a bit later, but for early game, you could just restart and make a new character to match the play style you like?"
            
    NICK: "If you like the bow, you should have a good time playing it from the beginning. Or else this run might really suck."
            
    NOUR: "...I think I'll do that, then."
    
    Nick stares intently at the game menu restart with a new character, his leg bouncing up and down.
    
    NOUR: "Ok. First level. Shouldn't be too hard...right, Nick?"
    
    Nick shrugs, but his eyes are glued to the screen.
    
    NOUR: <i>He's really getting into this. Why did he act like he hated this game before, anyway?</i>
    
    NICK: "WATCH OUT!" 
    
    NOUR: "SHOOT!"
    
    The character barely dodges a hidden enemy. 
    
    NOUR: "...<i>NICK</i>, you SCARED me."
    
    Nick pauses for a second and then grins sheepishly.
    
    NICK: "Crap, sorry..."
    
    NICK: "You, uh... you almost stepped into a trap that would've probably insta kill you."
    
    NICK "You see those red glowing orbs? Fire trap. It <i>blows</i>... <i>literally</i>."
    
    He laughs at his own joke. Ms. Suwan turns away, but there's a small smile creeping up her face.
    
    NOUR: "Nice pun."
    
    NOUR: "You know, maybe I should stop playing. It's probably not fun to watch me die every five seconds."
    
    NICK: "No! It's fine. This is technically not <i>supposed</i> to be an easy game..."
    
    NICK: "I should just shut up and let you play. It's not like I'm being helpful by shouting in your ear."
    
        *"But you seem really knowledgeable about the game."
        
            NOUR: "You know that's actually a good thing for a noob like me, right?"
            
            NICK: "I might know a thing or two..."
        
            He blushes a little, kicking his foot and unable to hide a proud smile.
            
        *"No, don't shut up! I'm only surviving because of you!" 
            
            NOUR: "If you don't keep telling me all your tips, I'm gonna die way more. That would be the worst."
            
            Nick beams before clearing his throat, slightly embarassed.
            
    - NICK: "Yeah, Fantasy Game... it's one of my favorites, if not <i>the</i> favorite game I have..."
    
    NICK: "The only problem is that the tutorial is kind of garbage. It assumes the player already knows a bunch of stuff, which isn't true."
    
    NOUR: "Do you play it a lot? Games are cool—you can totally make gaming your cool thing."
    
    Nick's face suddenly falls, and he goes quiet for a moment, glaring at the ground.
    
    NICK: "I don't... actually own the game. I watch a lot of videos about it and watch <i>others</i> play it but..."
    
        * [Stay quiet and wait]
        
        * [Gently urge him to speak]
            NOUR: "It's alright, you can talk to me about it..."
    
    - Nick seems to fumble for the correct words before shrugging, seemingly resigned. 
    
    When he looks back up at Nour his eyes are glimmering—not quite crying but close to it.
    
    NICK: "My mom wouldn't let me get the game and play it because my grades were shit." 
    
    NICK: "She said I could get it if I fixed them but it's... it's fucking <i>hard</i>. I'm too dumb to do anything right." 
    
    NOUR: "You're not dumb, Nick. You know so much about this game, probably far more than you've even let on in this short amount of time."
    
    NOUR: "Right, Ms. Suwan?"
    
    Nick glances at Ms. Suwan nervously. She clears her throat.
    
    MS. SUWAN: "Intelligence comes in all forms. Just because society values one over the other doesn't make it any less valuable." 
    
    NICK: "But it's not the <i>same</i>! It's a dumb video game, not like... not <i>math</i> or <i>science</i> or shit."
    
    NICK: "I don't have the time to focus on school, and even when I <i>do</i> it's fucking <i>hard</i>."
    
    NICK: "It's like there's a... a brick wall just in front of <i>everything</i>."
    
        * "But you love this game. You've dedicated so much time to it."
            
            NOUR: "You're not useless or dumb for liking something a lot. To memorize everything about anything takes a good amount of smarts."
            
            Nick's eyes widen.
            
            NICK: "You mean that?"
            
            NOUR: "Yeah, I do."
        
            He curls his fist tightly, but after a moment, tears start to leak out of his eyes even as he tries to force them down.
            
            NICK: "No one's ever...<i>Everyone</i> thinks I'm dumb. I've been useless my entire life..."
            
            NICK: "But yeah...I love this game. It means a lot to me."
            
            NICK: "I've always wanted to dedicate more time to it."
        
        * "I'm sorry that it's been so hard for you... but acting out isn't going to make it better.["] If you keep doing this, then you'll never be able to truly get into the thing you love."
        
            NICK: "So what should I do?"
            
            NICK: "It's not that easy. My life is a <i>mess</i>. I don't know what else to do."
    
    - Nour looks over at Nick's wrist, and suddenly the realization seems to dawn on him. He looks at the bracelet.
    
    NOUR: "You don't have to rebel against everything to try and regain some kind of control over your life."
    
    NOUR: "You can focus as much as you can on school, and then if you do well, you can dedicate the rest of your life to games..."
    
    NOUR: "Playing them, making them, whatever you want."
    
    NICK: "... You can make games?"
    
    NOUR: "Yeah! Who do you think made your favorite one?"
    
    Nick thinks for a moment, before looking over at Ms. Suwan, then at Nour. Then, he slowly slides the bracelet off, holding it out to Nour. 
    
    NICK: "... Here. Can you put it back for me? I... I don't need it anymore."
    
    Nour smiles and takes the bracelet.
    
    NOUR: "Sure thing, Nick."
    
    NICK: "Ok, now back to the game—if I speedrun this thing fast enough, I bet I could reach that Secret Ending in no time!"
    
    &LIGHT_Nick2
    
    BEEP ELEVATOR LIGHT SFX
    
    &MOV_RINA_TOPICSPOT
    
    NICK: "AGH, she's here! What does she want now?"
    
    NICK: "You know what, Nour... I think you should confront her about how she treated you."
    
    NICK: "You can do it!"

        -> light_on
// -> END

=== consoles_afternickroute ===

    The bow-user character from the last game played stands idle on the screen.
    
    NICK: "Next time, we should try to play a tank character! Defense is the best offense, right?"
    
    MS. SUWAN: "It's the opposite, actually."
    
    NICK: "Oh..."
    
    MS. SUWAN: "But I'm not the expert, remember? That's you."
    
    MS. SUWAN: "So perhaps, defense <i>is</i> the best offense."
    
    NICK: "Maybe! I guess the only way to find out would be to play..."
    
        -> END

=== consoles_end ===

    NOUR: <i>I've already looked at this. Maybe I should try looking at something or talking to someone else.</i>

        -> END