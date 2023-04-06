=== weirdtree ===

    It's a really weird tree. It's extremely clear that this tree is not like the others. 
    
    {
        - weirdtree_findgranny:
            -> explored_everything
            
        - consoles_start_aplequest:
            -> weirdtree_findgranny
            
        - weirdtree_before_aplequest:
            -> weirdtree_before_aplequest_repeat
            
        - else:
            -> weirdtree_before_aplequest
    }
    
=== weirdtree_before_aplequest ===

    NOUR: "This tree looks strange... Do you think there's something <i>in</i> it?"
    
    NICK: "Dunno, but it looks WACK! It's all pink and wobbly... What if I just-"
    
    //FOLLOW_NICK_NickTreePos
    
    &PAUSE_1.0
    
    MS. SUWAN: "Do <i>not</i> climb the tree."
    
    NICK: "But what if there's something super duper cool up there?"
    
    MS. SUWAN: "No. We have better things to do."
    
    NICK: "Ugh, fine. You're no fun."
    
    -> END

=== weirdtree_before_aplequest_repeat ===
    
    MS. SUWAN: "Don't even think about it."

    NICK: "..."

    NOUR: <i>Maybe I can come back to this later...</i>
    
    -> END

=== weirdtree_findgranny ===

    NOUR: "...You know what I'm thinking?"
    
    &PORTRAIT_ms. suwan_suwanannoyed

    MS. SUWAN: "An apple... in a tree...?"
    
    &PORTRAIT_nick_nickshadow
    
    NICK: "..."
    
    NOUR: "We could try cutting down the tree."
    
    MS. SUWAN: "With what tools? This is a joke, right?"
    
    NOUR: "No. I'm serious about this. We should go find an axe."
    
    &PORTRAIT_nick_nickworried //he should look confused
    
    NICK: <i>Sigh...</i>
    
    &PORTRAIT_nour_noursmile
    
    NOUR: "Should we try something else?"
    
    Nick nods his head.
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: "To check for an apple up in the tree, we could..."
    
        * (shake) "Shake the tree?"
        
        * (throw) "Throw rocks at the tree?"
        
        * (climb) "Climb the tree?"
        
    - Nick shrugs, but doesn't protest.
            
    NOUR: "Alright... Here goes."
    
    //&FOLLOW_NOUR_NourTreePos
    
    // FADEOUT
    
    &PAUSE_1.5
    
    "..."
    
    <i>Rustle rustle...</i> //ALSO SFX
    
    &PAUSE_1.5
    
    {shake: 
    
        MS. SUWAN: "You shook it far too lightly."
        
    }
    
    {throw:
    
        MS. SUWAN: "You <i>barely</i> grazed the tree, Nour."
        
    }
    
    {climb:
    
        MS. SUWAN: "Nour, you <i>barely</i> went up the tree."
        
    }

    NICK: "...I'll do it."
    
    ...
    
    &PAUSE_1.0
    
    //RUSTLING SFX
    
    <i>Rustle rustle...</i>
    
    &SHLORP_APPLE_GrandDuchessGranny_in
    
    //Fade in
    
    NICK: "Woah! What the—"
    
    &PORTRAIT_???_grannysmile
    
    ???: "KEKEKE!"
    
    MS. SUWAN: "Is that one of those—"
    
    ???: "Thank the Mother Tree! Someone has awoken me from my slumber at last!"
    
    &PORTRAIT_nick_nickbigsmile
    
    NICK: "...!"
    
    ???: "Ah, yes! What a handsome smile!"
    
    GRAND DUCHESS GRANNY: "I, <i>GRAND DUCHESS GRANNY SMITH</i>, can tell with my old applady eyes... that you are indeed a SWEETIEPIE!"
    
    &PORTRAIT_nick_nickangry
    
    NICK: "Um... thanks?"
    
    GRAND DUCHESS GRANNY: "No frowning, young man! You young folks these days..."
    
    NICK: "..."
    
    GRAND DUCHESS GRANNY: "Lacking CONFIDENCE? Lacking RESOLVE? Lacking POSITIVE SELF-ESTEEM?" 
    
    GRAND DUCHESS GRANNY: "<i>PATOOEY!</i>"
    
    NICK: "How...how'd you—"
    
    GRAND DUCHESS GRANNY: "The Mother Tree nurtures all. A sweet seedling like you has the means to blossom..."
    
    GRAND DUCHESS GRANNY: "But only if <i>YOU</i> step into the sun! Plant your roots firmly, and reach for the sky!"
    
    &PORTRAIT_nick_nickworried
    
    NICK: "..."
    
    GRAND DUCHESS GRANNY: "<i>UNDERSTOOD, YOUNG HUMAN BOY?</i>"
    
    NICK: "I-I, I mean, uh, YES?"
    
    GRAND DUCHESS GRANNY: "KEKEKE! <i>Very</i> good. And same goes for you two seedlings!"
    
    MS. SUWAN: "Seedling? I'm not nearly as young as these two."
    
    GRAND DUCHESS GRANNY: "AGE has nothing to do with the tangled roots in your hearts! The Mother Tree connects us for a reason."
    
    GRAND DUCHESS GRANNY: "I will pray to her that your time spent Between the Planes will unravel your haunted past."
    
    GRAND DUCHESS GRANNY: "KEKEKE! Now... what was I doing in here?"
    
    NOUR: "I believe you were searching for the Prince?"
    
    GRAND DUCHESS GRANNY: "Ah, the Prince... ANOTHER IDIOT APPLE BOY who is worth SO MUCH MORE than he thinks!"
 
    NOUR: "...We've been sent by the Emperor to retrieve eveyone in the Prince's search council."
    
    GRAND DUCHESS GRANNY: "EVERCRISP! That mushy, sentimental fruit... Thank you for your hard work, seedlings."
    
    GRAND DUCHESS GRANNY: "As a reward, I will tell you:"
    
    GRAND DUCHESS GRANNY: "[epic lore drop]"
    
    GRAND DUCHESS GRANNY: "But I've rambled far long enough, KEKEKE!"
    
    GRAND DUCHESS GRANNY: "Send me away to the Emperor, dearies!"
    
    NOUR: "Sure thing."
    
    GRAND DUCHESS GRANNY: "And let me see that young man's face once more... Come here!"
    
    Nick nods his head. Grand Duchess Granny Smith gives him a fat kiss on the cheek.
    
    &PORTRAIT_nick_nickworried
    
    NICK: "...Eek!"
    
    GRAND DUCHESS GRANNY: "KEKEKE! GOODBYE, PRECIOUS ONES! VISIT GRANNY SOMETIME, YES?</i>"
    
    &SHLORP_APPLE_GrandDuchessGranny_out
    
    Nick touches his cheek. 
    
    NOUR: "Good work getting her out of there. I would've never been able to do that without you."
    
    Nick stays silent, but he nods his head again.
    
    NOUR: <i>He's responding more and more with each apple we find. We should continue.</i>
    
    -> END
