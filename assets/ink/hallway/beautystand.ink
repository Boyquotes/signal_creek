== beautystand ==
    
    It's a Beauty Booth used for makeovers.
    
    A feminine apple stares into the souls of those who gaze back at her. 

    {
        - beautystand_find_pinklady:
            -> explored_everything
            
        - consoles_start_aplequest:
            -> beautystand_find_pinklady
            
        - beautystand_before_aplequest:
            -> beautystand_before_aplequest_repeat
            
        - else:
            -> beautystand_before_aplequest 
    }
    
== beautystand_before_aplequest ==

    &PORTRAIT_nour_nourpondering
    
    NOUR: "Anybody care for a makeover?"
    
    &PORTRAIT_nick_nicknervous
    
    NICK: "Sounds like money I could use somewhere else."
    
    &PORTRAIT_nick_nicksmallsmile
    
    NICK: "Like, towards a new game or something..."
    
    &PORTRAIT_ms. suwan_mssuwanneutral
    
    MS. SUWAN: "I will also pass."
    
    &PORTRAIT_ms. suwan_mssuwannervous

    MS. SUWAN: "Besides, who knows how old that makeup could be?"
    
    &PORTRAIT_nour_nournervous

    NOUR: "That's a good point."
        -> END

== beautystand_before_aplequest_repeat ==

    &PORTRAIT_nour_nourneutral

    NOUR: <i>We've already looked at the beauty booth before.</i>

    &PORTRAIT_nour_noursmile

    NOUR: <i>But seeing that apple lady (?) somehow makes me feel better.</i>
     -> END

== beautystand_find_pinklady ==

    &PORTRAIT_nour_nourpondering
    
    NOUR: "..."
    
    &PORTRAIT_ms. suwan_mssuwanannoyed
    
    MS. SUWAN: "Are we here because there's literally an apple on the booth—"
    
    &PORTRAIT_nour_noursad
    
    NOUR: "Sometimes the least obvious answers are the most obvious ones..."
    
    &PORTRAIT_ms. suwan_mssuwanangry

    MS. SUWAN: "There's no apple here."
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "Maybe we have to do something to get it out of the booth."
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: "The apple could be... shy?"
    
    &PORTRAIT_ms. suwan_mssuwan
    
    MS. SUWAN: "..."
    
    NOUR: "Um. What do you think, Nick?"
    
    &PORTRAIT_nick_nicknervous
    
    NICK: "..."
    
    Nick remains silent, but his eyebrows are furrowed in concentration.
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "We could try..."
    
        * "Talking to the apple."
            -> talktoapple
        
        * "Staring back at the apple."
            -> stareatapple
        
        * "Giving the apple a makeover."
            -> giveapplemakeover

== talktoapple ==

    &PORTRAIT_nick_nickbigsmile
    
    NICK: "Haha!"
    
    &PORTRAIT_nick_nickshocked
    
    NICK: "..."
    
    &PORTRAIT_nour_nournervous
    
    NOUR: <i>I have no idea if this will work...</i>
    
    &PORTRAIT_nour_noursmile
    
    NOUR: <i>But at least Nick seems to be enjoying himself.</i>
    
    &PORTRAIT_nour_nourpondering
            
    NOUR: "Maybe it needs some encouragement. I can go first?"
    
    // NOUR APPROACHES THE BOOTH
    
    &PORTRAIT_nour_nournervous
    
    NOUR: "Hi, um..."
            
        * "Nice weather we're having?"
        
        * "You look really nice today?"
        
        * "How are you feeling today?"
            
    - &PORTRAIT_nour_nourneutral
    
    NOUR: "Now you go, Ms. Suwan."
    
    &PORTRAIT_ms. suwan_mssuwannervous
                
    MS. SUWAN: "..."
    
    // MS. SUWAN APPROACHES THE BOOTH
    
    &PORTRAIT_ms. suwan_mssuwanneutral
                
    MS. SUWAN: "Hello."
    
    &PORTRAIT_nour_nournervous
                
    NOUR: "That's it?!"
    
    &PORTRAIT_nour_nourpondering
                
    NOUR: "C'mon, Nick. Anybody could beat Ms. Suwan. Now's your chance!"
                
    &PORTRAIT_ms. suwan_mssuwanannoyed
    
    MS. SUWAN: "Excuse me—"
    
    // NICK APPROACHES THE BOOTH
    
    &PORTRAIT_nick_nickneutral
                
    NICK: "Emperor Evercrisp has sent us."
    
    &PORTRAIT_nour_noursmile
                
    NOUR: "True! Good work, Nick!"
    
    &PORTRAIT_ms. suwan_mssuwanangry
                
    MS. SUWAN: "We are talking to a <i>wall</i>."
    
    &PORTRAIT_ms. suwan_mssuwanannoyed
                
    MS. SUWAN: "Have we all finally gone insane?"
    
    -> pinkladyreveal
    
