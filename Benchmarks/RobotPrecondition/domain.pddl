
(define (domain robot_coffee)
  (:requirements :strips :non-deterministic :typing)
 
  (:types office - room
	kitchen - room)
(:predicates (robotat ?x - room)
	     (coffeeat ?x - room)
	     (connected ?x - room ?y - room)
	     (hascoffee)
             )

(:action move_to
  :parameters
   (?x - room
    ?y - room)
  :precondition
   (and
   (robotat ?x) (connected ?x ?y))
  :effect
   (and
   (robotat ?y) (not (robotat ?x)))
)

(:action prepare_coffee
  :parameters
   (?x - kitchen)
  :precondition
   (and
   (robotat ?x) (not (hascoffee)))
  :effect
   (hascoffee)
)

(:action put_coffee
  :parameters
   (?x - office)
  :precondition
   (and
   (robotat ?x) (hascoffee))
  :effect
   (and (not (hascoffee))
   (oneof
    (and (coffeeat ?x))
    (and)
   ))
)


)
