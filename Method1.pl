% Ayný yolda yan yana beþ farklý ev bulunmaktadýr. (1)
% Her ev farklý renktedir.
% Her evde farklý milletten bir insan yaþar.
% Her insan farklý içecek tüketir.
% Her insan farklý marka sigara tüketir.
% Her insan farklý evcil hayvan besler.
% 
% Ýngiliz, kýrmýzý evde yaþar. (2)
% Ýsveçli, köpek besler. (3)
% Danimarkalý, çay içer. (4)
% Yeþil ev, beyaz evin solundadýr. (5)
% Yeþil evin sahibi, kahve içer. (6)
% Pall Mall marka sigara içen, kuþ besler. (7)
% Sarý evin sahibi, Dunhills sigara içer. (8)
% Ortadaki evde yaþayan, süt içer. (9)
% Norveçli, ilk evde yaþar. (10)
% Blend sigara içenin komþusu, kedi besler. (11)
% Blue Masters sigara içen, bira içer. (12)
% At besleyen kiþi, Dunhills marka sigara içen kiþiyle komþudur. (13)
% Alman, Prince marka sigara içer. (14).
% Norveçli, mavi evin komþusudur. (15).
% Blend marka sigara içenin komþusu, su içer. (16)
% Kim balýk besler ? (17)
% 
% Sonuç, tablo þeklinde gözükecek. (18)
% 
% Solda olma durumu incelenir. (19)
% Saðda olma durumu incelenir. (20)
% Komþu olma durumu incelenir. (21)


find(Houses):-
    % 1
    length(Houses, 5),
    
    %2
    member(house(kýrmýzý,ingiliz,_,_,_),Houses),
    
    %3
    member(house(_,isveçli,_,_,köpek),Houses),
    
    %4
    member(house(_,danimarkalý,çay,_,_),Houses),
        
    %5
    left(house(yeþil,_,_,_,_),house(beyaz,_,_,_,_),Houses),
    
    %6
    member(house(yeþil,_,kahve,_,_),Houses),
        
    %7
    member(house(_,_,_,pallMall,kuþ),Houses),

    %8
    member(house(sarý,_,_,dunhills,_),Houses),

    %9
    Houses = [_,_,house(_,_,süt,_,_),_,_],

    %10
    Houses = [house(_,norveçli,_,_,_),_,_,_,_],
        
    %11
    neighbor(house(_,_,_,blend,_),house(_,_,_,_,kedi),Houses),

    %12
    member(house(_,_,bira,blueMasters,_),Houses),
        
    %13
    neighbor(house(_,_,_,_,at),house(_,_,_,dunhills,_),Houses),
    
    %14
    member(house(_,alman,_,prince,_),Houses),
        
    %15
    neighbor(house(_,norveçli,_,_,_),house(mavi,_,_,_,_),Houses),
        
    %16
    neighbor(house(_,_,_,blend,_),house(_,_,su,_,_),Houses),
    
    %17
    member(house(_,_,_,_,balýk),Houses),!.


%18
:- use_rendering(table,
		 [header(house('Renk', 'Memleket', 'Ýçecek', 'Sigara', 'Hayvan'))]).

%19
left(A, B, Ls) :- append(_, [A,B|_], Ls).

%20
right(A, B, Ls) :- append(_, [B,A|_], Ls).

%21
neighbor(A, B, Ls) :- left(A, B, Ls).
neighbor(A, B, Ls) :- right(A, B, Ls).

    
    
    
    