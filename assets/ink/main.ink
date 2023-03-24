VAR currentPartyChar = "nick"
VAR currentWorld = "dream"

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

INCLUDE betaintro.ink
INCLUDE hallway/static_hallway.ink
INCLUDE topicspot/static_topicspot.ink
INCLUDE bandn/static_bandn.ink
INCLUDE topicspot/jewelrystand.ink



== abstract ==

    Hello. This is an Abstract Object. Thank you for coming.

    -> END
    
== missing_path ==

    This object's name does not match any path in the master ink. Please disable the object's ActiveArea or create a knot with the object's name.
    
    -> END
    
== first_light ==

    &FIRSTLIGHT
    
    &BLACK
    
    ...
    
    &FDEIN
    
    &EMOTE_NICK_UpIdle
    
    &EMOTE_SUWAN_UpIdle
    
    &EMOTE_NOUR_UpIdle
    
    NICK: "Oh shit bro did that light turn on?"
    
    NOUR: "What does it mean man..."
    
    MS. SUWAN: "This is deep, not everyone will understand."
    
    -> END
    
== light_on ==

    {
        -!first_light:
            -> first_light
    }
    
    Another light turned on bro.
    
    -> END