;Sliding puzzles

(define (domain sliding_puzzles)
    (:predicates
        (cell_in_pos ?cell ?pos)
        (free_pos ?pos)
        (adj ?pos1 ?pos2)
    )
    (:action move
        :parameters (?cell ?from ?where)
        :precondition (and
            (cell_in_pos ?cell ?from)
            (free_pos ?where)
            (adj ?from ?where)
        )
        :effect (and 
            (free_pos ?from)
            (not (cell_in_pos ?cell ?from))
            (not (free_pos ?where))
            (cell_in_pos ?cell ?where)
        )
    )
    
)
