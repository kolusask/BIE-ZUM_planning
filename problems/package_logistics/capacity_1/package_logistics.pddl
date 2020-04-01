;Package logistics

(define (domain package_logistics)
    (:requirements :strips :negative-preconditions :disjunctive-preconditions)
    (:predicates
        (adj ?c1 ?c2)
        (truck_in ?c)
        (pack_in ?p ?c)
        (loaded ?p)
    )
    (:action move
        :parameters (?from ?where)
        :precondition (and 
            (truck_in ?from)
            (adj ?from ?where)
        )
        :effect (and
            (truck_in ?where)
            (not (truck_in ?from))
        )
    )
    (:action load
        :parameters (?pack ?city)
        :precondition (and
            (not (loaded ?pack))
            (pack_in ?pack ?city)
            (truck_in ?city)
        )
        :effect (and 
            (loaded ?pack)
            (not (pack_in ?pack ?city))
        )
    )
    (:action unload
        :parameters (?pack ?city)
        :precondition (and
            (loaded ?pack)
            (truck_in ?city)
        )
        :effect (and 
            (not (loaded ?pack))
            (pack_in ?pack ?city)
        )
    )
    
)