== stareatapple ==
            
    &PORTRAIT_nick_nickbigsmile
    
    NICK: "Haha!"
    
    &PORTRAIT_nick_nickshocked
    
    NICK: "..."
    
    &PORTRAIT_nour_nournervous
    
    NOUR: <i>I have no idea if this will work...</i>
    
    &PORTRAIT_nour_noursmile
    
    NOUR: <i>But at least Nick seems to be enjoying himself.</i>
    
    &PORTRAIT_nour_nourpondering
            
    NOUR: "I mean, if this apple on the booth is the apple we need to find..."
    
    &PORTRAIT_nour_noursmile
    
    NOUR: "Maybe we should beat it in a staring contest?"
    
    &PORTRAIT_ms. suwan_mssuwanannoyed
            
    MS. SUWAN: "What? That's a poster for crying out loud."
    
    &PORTRAIT_nour_nournervous
            
    NOUR: "This place is plenty weird."
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: "Maybe finding the other weird thing requires a weird tactic!"
    
    &PORTRAIT_ms. suwan_mssuwanangry
            
    MS. SUWAN: "I will not do that."
    
    &PORTRAIT_nour_nourneutral
            
    NOUR: "Fine. Nick, you need to help me stare at the apple."
    
    &PORTRAIT_nour_nourannoyed
            
    NOUR: "We need all the manpower we got since <i>someone</i> won't join."
    
    &PORTRAIT_nick_nickshocked
            
    NICK: "..."
    
    He moves closer to the apple on the booth.
    
    // NICK MOVES TOWARDS THE BOOTH, FACING IT
    // NOUR FOLLOWS AND THEN STANDS NEXT TO HIM, FACING THE BOOTH
    
    &PORTRAIT_nour_nourneutral
            
    NOUR: "..."
    
    &PORTRAIT_nick_nickneutral
            
    NICK: "..."
            
        * [Keep staring]
            NOUR: "..."
                    
            NICK: "..."
            
            &PORTRAIT_ms. suwan_mssuwanannoyed
                    
            MS. SUWAN: "Are you two seriously doing this?"
                    
                ** [Stare HARDER]
                    NOUR: "..."
                        
                    NICK: "..."
                    
                    &PORTRAIT_ms. suwan_mssuwanangry
                        
                    MS. SUWAN: "Don't hurt yourselves, please."
                        
                        *** [STARE LIKE YOUR LIFE DEPENDS ON IT]
                        
                            &PORTRAIT_nour_nourannoyed
                            
                            NOUR: "..."
                            
                            &PORTRAIT_nick_nickangry
                            
                            NICK: "..."
                            
                            // MS. SUWAN APPROACHES TO STAND IN FRONT OF THE BOOTH.
                            
                            &PORTRAIT_ms. suwan_mssuwanneutral
                            
                            MS. SUWAN: "..."
                            
                            -> pinkladyreveal
                            
