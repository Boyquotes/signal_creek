== hotwheels ==
{
    - hotwheels1:
        -> hotwheels_visited
    
    - else:
        -> hotwheels1
}
== hotwheels1 ==
    
    //Should have an initial interaction in the dream world pointing out how new this looks, with Ms. Suwan vividly remembering being given Mattel cars as a child as gifts from local toy markets. She has a uneasy feeling about these toys and the type of media she was “given” to play rather than chosen by herself. Nick can speak up about how he thinks his friends would think the car is really cool, and they can have a conversation about it.
    
    It's a shiny toy race car.
    
    &PORTRAIT_nick_nickbigsmile
    
    NICK: "Yo! I used to play with these things all the time. My go to was the '20 Dodge Charger Hellcat." // EXCITED
    
    &PORTRAIT_mssuwan_mssuwannervous
    
    MS. SUWAN: "I played with them too back in Thailand."// The 1970 Mattel Hot Wheels Side kick Thailand SC Police Diecast Car was the one I would play with the most.
    
    &PORTRAIT_nick_nickshocked
    
    NICK: "You had Hot Wheels too?!" // SHOCKED
    
    MS. SUWAN: "They were everywhere in my neighborhood street markets."
    
    &PORTRAIT_mssuwan_mssuwansad
    
    MS. SUWAN: "My mother would buy them for me all the time. I never asked for them... but she still bought them for me." // FROWNING
    
    &PORTRAIT_mssuwan_mssuwansad
    
    MS. SUWAN: "Those were the only toys I had for most of my childhood."
    
    &PORTRAIT_nick_nickworried
    
    NICK: "Sounds like you didn't really like 'em all that much."
    
    NICK: "Did you ever play with things you actually liked? Like planes? Monster trucks? Or—"
    
    &PORTRAIT_mssuwan_mssuwansmile
    
    MS. SUWAN: "I had a stuffed doll. It was my older cousin's before she gave it to me."
    
    MS. SUWAN: "I had a hard time sleeping without it and took it with me everywhere."
    
    MS. SUWAN: "It was probably my equivalent of your...'20 Dodge Charger Hellcat, was it?" // SMILING
    
    &PORTRAIT_nick_nickbigsmile
    
    NICK: "You remembered?!" // HAPPY
    
    MS. SUWAN: "It's not exactly hard to remember something as ridiculous like that, especially if you just mentioned it moments ago."
    
    &PORTRAIT_nour_noursmile
    
        * [Ask what the stuffed doll was]
            NOUR: "What was the stuffed doll? A girl? Or some animal?"
            
            MS. SUWAN: "It was a rabbit."
            
            NICK: "Ooo! What color?"
            
            MS. SUWAN: "Pink." // SMILING
            
            NOUR: "I used to have a doll like that too. It was a dragon." // SMILING
            
            NICK: "Dragons? I love dragons! Do you think they have any dragons here—" // EXCITED
            
        * [Ask more about Thailand]
            NOUR: "What was Thailand like?" 
            
            MS. SUWAN: "Humid and hot in the summers. Winters were better because it doesn't get as cold as it does here."
            
            MS. SUWAN: "Lots of nature. Lots of people. Winding paths, crossing from one place to the next. Easier to talk to aunties."
            
            MS. SUWAN: "And of course, toy markets. Those were there, too."
            
            NOUR: "Do you miss Thailand?"
            
            MS. SUWAN: "Sometimes I do. Sometimes I don't. Depends on what day you're asking."
            
            NICK: "I wanna go to a toy market in Thailand! Maybe Ms. Suwan, you could take me and—" // EXCITED
        * [Leave the hotwheels]
    
    &PORTRAIT_nour_noursmile
    
    - NOUR: "We should probably move on."
            
    &PORTRAIT_nick_nicksad
    
    NICK: "Aw, already?" // SAD
            
    NOUR: "Yeah. Unless this toy car can get us out of here, we should get going."
        -> END

== hotwheels_visited ==

    It's a shiny toy race car. Nick keeps eyeing it excitedly, but there's nothing else here.
    
    -> END

