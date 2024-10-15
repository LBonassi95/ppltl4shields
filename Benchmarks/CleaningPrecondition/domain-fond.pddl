;Header and description

(define (domain cleaning)

;remove requirements that are not needed
(:requirements :adl :typing :non-deterministic)


(:types 
    coordinate - object
    room - object
    level - object
)

(:constants c11 - coordinate
            l1 l2 l3 l4 - level)

(:predicates 
    (pos ?r - room ?c - coordinate)
    (charge ?l - level)
    (adjacent ?c1 - coordinate ?c2 - coordinate)
    (outside)
    (dirty ?r - room ?c - coordinate)
    (cleaned ?r - room ?c - coordinate)
    (charging-station ?r - room ?c - coordinate)
)



(:action move
    :parameters (?r - room ?c1 - coordinate ?c2 - coordinate)
    :precondition (and (pos ?r ?c1) (adjacent ?c1 ?c2))
    :effect (and (not (pos ?r ?c1)) (pos ?r ?c2))
)

(:action enter-room
    :parameters (?r - room)
    :precondition (and (outside))
    :effect (and (not (outside)) (pos ?r c11))
)

(:action leave-room
    :parameters (?r - room)
    :precondition (and (pos ?r c11))
    :effect (and (not (pos ?r c11)) (outside))
)

(:action clean-l4
    :parameters (?r - room ?c - coordinate)
    :precondition (and (pos ?r ?c) (dirty ?r ?c) (charge l4))
    :effect (and (oneof 
                    (and (not (dirty ?r ?c)) (cleaned ?r ?c))
                    (and )
                 )
                 (not (charge l4)) (charge l3)
            )
)

(:action clean-l3
    :parameters (?r - room ?c - coordinate)
    :precondition (and (pos ?r ?c) (dirty ?r ?c) (charge l3))
    :effect (and (oneof 
                    (and (not (dirty ?r ?c)) (cleaned ?r ?c))
                    (and )
                 )
                 (not (charge l3)) (charge l2)
            )
)

(:action clean-l2
    :parameters (?r - room ?c - coordinate)
    :precondition (and (pos ?r ?c) (dirty ?r ?c) (charge l2))
    :effect (and (oneof 
                    (and (not (dirty ?r ?c)) (cleaned ?r ?c))
                    (and )
                 )
                 (not (charge l2)) (charge l1)
            )
)

(:action recharge
    :parameters (?r - room ?c - coordinate)
    :precondition (and (pos ?r ?c) (charging-station ?r ?c))
    :effect (and (not (charge l1)) (not (charge l2)) (not (charge l3)) (charge l4))
)



)