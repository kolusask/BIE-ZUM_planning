(define (problem sp_n3) 
    (:domain sliding_puzzles)
    (:objects 
        c1 c2 c3 c4 c5 c6 c7 c8
        
        p00 p01 p02
        p10 p11 p12
        p20 p21 p22

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
        (adj p01 p02)
        (adj p11 p12)
        (adj p10 p20)
        (adj p11 p21)
        (adj p02 p12)
        (adj p12 p22)
        (adj p20 p21)
        (adj p21 p22)
        (adj p02 p01)
        (adj p12 p11)
        (adj p20 p10)
        (adj p21 p11)
        (adj p12 p02)
        (adj p22 p12)
        (adj p21 p20)
        (adj p22 p21)

        (cell_in_pos c8 p00)
        (cell_in_pos c2 p01)
        (cell_in_pos c7 p02)
        (cell_in_pos c5 p10)
        (cell_in_pos c1 p11)
        (cell_in_pos c3 p12)
        (cell_in_pos c4 p20)
        (cell_in_pos c6 p21)
        
        (free_pos p22)
    )

    (:goal (and
        (cell_in_pos c1 p00)
        (cell_in_pos c2 p01)
        (cell_in_pos c3 p02)
        (cell_in_pos c4 p10)
        (cell_in_pos c5 p11)
        (cell_in_pos c6 p12)
        (cell_in_pos c7 p20)
        (cell_in_pos c8 p21)
        
        (free_pos p22)
      )
    )
)
