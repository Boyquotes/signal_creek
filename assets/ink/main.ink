VAR currentPartyChar = "nick"
VAR currentWorld = "dream"
VAR firstLightCharacter = "Nick"
VAR firstLightPronoun = "he's"

INCLUDE bandn/static_bandn.ink
INCLUDE bandn/bookstack.ink
INCLUDE bandn/dragonplush.ink
INCLUDE bandn/hotwheels.ink
INCLUDE bandn/rina.ink
INCLUDE bandn/oldnovel.ink
INCLUDE bandn/pens.ink
INCLUDE bandn/polaroid.ink
INCLUDE bandn/priceofsalt.ink
INCLUDE bandn/bookshelf.ink
INCLUDE bandn/musicstand.ink
INCLUDE bandn/aplequestguide.ink
INCLUDE bandn/skeletondisplay.ink

INCLUDE hallway/static_hallway.ink
INCLUDE hallway/bobatea.ink
INCLUDE hallway/cafetables.ink
INCLUDE hallway/litter.ink
INCLUDE hallway/chadbrodykristy.ink
INCLUDE hallway/olddoll.ink
INCLUDE hallway/partyposter.ink
INCLUDE hallway/pretzelstand.ink
INCLUDE hallway/victorias.ink
INCLUDE hallway/womensclothing.ink
INCLUDE hallway/vapestand.ink
INCLUDE hallway/beautystand.ink
INCLUDE hallway/weirdtree.ink
INCLUDE hallway/fountain.ink
INCLUDE hallway/timbertims.ink
INCLUDE hallway/wertoys.ink

INCLUDE topicspot/static_topicspot.ink
INCLUDE topicspot/consoles.ink
INCLUDE topicspot/coolshirt.ink
INCLUDE topicspot/graphictees.ink
INCLUDE topicspot/makeup.ink
INCLUDE topicspot/manager.ink
INCLUDE topicspot/phonecases.ink
INCLUDE topicspot/pinbuttons.ink
INCLUDE topicspot/sailormoonposters.ink
INCLUDE topicspot/wallofvideogames.ink
INCLUDE topicspot/spraycans.ink
INCLUDE topicspot/jewelrystand.ink

INCLUDE betaintro.ink
INCLUDE bandn/comicstand.ink
INCLUDE bandn/computerdesk.ink




== abstract ==

    Hello. This is an Abstract Object. Thank you for coming.

    -> END
    
== missing_path ==

    This object's name does not match any path in the master ink. Please disable the object's ActiveArea or create a knot with the object's name.
    
    -> END
    
== first_light ==

    NOUR: "...What was that noise?"
    
    MS. SUWAN: "It sounded like... an elevator chime."
    
    NICK: "Quick! Let's go back to the elevator and check it out!"
    
    &FDEOUT
    &FIRSTLIGHT
    &PAUSE_1.0
    
    &EMOTE_NICK_UpIdle
    
    &EMOTE_SUWAN_UpIdle
    
    &EMOTE_NOUR_UpIdle
    
    NICK: "Woah, look at that! One of the weird lights turned back on!"
    
    MS. SUWAN: "This is becoming stranger and stranger. What made it light up in the first place?"
    
    NICK: "I dunno, but we must've done <i>something</i> to make the elevator work again."
    
    NICK: "Was it that weird girl we saw earlier?"
    
    NOUR: <i>It couldn't have been Rina. I don't see her.</i>
    
    NICK: "WAIT..."
    
    NICK: "The mall must be LISTENING. It knows what we're doing!"
    
    MS. SUWAN: "Again with the weird magical conclusions."
    
    MS. SUWAN: "This place is strange, but I happen to doubt it achieved <i>sentience.</i>"
    
    NICK: "But think about it, that would be so cool! The mall is our friend!"
    
    NOUR: "Well, whatever's happened, we must've done something right."
    
    NOUR: <i>Rina said we trapped ourselves in our pasts...</i>
    
    NOUR: <i>...and it's up to us to move on.</i>
    
    &PORTRAIT_nour_nourrealization
    
    NOUR: <i>When we were talking earlier, did {firstLightCharacter} reveal something {firstLightPronoun} hung up on?</i>
    
    &PORTRAIT_nour_nourneutral
    
    NOUR: "We should keep an eye on this elevator and the lights as we keep exploring."
    
    -> END
    
== light_on ==

    An elevator <i>ding</i> is heard from the hallway.

    {
        -!first_light:
            -> first_light
    }
    
    Sounds like another elevator light turned on.
    
    -> END
    
    
== explored_everything

    NOUR: <i>I think we've explored everything we could here.</i>
    
    -> END