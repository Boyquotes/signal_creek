== beautystand ==
    
    It's a Beauty Booth used for makeovers.
    
    A feminine apple stares into the souls of those who gaze back at her. 

    {
        - beautystand_find_pinklady:
            -> beautystand_end
            
        - consoles_start_aplequest:
            -> beautystand_find_pinklady
            
        - beautystand_before_aplequest:
            -> beautystand_before_aplequest_repeat
            
        - else:
            -> beautystand_before_aplequest 
    }
    
== beautystand_before_aplequest ==
    
    NOUR: "Anybody care for a makeover?"
    
    &PORTRAIT_nick_nickworried
    
    NICK: "Sounds like money I could use somewhere else."
    
    NICK: "Like, towards a new game or something..."
    
    MS. SUWAN: "I will also pass."

    MS. SUWAN: "Besides, who knows how old that makeup could be?"

    NOUR: "That's a good point."
        -> END

== beautystand_before_aplequest_repeat ==

    NOUR: <i>We've already looked at the beauty booth before.</i>

    &PORTRAIT_nour_noursmile

    NOUR: <i>But seeing that apple lady (?) somehow makes me feel better.</i>
     -> END

== beautystand_find_pinklady ==
    NOUR: "..."
    
    MS. SUWAN: "Are we here because there's literally an apple on the booth—"
    
    NOUR: "Sometimes the least obvious answers are the most obvious ones..."

    MS. SUWAN: "There's no apple here."
    
    NOUR: "Maybe we have to do something to get it out of the booth."
    
    NOUR: "The apple could be... shy?"
    
    MS. SUWAN: "..."
    
    NOUR: "Um. What do you think, Nick?"
    
    &PORTRAIT_nick_nicknervous
    
    Nick remains silent, but his eyebrows are furrowed in concentration.
    
    NOUR: "We could try..."
    
        * "Talking to the apple."
            -> talktoapple
        
        * "Staring back at the apple."
            -> stareatapple
        
        * "Giving the apple a makeover."
            -> giveapplemakeover

== talktoapple ==
    
    NICK: Nick laughs, then quickly clamps his hand over his mouth.
    
    // ANIMATION FOR NICK'S HANDS OVER MOUTH
            
    NOUR: <i>I have no idea if this will work, but at least Nick seems to be enjoying himself.</i>
            
    NOUR: "Maybe it needs some encouragement. I can go first?"
    
    // NOUR APPROACHES THE BOOTH
            
    NOUR: "Hi, um..."
            
        * "Nice weather we're having?"
        
        * "You look really nice today?"
        
        * "How are you feeling today?"
            
    - NOUR: "Now you go, Ms. Suwan."
                
    MS. SUWAN: "..."
    
    // MS. SUWAN APPROACHES THE BOOTH
                
    MS. SUWAN: "Hello."
                
    NOUR: "That's it?!"
                
    NOUR: "C'mon, Nick. Anybody could beat Ms. Suwan. Now's your chance!"
                
    MS. SUWAN: "Excuse me—"
    
    // NICK APPROACHES THE BOOTH
                
    NICK: "Emperor Evercrisp has sent us."
    
    &PORTRAIT_nour_noursmile
                
    NOUR: "True! Good work, Nick!"
                
    MS. SUWAN: "We are talking to a <i>wall</i>."
                
    MS. SUWAN: "Have we all finally gone insane?"
    
    -> pinkladyreveal
    
== stareatapple ==
            
    Nick laughs, then quickly clamps his hand over his mouth.
    
    // ANIMATION FOR NICK'S HANDS OVER MOUTH
            
    NOUR: <i>I have no idea if this will work, but at least Nick seems to be enjoying himself.</i>
            
    NOUR: "I mean, if this apple on the booth is the apple we need to find, maybe we should beat it in a staring contest?"
            
    MS. SUWAN: "What? That's a poster for crying out loud."
            
    NOUR: "This place is plenty weird."
    
    NOUR: "Maybe finding the other weird thing requires a weird tactic!"
            
    MS. SUWAN: "I will not do that."
            
    NOUR: "Fine. Nick, you need to help me stare at the apple."
            
    NOUR: "We need all the manpower we got since <i>someone</i> won't join."
            
    NICK: Nick raises his eyebrow at the suggestion.
    
    NICK: He moves closer to the apple on the booth.
    
    // NICK MOVES TOWARDS THE BOOTH, FACING IT
    // NOUR FOLLOWS AND THEN STANDS NEXT TO HIM, FACING THE BOOTH
            
    NOUR: "..."
            
    NICK: "..."
            
        * [Keep staring]
            NOUR: "..."
                    
            NICK: "..."
                    
            MS. SUWAN: "Are you two seriously doing this?"
                    
                ** [Stare HARDER]
                    NOUR: "..."
                        
                    NICK: "..."
                        
                    MS. SUWAN: "Don't hurt yourselves, please."
                        
                        *** [STARE LIKE YOUR LIFE DEPENDS ON IT]
                            
                            NOUR: "..."
                            
                            NICK: "..."
                            
                            // MS. SUWAN APPROACHES TO STAND IN FRONT OF THE BOOTH.
                            
                            MS. SUWAN: "..."
                            
                            -> pinkladyreveal
                            
