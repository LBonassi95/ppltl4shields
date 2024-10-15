(define (problem clean_test) (:domain cleaning)
(:objects
    ; c11 is a constant
    c12 c13 c21 c22 c23 c31 c32 c33 - coordinate
    r1 r2 - room
)

(:init
    (adjacent c11 c12) (adjacent c12 c13) (adjacent c12 c11) (adjacent c13 c12)
    (adjacent c21 c22) (adjacent c22 c23) (adjacent c22 c21) (adjacent c23 c22)
    (adjacent c31 c32) (adjacent c32 c33) (adjacent c32 c31) (adjacent c33 c32)

    (adjacent c11 c21) (adjacent c21 c31) (adjacent c21 c11) (adjacent c31 c21) 
    (adjacent c12 c22) (adjacent c22 c32) (adjacent c22 c12) (adjacent c32 c22) 
    (adjacent c13 c23) (adjacent c23 c33) (adjacent c23 c13) (adjacent c33 c23) 

    (dirty r1 c33)
    (dirty r1 c21)
    (dirty r2 c31)
    (dirty r2 c12)

    (charging-station r1 c22)
    (charging-station r2 c22)

    (charge l4)

    (outside)

)

(:goal (and
    (cleaned r1 c33)
    (cleaned r1 c21) 
    (cleaned r2 c31) 
    (cleaned r2 c12) (outside)
))

)
