
(define (domain blocks)

  (:requirements :non-deterministic :negative-preconditions :equality :typing)
  
  (:types block)
  
  (:predicates (holdingone) (holdingtwo) (holding ?b - block) (emptyhand) (ontable ?b - block) (on ?b1 ?b2 - block) (clear ?b - block))
  
  (:action pick-up
    :parameters (?b1 ?b2 - block)
    :precondition (and (not (= ?b1 ?b2)) (emptyhand) (clear ?b1) (on ?b1 ?b2))
    :effect (and (clear ?b2) (not (on ?b1 ?b2))
             (oneof (and (holdingone) (holding ?b1) (not (emptyhand)) (not (clear ?b1)))
                    (ontable ?b1)))
  )
  
  (:action pick-up-from-table
    :parameters (?b - block)
    :precondition (and (emptyhand) (clear ?b) (ontable ?b))
    :effect (oneof (and) (and (holdingone) (holding ?b) (not (emptyhand)) (not (ontable ?b)) (not (clear ?b))))
  )
  
  (:action put-on-block
    :parameters (?b1 ?b2 - block)
    :precondition (and (not (= ?b1 ?b2)) (holdingone) (holding ?b1) (clear ?b2))
    :effect (and (emptyhand) (clear ?b1) (not (holdingone)) (not (holding ?b1))
             (oneof (and (on ?b1 ?b2) (not (clear ?b2)))
                    (ontable ?b1)))
  )
  
  (:action put-down
    :parameters (?b - block)
    :precondition (and (holdingone) (holding ?b))
    :effect (and (ontable ?b) (emptyhand) (clear ?b) (not (holdingone)) (not (holding ?b)))
  )
  
  (:action pick-tower
    :parameters (?b1 ?b2 ?b3 - block)
    :precondition (and (emptyhand) (on ?b1 ?b2) (on ?b2 ?b3) (clear ?b1))
    :effect
      (oneof (and) (and (holdingtwo) (holding ?b2) (clear ?b3) (not (emptyhand)) (not (on ?b2 ?b3)) (not (clear ?b1))))
  )
  
  (:action put-tower-on-block
    :parameters (?b1 ?b2 ?b3 - block)
    :precondition (and (holdingtwo) (holding ?b2) (on ?b1 ?b2) (clear ?b3))
    :effect (and (emptyhand) (not (holdingtwo)) (not (holding ?b2)) (clear ?b1)
             (oneof (and (on ?b2 ?b3) (not (clear ?b3)))
                    (and (ontable ?b1) (ontable ?b2) (clear ?b2) (not (on ?b1 ?b2)))))
  )
  
  (:action put-tower-down
    :parameters (?b1 ?b2 - block)
    :precondition (and (holdingtwo) (holding ?b2) (on ?b1 ?b2))
    :effect (and (ontable ?b2) (emptyhand) (not (holdingtwo)) (not (holding ?b2)) (clear ?b1))
  )
)
