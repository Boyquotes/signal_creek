INCLUDE bandn/bookstack.ink
INCLUDE topicspot/makeup.ink
INCLUDE topicspot/manager.ink
INCLUDE hallway/pretzelstand.ink
INCLUDE hallway/partyposter.ink
INCLUDE hallway/cafetables.ink
//---------------- DREAM WORLD ----------------

== rina_dream ==
// rina will be divided up differently than most other objects, into 'interactions' instead of dreamvisited/realvisited (first interaction, second, third, etc.)

// and then we add as many ===interaction=== parts as we need for the future based on other objects that the player interacts with! 

+   { pretzelstand_real } -> pretzelconvo

+   -> rinanormal

=pretzelconvo

    NOUR: piss

    -> END

=rinanormal

    DREAM WORLD, TEXT HERE

    -> END


== rina_realvisited ==

+   -> rina_dream

-> END

//SUBSEQUENT DREAM KNOTS HERE


//---------------- REAL WORLD ----------------

== rina_real ==

+   -> rina_dream

== rina_dreamvisited ==

+   -> rina_dream

//She's not in the real world, if these redirects are needed, there's an error
