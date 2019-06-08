% Ayn� yolda yan yana be� farkl� ev bulunmaktad�r. (1)
% Her ev farkl� renktedir.
% Her evde farkl� milletten bir insan ya�ar.
% Her insan farkl� i�ecek t�ketir.
% Her insan farkl� marka sigara t�ketir.
% Her insan farkl� evcil hayvan besler.
% 
% �ngiliz, k�rm�z� evde ya�ar. (2)
% �sve�li, k�pek besler. (3)
% Danimarkal�, �ay i�er. (4)
% Ye�il ev, beyaz evin solundad�r. (5)
% Ye�il evin sahibi, kahve i�er. (6)
% Pall Mall marka sigara i�en, ku� besler. (7)
% Sar� evin sahibi, Dunhills sigara i�er. (8)
% Ortadaki evde ya�ayan, s�t i�er. (9)
% Norve�li, ilk evde ya�ar. (10)
% Blend sigara i�enin kom�usu, kedi besler. (11)
% Blue Masters sigara i�en, bira i�er. (12)
% At besleyen ki�i, Dunhills marka sigara i�en ki�iyle kom�udur. (13)
% Alman, Prince marka sigara i�er. (14).
% Norve�li, mavi evin kom�usudur. (15).
% Blend marka sigara i�enin kom�usu, su i�er. (16)
% Kim bal�k besler ? (17)
% 
% Sonu�, tablo �eklinde g�z�kecek. (18)
% 
% Solda olma durumu incelenir. (19)
% Sa�da olma durumu incelenir. (20)
% Kom�u olma durumu incelenir. (21)


find(Houses):-
    % 1
    length(Houses, 5),
    
    %2
    member(house(k�rm�z�,ingiliz,_,_,_),Houses),
    
    %3
    member(house(_,isve�li,_,_,k�pek),Houses),
    
    %4
    member(house(_,danimarkal�,�ay,_,_),Houses),
        
    %5
    left(house(ye�il,_,_,_,_),house(beyaz,_,_,_,_),Houses),
    
    %6
    member(house(ye�il,_,kahve,_,_),Houses),
        
    %7
    member(house(_,_,_,pallMall,ku�),Houses),

    %8
    member(house(sar�,_,_,dunhills,_),Houses),

    %9
    Houses = [_,_,house(_,_,s�t,_,_),_,_],

    %10
    Houses = [house(_,norve�li,_,_,_),_,_,_,_],
        
    %11
    neighbor(house(_,_,_,blend,_),house(_,_,_,_,kedi),Houses),

    %12
    member(house(_,_,bira,blueMasters,_),Houses),
        
    %13
    neighbor(house(_,_,_,_,at),house(_,_,_,dunhills,_),Houses),
    
    %14
    member(house(_,alman,_,prince,_),Houses),
        
    %15
    neighbor(house(_,norve�li,_,_,_),house(mavi,_,_,_,_),Houses),
        
    %16
    neighbor(house(_,_,_,blend,_),house(_,_,su,_,_),Houses),
    
    %17
    member(house(_,_,_,_,bal�k),Houses),!.


%18
:- use_rendering(table,
		 [header(house('Renk', 'Memleket', '��ecek', 'Sigara', 'Hayvan'))]).

%19
left(A, B, Ls) :- append(_, [A,B|_], Ls).

%20
right(A, B, Ls) :- append(_, [B,A|_], Ls).

%21
neighbor(A, B, Ls) :- left(A, B, Ls).
neighbor(A, B, Ls) :- right(A, B, Ls).

    
    
    
    