
(define (problem blocks_3)
(:domain blocks)
(:objects b1 b2 b3 - block)
(:init (on b1 b2) (on b2 b3) (clear b1) (ontable b3)  (emptyhand))
(:goal (and (ontable b1) (ontable b2) (ontable b3)))
)
