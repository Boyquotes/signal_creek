// Nour observes Ms Suwan's reluctance, observes her change in demenear when she notices Ms Suwan. She should also not be able to see chad brody kristy until middle-ish of game
  
  
  //When Ms Suwan is not ready to talk to them, at start
  -> chadbrodykristy_notready
      {
        - chadbrodykristy_notready && musicstand4 && priceofsalt_dreamvisited && pinbuttons_dreamvisited:
            -> chadbrodykristy_ready
       }
  
  
  
// ----- Part of First interaction when they just get to the mall-----

== chadbrodykristy_first==
Nick: "Are those people real? How did they even get in here?"
Nour: "Why don't we go up to them and ask? Maybe they know how to get out of here?"
Nick: "Maybe they know where TopicSpot is, I haven't been there in forever!"
Nour: "Nick we're trying to get of here not play games."
Nour: <i> What is this kid on? </i>
Nour: <i> I swear if I'm in here for another 10 minutes I'm gonna go insane. We need to find a way out of here. </i>
    * "Nick can you go ask them what's going on?" -> chadbrodykristy_nicksaysno
    * "Ms. Suwan can you please ask them how we can get out of here" ->chadbrodykristy_mssuwansilent
    
===chadbrodykristy_nicksaysno===
Nick: "Why do I have to do it?"
Nour: "Because you're a kid so they might be more willing to help us"
Nick: "Or, now hear me out, maybe they would be more willing to listen to the older person in the group"
    **"Fine I guess you're right. Ms. Suwan what do you think?" -> chadbrodykristy_mssuwansilent

===chadbrodykristy_mssuwansilent===
Ms Suwan: ...
Nour: "Hello...are you listening"
Nour: <i> Ms Suwan's face went completely white, almost translucent. Her eyes were fixed on the group of kids standing three feet away. She looked as though she saw a ghost, if ghosts were real. </i>
Nick: "MS. SUWAN!!!"
Ms.Suwan: "Huh? What's going on"
Nour: "We wanted to ask if you could talk to those people over there and ask if they know what's going on here?"
Ms. Suwan: "I think that would be a waste of time. All we need to do is get the elevator fixed and we should be good to go. I'm going to try to get a hold of the repair guy and see if he can come down here. I think he's still on the clock I'm not sure."
    *** Umm, I don't think anyone is going to come. -> chadbrodykristy_mssuwanresponse
    *** It would be easier to just ask them. -> chadbrodykristy_mssuwanresponse
    

->END

=== chadbrodykristy_mssuwanresponse ===
Ms Suwan: "Someone will come and get us out of here, we don't need help from strangers"
Nour: <i> Great I'm stuck with a basketcase and a literal child. I should have ran to the other elevator. </i>
Nour: "Didn't you see the lights go crazy and the elevator fly up super fast. Wherever we are, we aren't where we're suppose to be"
Ms. Suwan: "Don't be silly, the elevator just had some technical issues and then broke down. Nothing is out of the ordinary"
Nour: <i> She is still staring at those people and her face has lost all color. Unless she's sick, she definitely knows them but I don't wanna ask about it right now </i>
Nour: "Fine if you both won't talk to them I will."
Nour: <i> Just be cool, they don't look super mean or weird. Maybe they're chill. Just don't embarass yourself </i>
Nour: "Umm, hello. We were on that elevator and it started going super fast and the lights started flickering and now we can't get back down. Do you guys know what's going on?"
No Response...
Nour: "Umm, look we're sorry to bother you but we really need help right now"
No Response...
Nour: <i> They're just staring blankly at Ms.Suwan. Something really weird is going on. </i>
Nour: "Ok what is wrong with them, they're like zombies"
Nick: "Ugh this is so boring I just wanted to check out some games."
Nour: "Ok fine whatever we'll be back." ->END



== chadbrodykristy_notready==
Nour: "Is everything alright Ms. Suwan?"
Ms. Suwan: ...
Nour: <i> I wish she wouldn't be so stubborn and just say something, anything to them. </i>
Nour: "You sure you don't want to just talk to them?"
Ms.Suwan: "What? Huh? No I have nothing to say, let's just go"
    **** "Come on it wont be that bad" -> chadbrodykristy_askagain
    **** "Ok let's go visit some place else" -> END


-> END

=== chadbrodykristy_askagain ===

Ms. Suwan: Nour, I said no. Now let's go"
Nour: *sigh* fine. -> END




== chadbrodykristy_ready==
Nour: "There's no backing out of this now. You have to face your demons once and for all. You'll feel better I promise."
Ms.Suwan: "You're right."
Ms.Suwan approaches Chad, Brody, and Kristy
Ms.Suwan: "Hi, I don't know if you remember me, I'm-"
Chad: "KAN!"
Kristy: "Kannika I haven't seen you in forever!"
Ms.Suwan: "Oh my god. It really is you guys? How are you here?"
Kristy: "Why did you abandon us Kan? We missed you so much."
Ms.Suwan: "I didn't abandon you, I had-"
Brody: "Let me guess, work? It's always work with you"
Ms.Suwan: "I'm sorry I actually had to study so I wouldn't fail out of college instead of spending my nights drinking and going to Paradise concerts"
Chad: "Fail? Kan you always did better than any of us. We have never seen you get below a 90 on an exam, ever."
Kristy: "You always blamed us when in reality you just had ridiculous standards for yourself and you were always trying to beat"
Kannika: "Maybe that's because I didn't have it easy like the rest of you. I had to be the best if I wanted to get half of the opportunities you guys got"
Silence filled the room. Everyone is staring at Kannika.
Brody: "You were already the best, we just wanted to be there for you so you didn't burn out. We wanted you to have a little fun"
Kristy: "Why do you think we went to those concerts right before our exams? We wanted to make sure you got a chance to loosen up after cramming for weeks straight."
Chad: "You locked yourself in your room studying all of the time. We never got to see you." 
Kannika: "I- I didn't mean to push you guys away, I just had to get ahead."
Kristy: "You were already ahead and you pushed us away"
Kannika: "Kristy pleas-"
Kristy suddenly disappeared.
Brody: "Looks like you got what you wanted"
Kannika: "This isnt what-"
Brody suddenly disappeared.
Chad: "Bye Kan"
Chad suddenly disppeared.
...
Nour: "Um..."
Nour: "Are you ok?"
No response.
Nour: "I'm truly very sorry"
Ms.Suwan: "Why? Nothing has changed. I'm exactly who I was before I entered this mall."
Nour: "Come on you know that's not-"
Ms.Suwan: "They are just dreams. They're not real. It's like it never happened because it didn't."
Nour: "But it did just happen we all saw it"
Ms.Suwan: "Listen Nour. I've imagined what I would say to them if I ever saw them again and it always went like that. There are some things you just can't fix and that's okay. Worry about the things you can."

-> END



