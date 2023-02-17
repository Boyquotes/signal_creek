-> rina

VAR last_knot_nick_visited = false
VAR last_knot_suwan_visited = false
== rina ==
    
    //if this isn't the first time talking to Rina, go straight to the choices
    {
        - rina_bandn:
            -> rina_branches
    }
    
    //start from the beginning
    -> rina_bandn

    
//---------------- MAIN CHOICE BRANCHES ----------------
//All choices are always present, but they need to be unlocked.
//The ELEVATOR choice, however, is only shown once the others are chosen.
//The idea is that the player may repeatedly choose the same choice, expecting a different result.
//eventually, there WILL be a different result.
//I hope this is appropriately frustrating, not annoying.

== rina_branches ==

    RINA: Look, "Nour". I don't know why you're so upset. You're the one who blocked me out. I TRIED to keep being your friend!
    
    :NOUR:
    
        //this choice always works, and Rina tells Nour to help the people they're with now (Nick and Suwan)
        + ["Friends are supposed to help each other..."]
            
            //IF THE LAST KNOTS IN BOTH ROUTES ARE VISITED:
            {
                - last_knot_nick_visited && last_knot_suwan_visited:
                    -> rina_help
            }
            
            //OTHERWISE:
            
            NOUR: "Friends are supposed to help each other... You weren't helping me that day."
            
            Rina glances down at Nick, and up to Ms. Suwan.
            
            She returns her attention to Nour.
            
            RINA: "I think you should focus on helping the people you're with right now."
            
                -> rina_reset
        

        + ["Why would I want to keep being friends with someone who is too much of a coward to stand up for me?"]
        
            //IF THE LAST KNOT IN NICK'S ROUTE IS VISITED:
            {
                - last_knot_nick_visited:
                    -> rina_topicspot
            }
            
            //OTHERWISE:
            
            NOUR: I don't feel confident enough to stand up to you yet...
                -> rina_reset
        

        + ["Whatever. you know what, I'm not mad anymore. It's fine. I don't know why I was so upset."]
        
            //IF THE LAST KNOT IN SUWAN'S ROUTE IS VISITED:
            {
                - last_knot_suwan_visited:
                    -> rina_hallway
            }
            
            //OTHERWISE:
            
            NOUR: I'm still too angry at you to let go...
                -> rina_reset
            
        + ["We're done talking for now."]
            
            Rina's eyes glaze over.
            
                -> END
        
        //DISPLAY ONCE ALL OTHER CHOICES ARE VISITED
            {
                - rina_bandn && rina_topicspot && rina_hallway:
                    -> rina_elevator
            }
    
    //"resetting" rina, as if she forgot the choice nour just made.
    = rina_reset
    
        Rina's eyes glaze over briefly. She returns to her familiar demeanor.
            
            -> rina_branches

//---------------- BEGINNING ----------------
//first encounter, starts Nour's arc; in bandn
//This is the big conversation about the incident in the HS cafeteria; it reaches a boiling point.
//The boiling point directs to the branches.

== rina_bandn ==

    RINA: Hehe haha hoho

    //illusion of choice throughout this conversation

    -> rina_branches
branchebusy
//---------------- TOPICSPOT ----------------
//At the end of Nick's route, he gains confidence in himself, and realizes he isn't stupid.
//Nour takes this to mean that she should be confident, but she's OVER confident as a result.

== rina_topicspot ==
    
    //If this knot is already visited, display a TLDR here and end scene.
    
    NOUR: "You were too much of a coward to advocate for me. Some 'friend' you are."
    
    
    -> END

//---------------- HALLWAY ----------------
//At the end of Ms. Suwan's route, Ms. Suwan is able to apologize for her past behavior and let go.
//Nour takes this to mean that she should let things slide, and she ends up being too passive as a result.

== rina_hallway ==
    
    //If this knot is already visited, display a TLDR here and end scene.
    
    
    NOUR: "Whatever. you know what, I'm not mad anymore. It's fine. It was no big deal."
    
    Nour sighs.
    
    RINA: "Really? Because a moment ago, you were huffing about how much I hurt you, and how it's hard for you to trust anyone now."
    
    //CHOICE HERE
    -> END

//---------------- ELEVATOR ----------------
//she's blocking the elevator; end of nour's route

== rina_elevator ==

    //If this knot is already visited, display a TLDR here and end scene.
    //CHOICE: Nour explains why this hurt them so much.
    //what really happened: Nour got extremely vulnerable. They cried b/c they thought that they'd have at least one person to stand up for them, when it felt like their family was against them.
    //Rina got defensive-- first, she argued that she was right, and that she would have been bullied if she stood up for Nour. Then, she asked nour to just move on, and forget that it happened.
    //Nour sees how Nick and Ms. Suwan were able to grow past those problems. Nour knows they've been struggling through the same problems. 
    //They are able to let go, and understand that people change over time. They've grown past that experience, and it's up to Rina to do the same.
    //Rina shlorps out of existence.
    
    -> END


//---------------- HELP ----------------
//Guidance for the player; Rina tells nour to help the others
== rina_help ==

    //If this knot is already visited, display a TLDR here and end scene.
    
    NOUR: "Friends are supposed to help each other. You weren't helping me that day, but..."
    
    RINA: "Seems like you're helping your new companions... would you consider them to be your friends?"
    
    -> END

