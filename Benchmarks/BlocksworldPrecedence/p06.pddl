
(define (problem blocks_13)
(:domain blocks)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 - block)
(:init (on b1 b2) (on b2 b3) (on b3 b4) (on b4 b5) (on b5 b6) (on b6 b7) (on b7 b8) (on b8 b9) (on b9 b10) (on b10 b11) (on b11 b12) (on b12 b13) (clear b1) (ontable b13)  (emptyhand))
(:goal (and (ontable b1) (ontable b2) (ontable b3) (ontable b4) (ontable b5) (ontable b6) (ontable b7) (ontable b8) (ontable b9) (ontable b10) (ontable b11) (ontable b12) (ontable b13)))
)
