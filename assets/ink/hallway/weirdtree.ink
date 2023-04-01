=== weirdtree ===

    It's a tree. 
    
    A really, really weird tree. 
    
    {
        - weirdtree2:
            -> weirdtree_end
        - consoles3:
            -> weirdtree2
        - weirdtree1:
            -> weirdtree1_repeat
        - else:
            -> weirdtree1
    }
    
== weirdtree_end ==

-> END

== weirdtree2 ==

-> END

== weirdtree1_repeat ==

-> END

== weirdtree1 ==

-> END