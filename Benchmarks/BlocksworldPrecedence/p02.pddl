
(define (problem blocks_5)
(:domain blocks)
(:objects b1 b2 b3 b4 b5 - block)
(:init (on b1 b2) (on b2 b3) (on b3 b4) (on b4 b5) (clear b1) (ontable b5)  (emptyhand))
(:goal (and (ontable b1) (ontable b2) (ontable b3) (ontable b4) (ontable b5)))
)
