
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
NICK: "Maybe they know where TopicSpot is, I haven't been there in forever!"
NOUR: "Nick we're trying to get of here not play games."
NOUR: <i> What is this kid on? </i>
NOUR: <i> I swear if I'm in here for another 10 minutes I'm gonna go insane. We need to find a way out of here. </i>
    * "Nick can you go ask them what's going on?" -> chadbrodykristy_nicksaysno
    * "Ms. Suwan can you please ask them how we can get out of here" ->chadbrodykristy_mssuwansilent
    
===chadbrodykristy_nicksaysno===
NICK: "Why do I have to do it?"
NOUR: "Because you're a kid so they might be more willing to help us"
NICK: "Or, now hear me out, maybe they would be more willing to listen to the older person in the group"
    **"Fine I guess you're right. Ms. Suwan what do you think?" -> chadbrodykristy_mssuwansilent

===chadbrodykristy_mssuwansilent===
MS.SUWAN: ...
NOUR: "Hello...are you listening"
NOUR: <i> Ms Suwan's face went completely white, almost translucent. Her eyes were fixed on the group of kids standing three feet away. She looked as though she saw a ghost, if ghosts were real. </i>
NICK: "MS. SUWAN!!!"
MS.SUWAN: "Huh? What's going on"
NOUR: "We wanted to ask if you could talk to those people over there and ask if they know what's going on here?"
MS.SUWAN: "I think that would be a waste of time. All we need to do is get the elevator fixed and we should be good to go. I'm going to try to get a hold of the repair guy and see if he can come down here. I think he's still on the clock I'm not sure."
    *** Umm, I don't think anyone is going to come. -> chadbrodykristy_mssuwanresponse
    *** It would be easier to just ask them. -> chadbrodykristy_mssuwanresponse
    

->END

=== chadbrodykristy_mssuwanresponse ===
NOUR: <i> Great I'm stuck with a basketcase and a literal child. I should have ran to the other elevator. </i>
NOUR: "Didn't you see the lights go crazy and the elevator fly up super fast. Wherever we are, we aren't where we're suppose to be"
MS.SUWAN: "Don't be silly, the elevator just had some technical issues and then broke down. Nothing is out of the ordinary"
NOUR: <i> She is still staring at those people and her face has lost all color. Unless she's sick, she definitely knows them but I don't wanna ask about it right now </i>
NOUR: "Fine if you both won't talk to them I will."
NOUR: <i> Just be cool, they don't look super mean or weird. Maybe they're chill. Just don't embarass yourself </i>
NOUR: "Umm, hello. We were on that elevator and it started going super fast and the lights started flickering and now we can't get back down. Do you guys know what's going on?"
No Response...
NOUR: "Umm, look we're sorry to bother you but we really need help right now"
No Response...
NOUR: <i> They're just staring blankly at Ms.Suwan. Something really weird is going on. </i>
NOUR: "Ok what is wrong with them, they're like zombies"
MS.SUWAN: "Someone will come and get us out of here, we don't need help from strangers"
CHAD: "Strangers?" 
Nick and Nour stand frozen
BRODY: "Wow glad to know your perception of us Kan"
NICK: *whispers to Nour* "Who is Kan?"
KRISTY: "You may look a older but it's a comfort to know nothing else has changed Kannika"
NICK: *whispers to Nour* "Ok now who is Kannika?"
NOUR: *aggresively whispers* "Dude that's Ms Suwan's first name how could you already forget?"
Ms.Suwan stood frozen
CHAD: "Frozen huh Suwan"
NOUR: "Ms.Suwan do you know them?"
MS.SUWAN: "No I don't, why don't we get out of here.
CHAD: "Don't worry Kan, we'll be right here in case you want to ignore us agai."
MS.SUWAN: "I think there was a B&N on this floor. Maybe the computer's there are working so we can contact someone to get us out of here."
NICK: "Boringggggg, I want to check out some games in TopicSpot I think there's a new games you can play"
NOUR: <i> Hmmm where should we go first? </i>
->END

