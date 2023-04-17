== timbertims ==
    
    This storefront used to be <i>Timbertims</i>, a shoe store. It sold exclusively bright white toe shoes with red soles.
    
    Despite its off-putting decor, it was extremely popular—everyone in Signal Creek seems to have owned a pair of Timbertims at one point.
    
    {
        - timbertimsvisited:
            -> explored_everything
        - timbertims1:
            -> timbertimsvisited
        - else:
            -> timbertims1
            
    }
    
== timbertims1 ==

    &PORTRAIT_nick_nickpondering

    NICK: "Hey, did you guys ever get shoes from here before?"
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: "Yeah, actually... I had a pair back when I was in high school."
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "Wore them for like a week, and then... I dunno. Guess I realized how ugly they were."
    
    &PORTRAIT_nick_nickshocked
    
    NICK: "SAME! I had mine for a month before I had to give it to my younger brother."
    
    &PORTRAIT_mssuwan_mssuwanneutral
    
    MS. SUWAN: "I recieved a pair as a gift once, although they aren't my style in the slightest."
    
    &PORTRAIT_mssuwan_mssuwanpondering
    
    MS. SUWAN: "I suppose that speaks to how successful the marketing was."
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: "Right... what was that slogan, again? That thing was a real earworm. Even if it made no sense."

    &PORTRAIT_nick_nicksmallsmile
    
    NICK: "<i>Once you Tim, you never Tout~</i>"
    
    &PORTRAIT_nour_noursmile
    
    NOUR: "Yep. Makes even less sense than I remember. Catchy little tune, though."
    
    SCREENSHAKE. TIM SPRITE SHLORPS IN. 
    
    CAN WE GET ALL OF THE PLAYER CHARACTERS JUMPING IN SURPRISE OR TURNING AROUND TO FACE HIM?
    
    TIM: "CUSTOMERS?! CUSTOMERS AT TIMBERTIMS?!"
    
    &PORTRAIT_nick_nickshocked
    
    NICK: "Whoa-!"
    
    &PORTRAIT_nour_nourshocked
    
    NOUR: "What the f-"
    
    &PORTRAIT_mssuwan_mssuwannervous
    
    MS. SUWAN: "Can we help you?"
    
    TIM: "The question you should be asking is... can <i>I</i> help <i>you</i>?"
    
    TIM: "Because I see none of you are wearing Tims on your little feetsies..."
    
    &PORTRAIT_nour_nournervous
    
    NOUR: "Our little... uhhh... ooookay..."
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: <i>Looks like this guy's the Timbertims manager. But why is he even here if the store is closed...?</i>
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: <i>Either way, I guess it might be worth it to speak to him.</i>
    
    NOUR:
        + [Be polite] -> timbertimspol
        + [Be suspicious] -> timbertimssus
    
        -> END

== timbertimspol ==

    &PORTRAIT_nour_nourneutral

    NOUR: "Excuse me, but do you know anything about how to get out of this mall?"
    
    TIM: "Why, yes! I do. You need only put on a pair of Timbertims and you may go as you please~"
    
    &PORTRAIT_nour_nourannoyed
    
    NOUR: "... I don't exactly have time for new shoes right now. I just need to know how to leave."
    
    TIM: "Leaving is a good idea. I'm planning to leave soon, myself."
    
    TIM: "Move to some new town, settle down, meet the love of my life, have a bunch of children who look just like me..."
    
    TIM: "My life is both successful yet lonely..."
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: "Um - okay, I'm happy for you, but that doesn't help us at all."
    
    TIM: "Maybe open a <i>Timbertims</i> there too and sell them en masse..." 
    
    TIM: "Or maybe I should leave my small business days behind... I've always wanted to be a politician."
    
    TIM: "Or a god!"
    
    &PORTRAIT_nour_nourannoyed
    
    NOUR: "Are you even listening to me anymore?"
    
    &PORTRAIT_mssuwan_mssuwanangry
    
    MS. SUWAN: "I believe this man is under the influence. We should leave him alone."
    
    TIM: "Under the Timfluence..."
    
    TIM SHLORPS OUT
    
        -> END

