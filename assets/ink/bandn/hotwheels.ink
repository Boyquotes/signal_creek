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
    
    &PORTRAIT_nick_nicksmallsmile
    
    NICK: "Yo! I used to play with these things all the time. My go to was the '20 Dodge Charger Hellcat." // EXCITED
    
    MS. SUWAN: "I played with them, too, back in Thailand."// The 1970 Mattel Hot Wheels Side kick Thailand SC Police Diecast Car was the one I would play with the most.
    
    &PORTRAIT_nick_nickshocked
    
    NICK: "You had Hot Wheels, too?!" // SHOCKED
    
    MS. SUWAN: "They were everywhere in my neighborhood street markets."
    
    MS. SUWAN: "My mother would buy them for me all the time." 
    
    &PORTRAIT_ms. suwan_mssuwansad
    
    MS. SUWAN: "...Though I never asked for them." // FROWNING
    
    MS. SUWAN: "Those were the only toys I had for most of my childhood."
    
    NICK: "Sounds like you didn't really like 'em all that much."
    
    NICK: "Did you ever play with things you actually liked? Like planes? Monster trucks? Or—"
    
    MS. SUWAN: "I had a stuffed doll." 
    
    MS. SUWAN: "...It was my older cousin's before she gave it to me."
    
    MS. SUWAN: "I had a hard time sleeping without it and took it with me everywhere."
    
    &PORTRAIT_ms. suwan_mssuwansmile
    
    MS. SUWAN: "It was probably my equivalent of your...'20 Dodge Charger Hellcat, was it?" // SMILING
    
    NICK: "You remembered?!" // HAPPY
    
    MS. SUWAN: "It's not exactly hard to remember something as ridiculous like that, especially if you just mentioned it moments ago."
    
        * ["What was the stuffed doll?"]
            NOUR: "A girl? Or some animal?"
            
            MS. SUWAN: "It was a rabbit."
            
            NICK: "Ooo! What color?"
            
            MS. SUWAN: "Pink." // SMILING
            
            NOUR: "I used to have a doll like that too. It was a dragon." // SMILING
            
            NICK: "Dragons? I love dragons! Do you think they have any dragons here—" // EXCITED
            
        * ["What was Thailand like?"]
            NOUR: "The weather must've been different from here."
            
            &PORTRAIT_nour_nourpondering
            
            NOUR: "...I mean, everything must've been."
            
            MS. SUWAN: "Humid and hot in the summers. Winters I enjoyed, it never got as cold as it does here."
            
            MS. SUWAN: "Lots of nature. Lots of people. Winding paths, crossing from one place to the next."
            
            MS. SUWAN: "And of course, toy markets. Those were there, too."
            
            NOUR: "Do you miss Thailand?"
            
            &PORTRAIT_ms. suwan_mssuwanpondering
            
            MS. SUWAN: "Sometimes I do. Sometimes I don't. Depends on what day you're asking."
            
            NICK: "I wanna go to a toy market in Thailand! Maybe Ms. Suwan, you could take me and—" // EXCITED
        * ["Let's get going."]
    
    - NOUR: "We should probably move on."
            
    NICK: "Aw, already?" // SAD
            
    NOUR: "Unless this car can get us out of here, there's no use sticking around."
        -> END

== hotwheels_visited ==

    It's a shiny toy race car. Nick keeps eyeing it excitedly, but there's nothing else here.
    
    -> END