//



== chadbrodykristy_notready==
NOUR: "Is everything alright Ms. Suwan?"
MS.SUWAN: ...
NOUR: <i> I wish she wouldn't be so stubborn and just say something, anything to them. </i>
NOUR: "You sure you don't want to just talk to them?"
MS.SUWAN: "What? Huh? No I have nothing to say, let's just go"
    **** "Come on it wont be that bad" -> chadbrodykristy_askagain
    **** "Ok let's go visit some place else" -> END


-> END

=== chadbrodykristy_askagain ===

MS.SUWAN: Nour, I said no. Now let's go"
NOUR: *sigh* fine. -> END




== chadbrodykristy_argument==
NOUR: "There's no backing out of this now. You have to face your demons once and for all. You'll feel better I promise."
MS.SUWAN: "You're right."
Ms.Suwan approaches Chad, Brody, and Kristy
KRISTY: "Wow the one and only Kannika, you finally decided to speak to us and it's not just for our study notes. Must be a miracle!"
MS.SUWAN: "Oh my god. It really is you guys? How are you here?"
KRISTY: "Why did you abandon us Kan? We missed you so much."
MS.SUWAN: "I didn't abandon you, I had-"
BRODY: "Let me guess, work? It's always work with you"
MS.SUWAN: "I'm sorry I actually had to study so I wouldn't fail out of college instead of spending my nights drinking and going to Paradise concerts"
CHAD: "Fail? Kan you always did better than any of us. We have never seen you get below a 90 on an exam, ever."
KRISTY: "You always blamed us when in reality you just had ridiculous standards for yourself and you were always trying to beat"
KANNIKA: "Maybe that's because I didn't have it easy like the rest of you. I had to be the best if I wanted to get half of the opportunities you guys got"
Silence filled the room. Everyone is staring at Kannika.


=== chadbrodykristy_suwanreturns===
KANNIKA: "I- I didn't mean to push you guys away, I just had to get ahead and I'm sorry. I know you guys just wanted to do what was best for me even if I couldn't see it at the time."
KANNIKA: "It's funny. At that last Paradise concert, all I could remember was thinking how funny it was that we were at a concert the night before finals. For like 4 hours, I didn't think about the finals once I just cared about the music." 
KANNIKA: "I never thanked you guys for that experience but I wanted to now by giving you this album."
BRODY: "You were already the best, we just wanted to be there for you so you didn't burn out. We wanted you to have a little fun"
KRISTY: "You were already ahead and you pushed us away"
KRISTY: "Why do you think we went to those concerts right before our exams? We wanted to make sure you got a chance to loosen up after cramming for weeks straight."
KANNIKA: "Kristy pleas-"
Kristy suddenly disappeared.
BRODY: "I don't think you changed at all Kannika, you are exactly the person you wanted to be...on top completely alone"
CHAD: "You locked yourself in your room studying all of the time. We never got to see you." 
BRODY: "Looks like you got what you wanted"
KANNIKA: "This isnt what-"
Brody suddenly disappeared.
CHAD: "Bye Kan"
Chad suddenly disppeared.
The album fell to the ground. The thud echoed through the hallway and then silenced filled the room.
NOUR: "Um..."
NOUR: "Are you ok?"
No response.
NOUR: "I'm truly very sorry"
MS.SUWAN: "Why? Nothing has changed. I'm exactly who I was before I entered this mall."
NOUR: "Come on you know that's not-"
MS.SUWAN: "They are just dreams. They're not real. It's like it never happened because it didn't."
NOUR: "But it did just happen we all saw it"
MS.SUWAN: "Listen Nour. I've imagined what I would say to them if I ever saw them again and it always went like that. There are some things you just can't fix and that's okay. Worry about the things you can."
Ms.Suwan picks up the album and holds it close to her. 

-> END