== timbertimssus ==

    &PORTRAIT_nour_nourneutral

    NOUR: "Um, excuse me, but what are you even doing here? Hasn't your store been closed down for weeks?"
    
    TIM: "As long as somebody in the town of Signal Creek is wearing a pair of <i>Timbertims</i>, I can stay as long as I want."
    
    &PORTRAIT_nour_nournervous
    
    NOUR: "Uh... okay, whatever that means."
    
    &PORTRAIT_mssuwan_mssuwanneutral
    
    MS. SUWAN: "Even if you're being honest, I was under the impression the Timbertims fad died out months ago."
    
    &PORTRAIT_mssuwan_mssuwanpondering
    
    MS. SUWAN: "I've hardly noticed anyone with this brand at all recently."

    &PORTRAIT_nick_nickneutral
    
    NICK: "Oh... actually, my brother still wears Timbertims." 

    &PORTRAIT_nick_nicksad
    
    NICK: "We, um... we don't really get new shoes often." 
    
    &PORTRAIT_nick_nicknervous
    
    NICK: "I mean - my mom's been planning on buying us new ones soon, but she hasn't had the time yet to take us shopping."
    
    TIM: "Indeed, Nick's younger brother's little feetsies are the last sources of power..."
    
    &PORTRAIT_nour_nournervous
    
    NOUR: "Can you please stop saying 'little feetsies'?"
    
    TIM: "But if my savior is truly planning to exchange his Tims for some inferior shoes, I fear my time in Signal Creek is limited..."
    
    MS. SUWAN: "On that topic, have you ever found a way to leave this mall?"
    
    TIM: "A pair of </i>Timbertims</i> may show you the path to salvation!"
    
    TIM: "Salvation being an escape from this mall...?"
    
    &PORTRAIT_nour_nourannoyed
    
    NOUR: "... I don't exactly have time for new shoes right now. I just need to know how to leave."
    
    TIM: "Leaving is a good idea. I'm planning to leave soon, myself."
    
    TIM: "Move to some new town, settle down, meet the love of my life, have a bunch of children who look just like me..."
    
    TIM: "My life is both successful yet lonely..."
    
    &PORTRAIT_nour_nournervous
    
    NOUR: "Um - okay, I'm happy for you, but that doesn't help us at all."
    
    TIM: "Maybe open a <i>Timbertims</i> there too and sell them en masse..." 
    
    TIM: "Or maybe I should leave my small business days behind... I've always wanted to be a politician."
    
    TIM: "Or a god!"
    
    &PORTRAIT_nour_nourannoyed
    
    NOUR: "Well, thanks for nothing, I guess."
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: <i>Something tells me he isn't going to help us at all. Might as well leave him alone.</i>

    TIM SHLORPS OUT

    -> END


== timbertimsvisited ==

    &PORTRAIT_nick_nickpondering

    NICK: "Isn't it weird how <i>everyone</i> was wearing Tims for like a week? Like, did anyone else notice that?"
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "I sure did."
    
    &PORTRAIT_mssuwan_mssuwanpondering
    
    MS. SUWAN: "I suppose that's how fads work."
    
    &PORTRAIT_mssuwan_mssuwannervous
    
    MS. SUWAN: "But I agree, it was strange. Especially considering how unpleasant those shoes are..."
    
    TIM SHLORPS IN
    
    TIM: "UNPLEASANT? :("

    &PORTRAIT_nick_nicknervous
    
    NICK: "Uh, she meant - <i>totally</i> pleasant!"
    
    &PORTRAIT_mssuwan_mssuwanangry
    
    MS. SUWAN: "I certainly did not."
    
    TIM SHLORPS OUT

    -> END
