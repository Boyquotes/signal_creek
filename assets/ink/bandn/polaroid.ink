== polaroid ==
    //convo after the first time PCs see Rina
    //I think I'm doing this wrong but I'm essentially trying to get this to only play once, then for the polaroidReturned to play everytime after this is played the first time
    poop
//    {once: 
    NARRATOR: A Polaroid One Step camera sits inside a glass case. It's surrounded by a bunch of film photographs of two girls. 
        
        NARRATOR: One of them sits on the floor outside of the case. Nour looks down at it and immediately scowls.
        
        NOUR: ...No way. 
        
        NICK: Hm?
        
        NOUR: I think that's my dad's old camera. Well, my camera, technically.
        
        NICK? Ooh, really?! That's so cool!! Retro stuff is super trendy now, y'know. Did you use it a lot?
        
        NOUR: Yeah, kind of. It's... it's whatever, let's go somewhere else.
        
        NARRATOR: Nour tries to kick the photo away, but Ms. Suwan stops it with her foot. She picks it up and examines it, then looks at Nour with an eyebrow raised.
        
        SUWAN: This is you, isn't it? Who's what you're with?
        
        ...
        * [NOUR: I said let's go somewhere else, I don't want to talk about it.] -> refuseToTalk
        * [NOUR: ...An old friend.] -> deflect
     
        
        === refuseToTalk ===
        SUWAN: ...Hm. If you say so.
        
        NARRATOR: Ms. Suwan picks up the photograph and places it on top of the glass case.
        
        SUWAN: We'll come back to this later. But you're going to have to face up to what happened.
        
        NOUR: Hmph. I don't see why when I didn't do anything wrong, but whatever. Let's go.
        
        NARRATOR: Nick leans in and whispers to Ms. Suwan.
        
        NICK: I think she did something she's not happy about.
        
        SUWAN: Yes, well. We've all done things that might have been in poor judgement. But for now, let's keep looking around until she's ready to talk about it.
        
        NOUR: I can <i>hear</i> you, y'know.
        
        NICK: Psh, no you can't!
        
            //TRIGGERS B&N RINA HERE 
        
        -> END
        
        === deflect ===
        NOUR: She's an old friend. I... cared about her, a lot. But we don't talk anymore. It doesn't matter.
        
        NICK: It does though! How did you meet her? Did you know her for a long time? What's her name?
        
        NOUR: I'm answering none of those, and you're going to stop asking questions.
        
        NICK: Aww, but I wanna know! Why don't you wanna talk about her?
        
        NOUR: What did I <i>just</i> say?
        
        SUWAN: Children, peace.
        
        NOUR: I am not a child.
        
        NICK: Neither am I.
        
        NOUR: Yeah, right.
        
        SUWAN: <i>Children.<i/> Hush. Nick, stop asking Nour questions if she really doesn't want to talk about it.
        
        NICK: Psh, boooooring.
        
        SUWAN: And Nour, we'll come back to this later. Whatever happened, you're going to have to face up to it at some point.
        
        NOUR: I don't see why. Let's just go.
        
            //TRIGGERS B&N RINA HERE 
    
        -> END
  //  }
    
    //During Nour's route -- before the end -- whenever the polaroid is clicked on
    
== polaroidReturned ==
    
    NOUR: Look, I said I don't want to look at this right now.
    
    SUWAN: Fine, we'll come back later then.

    -> END