=== giveapplemakeover ===
            
    &PORTRAIT_nick_nickbigsmile
    
    NICK: "Haha!"
    
    &PORTRAIT_nick_nickshocked
    
    NICK: "..."
    
    &PORTRAIT_nour_nournervous
    
    NOUR: <i>I have no idea if this will work...</i>
    
    &PORTRAIT_nour_noursmile
    
    NOUR: <i>But at least Nick seems to be enjoying himself.</i>
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "Maybe this apple on the booth is the apple we need to find."
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: "But maybe it won't come out unless it's really dolled-up."
    
    &PORTRAIT_nour_noursmile
            
    NOUR: "This <i>is</i> a beauty booth, after all."
    
    &PORTRAIT_ms. suwan_mssuwanangry
            
    MS. SUWAN: "What? This is a poster for crying out loud."
    
    &PORTRAIT_nour_nourneutral
            
    NOUR: "This place is plenty weird."
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: "Maybe finding the other weird thing requires a weird tactic!"
    
    &PORTRAIT_nour_nourannoyed

    NOUR: "We are also literally dealing with talking, sentient fruit."
    
    &PORTRAIT_ms. suwan_mssuwanangry
            
    MS. SUWAN: "..."
    
    &PORTRAIT_ms. suwan_mssuwanannoyed
            
    MS. SUWAN: "Knock yourselves out, then."
    
    &PORTRAIT_nour_nourneutral
            
    NOUR: "Looks like there's some makeup in this booth. I'll grab some."
    
    &PORTRAIT_nour_noursmile
            
    NOUR: "Nick, could you help me give this apple a makeover?"
    
    &PORTRAIT_nick_nickneutral
            
    Nick shrugs.
    
    // NICK SHRUGGING ANIMATION
    
    &PORTRAIT_nour_nourpondering
            
    NOUR: <i>What should I give him?</i>
    
    // NOUR GIVING HIM ITEMS ANIMATIONS
    
    &PORTRAIT_nour_nourneutral
            
        * "Use this red lipstick."
                    
        * "Use this black eyeliner."
                    
        * "Use this pink blush."
            
    - &PORTRAIT_nick_nicknervous
    
    NICK: "..."
    
    Nick stares at it and then grabs it. He starts to use it on the poster.
    
    // NICK GRABBING ANIMATION, THEN TURNS TO USE IT ON THE POSTER
    
    &PORTRAIT_nour_noursmile
                
    NOUR: "Nice! I'll help you out too..."
    
    // NOUR JOINS IN USING THE MAKEUP ON THE POSTER
    
    &PORTRAIT_ms. suwan_mssuwannervous
                
    MS. SUWAN: "I don't see how this is going to help anything—"
    
    -> pinkladyreveal

