
(define (problem blocks_7)
(:domain blocks)
(:objects b1 b2 b3 b4 b5 b6 b7 - block)
(:init (on b1 b2) (on b2 b3) (on b3 b4) (on b4 b5) (on b5 b6) (on b6 b7) (clear b1) (ontable b7)  (emptyhand))
(:goal (and (ontable b1) (ontable b2) (ontable b3) (ontable b4) (ontable b5) (ontable b6) (ontable b7)))
)
