(define (problem sp_n2) 
    (:domain sliding_puzzles)
    (:objects 
        c1 c2 c3
        
        p00 p01
        p10 p11

    )

    (:init
        (adj p00 p01)
        (adj p00 p10)
        (adj p01 p11)
        (adj p10 p11)
        (adj p01 p00)
        (adj p10 p00)
        (adj p11 p01)
        (adj p11 p10)

        (cell_in_pos c1 p11)
        (cell_in_pos c2 p10)
        (cell_in_pos c3 p00)
        (free_pos p01)
    )

    (:goal (and
        (cell_in_pos c1 p00)
        (cell_in_pos c2 p01)
        (cell_in_pos c3 p10)
        (free_pos p11)
      )
    )
)