=== pinkladyreveal ===

    - &PORTRAIT_???_pinkladysmile
    
    ???: "Hee hee!"

    &PORTRAIT_nour_nourrealization
    
    NOUR: "Did you hear that?"
    
    &PORTRAIT_ms. suwan_mssuwanrealization
    
    MS. SUWAN: "Where did it come from?"
    
    &PORTRAIT_nick_nickshocked
    
    NICK: "...!"
    
    &PORTRAIT_???_pinkladysmile
    
    ???: "You three are so silly, hee hee!"
    
    &SHLORP_POOP_PrincessPinkLady_in
    
    ???: "I wasn't planning on showing myself, but I couldn't help myself!"
    
    &PORTRAIT_???_pinkladyneutral
    
    ???: "You remind me of my beloved prince..."
    
    &PORTRAIT_???_pinkladysmile
    
    ???: "He was also a silly, goofy guy!"
    
    &PORTRAIT_???_pinkladyneutral
    
    ???: "Furthermore, I can tell you mean no harm."
    
    &PORTRAIT_???_pinkladysmile
    
    ???: "I don't think you <i>could</i> harm me, even if you tried!"
    
    &PORTRAIT_ms. suwan_mssuwanrealization
    
    MS. SUWAN: "Are you telling me that <i>seriously</i> worked?" //shocked
    
    ???: "Oh, ye of little faith!"
    
    &PORTRAIT_???_pinkladyneutral
    
    ???: "If you look down on different kinds of problem-solving..."
    
    ???: "... serious <i>or</i> not..." 
    
    &PORTRAIT_???_pinkladybashful
    
    ???: "... you lock more doors than you open!"
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: "We've been searching for missing apples on behalf of the Emperor."
    
    &PORTRAIT_nour_nournervous
    
    NOUR: "Including the prince."
    
    &PORTRAIT_???_pinkladysmile
    
    ???: "Well! Found me—<i>PRINCESS PINK LADY</i>—you have, hee hee!"
    
    &PORTRAIT_princess pink lady_pinkladyneutral
    
    PRINCESS PINK LADY: "Have you found my Prince, dear bipeds?"
    
    &PORTRAIT_nour_noursad
    
    NOUR: "Not yet, but we know he's here somewhere."
    
    &PORTRAIT_princess pink lady_pinkladybashful

    PRINCESS PINK LADY: "Oh, he must still be sulking over his father sending him down here."
    
    &PORTRAIT_princess pink lady_pinkladyneutral
    
    PRINCESS PINK LADY: "He took it quite to heart and must be hiding."
    
    PRINCESS PINK LADY: "Oh, how his confidence must've suffered!"
    
    &PORTRAIT_princess pink lady_pinkladybashful
    
    PRINCESS PINK LADY: "When you find him, could you relay a message for me?"
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "Of course. What would you like us to say?"
    
    &PORTRAIT_princess pink lady_pinkladysmile
    
    PRINCESS PINK LADY: "Tell him that he is smarter and better than he thinks he is, hee hee!"
    
    &PORTRAIT_nour_noursmile
    
    NOUR: "Will do, Princess."
    
    &PORTRAIT_princess pink lady_pinkladyneutral
    
    PRINCESS PINK LADY: "Before I depart, let me tell you something that might come in handy..."
     
    PRINCESS PINK LADY: "<i>Walk the opposite way from the Prince of Corn's dungeon!</i>"
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: "What?"
    
    &PORTRAIT_nick_nickshocked
    
    NICK: "... !"
    
    &PORTRAIT_princess pink lady_pinkladybashful
    
    PRINCESS PINK LADY: "Now, I must be on my way. Will you send me back now?"
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "Yes. Thank you for your help."
    
    &PORTRAIT_nour_nournervous
    
    NOUR: "Even though I don't know if I fully understood it..."
    
    &PORTRAIT_princess pink lady_pinkladysmile
    
    PRINCESS PINK LADY: "You could ask that young Dream Walker in the yellow for help!"
    
    &PORTRAIT_nick_nickshocked
    
    NICK: "...?"
    
    &PORTRAIT_princess pink lady_pinkladyneutral
    
    PRINCESS PINK LADY: "Yes, you!"
    
    &PORTRAIT_princess pink lady_pinkladysmile
    
    PRINCESS PINK LADY: "He <i>definitely</i> understood what I just said."
    
    &PORTRAIT_princess pink lady_pinkladybashful
    
    PRINCESS PINK LADY: "I have a keen eye, hee hee!"
    
    &PORTRAIT_princess pink lady_pinkladysmile
    
    PRINCESS PINK LADY: "Now, I bid you all adieu~"
    
    &PORTRAIT_princess pink lady_pinkladybashful
    
    PRINCESS PINK LADY: "Please send my love to the apple of my eye, the Prince!"
    
    &SHLORP_POOP_PrincessPinkLady_out
    
    &PORTRAIT_ms. suwan_mssuwanrealization
    
    MS. SUWAN: "Perhaps I shouldn't have been so hasty to look down on your..."
    
    &PORTRAIT_ms. suwan_mssuwansad
    
    MS. SUWAN: "... unconventional tactics."
    
    &PORTRAIT_nick_nickshocked

    NICK: "..."
    
    &PORTRAIT_nour_nournervous

    NOUR: "How is what she told us going to help?"
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "I didn't understand <i>anything</i>..."
    
    &PORTRAIT_nour_noursmile
    
    NOUR: "I guess it's okay though, since we got Nick. Right?"
    
    &PORTRAIT_nick_nicksmallsmile
    
    NICK: "..."
    
    NOUR: <i>Looks like the Princess really helped him feel better.</i>
    
    &PORTRAIT_nour_nourpondering
    
    NOUR: <i>We should go find the rest of the apples...</i>

        -> END
    
// === beautystand_end ===

//     NOUR: <i>I think we've explored everything we could here. The princess is nowhere to be found.</i>
        
//         -> END