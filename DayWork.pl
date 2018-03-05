day_mood(nice,summer,beach).
day_mood(nice,winter,canal_boatingresort).
day_mood(not_nice,winter,class).
day_mood(not_nice,summer,work).

day_is(cloudy,warm).
day_status(warm,not_raining).
day_season(not_raining,summer,swim).


go_place_do(beach,swim).
go_place_do(canal_boatingresort,boat_riding).
go_place_do(class).
go_place_do(work).

have(swim,fun).
have(boat_riding,fun).
have(class,learn_something).
have(work,make_money).

day_info(Day_mood,Day_season):-

    write('###############################################################'),nl,
    write('##                                                           ##'),nl,
    write('##                      Day work Generator                   ##'),nl,
    write('##                                                           ##'),nl,
    write('###############################################################'),nl,nl,
    write('day mood '),write(Day_mood),nl,
    write('Season '),write(Day_season),nl,nl,

    day_mood(Day_mood,Day_season,Place),
    go_place_do(Place,Do),
    have(Do,Get),
    write('If is is a '),write(Day_mood),write(' and it is '),write(Day_season),write(' then i go to the '),write(Place),nl,
    write('If i go to the '),write(Place),write(',then i '),write(Do),nl,
    write('If i '),write(Do),write(',then i have '),write(Get);
    day_mood(Day_mood,Day_season,Place),
    go_place_do(Place),
    have(Place,Get),
    write('If is is a '),write(Day_mood),write(' and it is '),write(Day_season),write(' then i go to the '),write(Place),nl,
    write('If i go to '),write(Place),write(', then i '),write(Get).



on_day:-
    write('Enter today tempeature '),
    read(Tempeature),
    write('Enter today wether '),
    read(Wether),
    day_is(Tempeature,Wether),
    day_status(Wether,Status),
    day_season(Status,Season,Action),nl,
    write('if it is '),write(Tempeature),write(' and it is '),write(Wether),write(' and it is '),write(Status),write(' and it is '),write(Season),write(' then I '),write(Action).

