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

    &PORTRAIT_nour_nourpondering

    NOUR: "This tree looks strange... Do you think there's something <i>in</i> it?"
    
    NICK: "Dunno, but it looks WACK! It's all pink and wobbly... What if I just-"
    
    //FOLLOW_NICK_NickTreePos
    
    &PAUSE_1.0
    
    &PORTRAIT_ms. suwan_suwanannoyed
    
    MS. SUWAN: "Do <i>not</i> climb the tree."
    
    NICK: "But what if there's something super duper cool up there?"
    
    MS. SUWAN: "No. We have better things to do."
    
    &PORTRAIT_nick_nickannoyed
    
    NICK: "Ugh, fine. You're no fun."
    
    -> END

=== weirdtree_before_aplequest_repeat ===
    
    MS. SUWAN: "Don't even think about it."

    NICK: "..."

    NOUR: <i>Maybe I can come back to this later...</i>
    
    -> END

=== weirdtree_findgranny ===

    &FOLLOW_NOUR_NourTreeStartPos
    
    &FOLLOW_SUWAN_SuwanTreeStartPos
    
    &FOLLOW_NICK_NickTreeStartPos

    &PORTRAIT_nour_noursmile
    
    NOUR: "...You know what I'm thinking?"
    
    &PAUSE_0.05
    
    &EMOTE_NOUR_UpIdle
    
    &EMOTE_NICK_RightIdle
    
    &EMOTE_SUWAN_UpIdle
    
    &PORTRAIT_ms. suwan_suwanannoyed

    MS. SUWAN: "An apple... in a tree...?"
    
    &PORTRAIT_nick_nickshadow
    
    NICK: "..."
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: "We could try cutting down the tree."
    
    MS. SUWAN: "With what tools? This is a joke, right?"
    
    &PORTRAIT_nour_noursmile
    
    NOUR: "No. I'm serious about this. We should go find an axe."
    
    &PORTRAIT_nick_nickworried //he should look confused
    
    NICK: <i>Sigh...</i>
    
    &PORTRAIT_nour_noursmile
    
    NOUR: "Should we try something else?"
    
    NICK: Nick nods his head.
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: "To check for an apple up in the tree, we could..."
    
        * (shake) "Shake the tree?"
        
        * (throw) "Throw rocks at the tree?"
        
        * (climb) "Climb the tree?"
        
    - NICK: Nick shrugs, but doesn't protest.
            
    NOUR: "Alright... Here goes."
    
    &FOLLOW_NOUR_NourFollowTreePos
    
    &PAUSE_0.5
    
    &FDEOUT
    
    "..."
    
    <i>Rustle rustle...</i> //ALSO SFX
    
    
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
    
    //RUSTLING SFX
    
    <i>Rustle rustle...</i>
    
    &SHLORP_APPLE_GrandDuchessGranny_in
    
    &FDEIN
    
    NICK: "Woah! What the—"
    
    &PORTRAIT_???_grannysmile
    
    &PORTRAIT_grand duchess granny_grannysmile
    
    ???: "KEKEKE!"
    
    MS. SUWAN: "Is that one of those—" 
    
    ???: "Thank the Mother Tree! Someone has awoken me from my slumber at last!"
    
    &PORTRAIT_nick_nickbigsmile
    
    NICK: "...!"
    
    ???: "Ah, yes! What a handsome smile!"
    
    GRAND DUCHESS GRANNY: "I, <i>GRAND DUCHESS GRANNY SMITH</i>, can tell with my old applady eyes..."
    
    GRAND DUCHESS GRANNY: "...That you are indeed a SWEETIEPIE!"
    
    &PORTRAIT_nick_nickangry
    
    NICK: "Um... thanks?"
    
    &PORTRAIT_grand duchess granny_grannyangry
    
    GRAND DUCHESS GRANNY: "No frowning, young man! You young folks these days..."
    
    NICK: "..."
    
    GRAND DUCHESS GRANNY: "Lacking CONFIDENCE? Lacking RESOLVE? Lacking SELF-ESTEEM?" 
    
    GRAND DUCHESS GRANNY: "To that, I say... <i>PATOOEY!</i>"
    
    NICK: "How... how'd you—"
    
    &PORTRAIT_grand duchess granny_grannyneutral
    
    GRAND DUCHESS GRANNY: "The Mother Tree nurtures all. A sweet seedling like you has the means to blossom..."
    
    GRAND DUCHESS GRANNY: "But only if <i>YOU</i> step into the sun! Plant your roots firmly, and reach for the sky!"
    
    &PORTRAIT_nick_nickworried
    
    NICK: "..."
    
    &PORTRAIT_grand duchess granny_grannyangry
    
    GRAND DUCHESS GRANNY: "<i>UNDERSTOOD, YOUNG HUMAN BOY?</i>"
    
    NICK: "I-I, I mean, uh, YES?"
    
    &PORTRAIT_grand duchess granny_grannysmile
    
    GRAND DUCHESS GRANNY: "KEKEKE! <i>Very</i> good. And same goes for you two seedlings!"
    
    MS. SUWAN: "Seedling? I'm not nearly as young as these two."
    
    &PORTRAIT_grand duchess granny_grannyangry
    
    GRAND DUCHESS GRANNY: "AGE has nothing to do with the tangled roots in your hearts!"
    
    &PORTRAIT_grand duchess granny_grannyneutral
    
    GRAND DUCHESS GRANNY: "The Mother Tree connects us for a reason."
    
    GRAND DUCHESS GRANNY: "I pray that your time spent Between the Planes will unravel your haunted past."
    
    &PORTRAIT_grand duchess granny_grannysmile
    
    GRAND DUCHESS GRANNY: "KEKEKE! Now... what was I doing in here?"
    
    NOUR: "I believe you were searching for the Prince?"
    
    &PORTRAIT_grand duchess granny_grannyangry
    
    GRAND DUCHESS GRANNY: "Ah, the Prince... ANOTHER IDIOT BOY who doesn't KNOW HIS WORTH!"
 
    NOUR: "...We've been sent by the Emperor to retrieve eveyone in the Prince's search council."
    
    &PORTRAIT_grand duchess granny_grannyneutral
    
    GRAND DUCHESS GRANNY: "EVERCRISP! That mushy, sentimental fruit..."
    
    &PORTRAIT_grand duchess granny_grannysmile
    
    GRAND DUCHESS GRANNY: "Thank you for your hard work, seedlings."
    
    &PORTRAIT_nick_neutral
    
    NICK: Nick nods his head. 
    
    &PORTRAIT_grand duchess granny_grannykiss
    
    //SFX GROSS WET KISSY
    
    GRAND DUCHESS GRANNY: Grand Duchess Granny Smith blows Nick a fat kiss! 
    
    NICK: "Eek!"
    
    &PORTRAIT_grand duchess granny_grannysmile
    
    GRAND DUCHESS GRANNY: "KEKEKE!"
    
    GRAND DUCHESS GRANNY: "Send me away to the Emperor, dearies!"
    
    &PORTRAIT_nour_noursmile
    
    NOUR: "Sure thing."
    
    GRAND DUCHESS GRANNY: "KEKEKE! GOODBYE, PRECIOUS ONES! <i>VISIT GRANNY SOMETIME, YES?</i>"
    
    &SHLORP_APPLE_GrandDuchessGranny_out
    
    &PAUSE_0.75
    
    NICK: Nick touches his cheek. 
    
    NOUR: "Good work getting her out of there!"
    
    NOUR: "I would've never been able to do that without you."
    
    NICK: Nick stays silent, but he nods his head again.
    
    NOUR: <i>He's responding more and more with each apple we find. We should continue.</i>
    
    &FOLLOW_NOUR_stop
    
    -> END