=== giveapplemakeover ===
            
    Nick laughs, then quickly clamps his hand over his mouth.
    
    // ANIMATION FOR NICK'S HANDS OVER MOUTH
            
    NOUR: <i>I have no idea if this will work, but at least Nick seems to be enjoying himself.</i>
            
    NOUR: "Maybe this apple on the booth is the apple we need to find."
    
    NOUR: "But maybe it won't come out unless it's really dolled-up."
            
    NOUR: "This <i>is</i> a beauty booth, after all."
            
    MS. SUWAN: "What? This is a poster for crying out loud."
            
    NOUR: "This place is plenty weird."
    
    NOUR: "Maybe finding the other weird thing requires a weird tactic!"

    NOUR: "We are also literally dealing with talking, sentient fruit."
            
    MS. SUWAN: "..."
            
    MS. SUWAN: "Knock yourselves out, then."
            
    NOUR: "Looks like there's some makeup in this booth. I'll grab some."
            
    NOUR: "Nick, could you help me give this apple a makeover?"
            
    Nick shrugs.
    
    // NICK SHRUGGING ANIMATION
            
    NOUR: <i>What should I give him?</i>
    
    // NOUR GIVING HIM ITEMS ANIMATIONS
            
        * "Use this red lipstick."
                    
        * "Use this black eyeliner."
                    
        * "Use this pink blush."
            
    - Nick stares at it and then grabs it. He starts to use it on the poster.
    
    // NICK GRABBING ANIMATION, THEN TURNS TO USE IT ON THE POSTER
                
    NOUR: "Nice! I'll help you out too..."
    
    // NOUR JOINS IN USING THE MAKEUP ON THE POSTER
                
    MS. SUWAN: "I don't see how this is going to help anything—"
    
    -> pinkladyreveal

=== pinkladyreveal ===

    - &PORTRAIT_???_pinkladysmile
    
    ???: "Hee hee!"

    &PORTRAIT_nour_nourrealization
    
    NOUR: "Did you hear that?"
    
    MS. SUWAN: "Where did it come from?"
    
    &PORTRAIT_nick_nickshocked
    
    NICK: "...!"
    
    ???: "You three are so silly, hee hee!"
    
    &SHLORP_POOP_PrincessPinkLady_in
    
    ???: "I wasn't planning on showing myself to you all, but I couldn't help myself!"
    
    ???: "You remind me of my beloved prince. He was also a silly, goofy guy!"
    
    ???: "I can tell you mean no harm. I don't think you <i>could</i> harm me, even if you tried!"
    
    MS. SUWAN: "Are you telling me that <i>seriously</i> worked?" //shocked
    
    ???: "Oh, ye of little faith!"
    
    
    ???: "If you look down on different kinds of problem-solving, serious <i>or</i> not, you lock more doors than you open!"
    
    NOUR: "We've been searching for missing apples on behalf of the Emperor."
    
    NOUR: "Including the prince."
    
    ???: "Well! Found me— <i>PRINCESS PINK LADY</i>— you have, hee hee!"
    
    PRINCESS PINK LADY: "Have you found my Prince, dear bipeds?"
    
    NOUR: "Not yet, but we know he's here somewhere."

    PRINCESS PINK LADY: "Oh, he must still be sulking over his father sending him down here."
    
    &PORTRAIT_princess pink lady_pinkladysad
    
    PRINCESS PINK LADY: "He took it quite to heart and must be hiding. How much his confidence must've suffered!"
    
    PRINCESS PINK LADY: "When you find him, please tell him that he is smarter and better than he thinks he is, hee hee!"
    
    &PORTRAIT_nour_noursmile
    
    NOUR: "Will do, Princess."
    
    PRINCESS PINK LADY: "Before I depart, let me tell you something that might come in handy..."
     
    PRINCESS PINK LADY: "[insert epic lore drop here]"
    
    PRINCESS PINK LADY: "I must be on my way. Will you send me back now?"
    
    NOUR: "Yes. Thank you for your help, though I don't know if I fully understood it..."
    
    PRINCESS PINK LADY: "If you don't, you could ask that young Dream Walker in the yellow!"
    
    NICK: "...?"
    
    PRINCESS PINK LADY: "He <i>definitely</i> understood what I just said. I have a keen eye, hee hee!"
    
    PRINCESS PINK LADY: "Now, I bid you all adieu–send my love to the apple of my eye, the Prince!"
    
    &SHLORP_POOP_PrincessPinkLady_out
    
    MS. SUWAN: "Perhaps I shouldn't have been so hasty to look down on your rather...unconventional tactics."

    NICK: Nick looks at Ms. Suwan in surprise. 

    NOUR: "Do you think you could do a re-cap of everything she just said, Nick?"
    
    NOUR: "I didn't understand <i>anything</i>..."
    
    &PORTRAIT_nick_nickbigsmile
    
    NICK: Nick shrugs, though he can't hide the small smile on his face, swelling with pride.
    
    NOUR: <i>Looks like the Princess really helped him feel better.</i>
    
    NOUR: <i>We should go find the rest of the apples...</i>

        -> END
    
=== beautystand_end ===

    NOUR: <i>I think we've explored everything we could here. The princess is nowhere to be found.</i>
        
        -> END