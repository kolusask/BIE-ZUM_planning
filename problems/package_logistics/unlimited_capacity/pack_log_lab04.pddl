(define (problem pack_log_lab04) 
    (:domain package_logistics)
    (:requirements :strips :negative-preconditions :disjunctive-preconditions)
    (:objects 
        c1 c2 c3 c4 c5 c6
        A B C D E
    )

    (:init
        (adj c1 c2)
        (adj c1 c4)
        (adj c1 c3)
        (adj c2 c3)
        (adj c3 c4)
        (adj c3 c5)
        (adj c3 c6)
        (adj c5 c6)

        (adj c2 c1)
        (adj c4 c1)
        (adj c3 c1)
        (adj c3 c2)
        (adj c4 c3)
        (adj c5 c3)
        (adj c6 c3)
        (adj c6 c5)

        (pack_in A c1)
        (pack_in B c2)
        (pack_in C c3)
        (pack_in D c4)
        (pack_in E c5)
        (truck_in c1)
    )

    (:goal (and
        (pack_in A c5)
        (pack_in B c6)
        (pack_in C c2)
        (pack_in D c1)
        (pack_in E c2)
        (truck_in c1)
      )
    )

    ;un-comment the following line if metric is needed
    ;(:metric minimize (???))
    )
