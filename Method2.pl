:-dynamic sayi/2.
:-dynamic sonuc/3.
sayi(beyaz,1).
sayi(beyaz,2).
sayi(beyaz,3).
sayi(beyaz,4).
sayi(beyaz,5).
sayi(kýrmýzý,1).
sayi(kýrmýzý,2).
sayi(kýrmýzý,3).
sayi(kýrmýzý,4).
sayi(kýrmýzý,5).
sayi(mavi,1).
sayi(mavi,2).
sayi(mavi,3).
sayi(mavi,4).
sayi(mavi,5).
sayi(sarý,1).
sayi(sarý,2).
sayi(sarý,3).
sayi(sarý,4).
sayi(sarý,5).
sayi(yeþil,1).
sayi(yeþil,2).
sayi(yeþil,3).
sayi(yeþil,4).
sayi(yeþil,5).

sayi(alman,1).
sayi(alman,2).
sayi(alman,3).
sayi(alman,4).
sayi(alman,5).
sayi(danimarkalý,1).
sayi(danimarkalý,2).
sayi(danimarkalý,3).
sayi(danimarkalý,4).
sayi(danimarkalý,5).
sayi(ingiliz,1).
sayi(ingiliz,2).
sayi(ingiliz,3).
sayi(ingiliz,4).
sayi(ingiliz,5).
sayi(isveçli,1).
sayi(isveçli,2).
sayi(isveçli,3).
sayi(isveçli,4).
sayi(isveçli,5).
sayi(norveçli,1).

sayi(bira,1).
sayi(bira,2).
sayi(bira,3).
sayi(bira,4).
sayi(bira,5).
sayi(çay,1).
sayi(çay,2).
sayi(çay,3).
sayi(çay,4).
sayi(çay,5).
sayi(kahve,1).
sayi(kahve,2).
sayi(kahve,3).
sayi(kahve,4).
sayi(kahve,5).
sayi(su,1).
sayi(su,2).
sayi(su,3).
sayi(su,4).
sayi(su,5).
sayi(süt,3).


sayi(blend,1).
sayi(blend,2).
sayi(blend,3).
sayi(blend,4).
sayi(blend,5).
sayi(bluemasters,1).
sayi(bluemasters,2).
sayi(bluemasters,3).
sayi(bluemasters,4).
sayi(bluemasters,5).
sayi(dunhills,1).
sayi(dunhills,2).
sayi(dunhills,3).
sayi(dunhills,4).
sayi(dunhills,5).
sayi(pallmall,1).
sayi(pallmall,2).
sayi(pallmall,3).
sayi(pallmall,4).
sayi(pallmall,5).
sayi(prince,1).
sayi(prince,2).
sayi(prince,3).
sayi(prince,4).
sayi(prince,5).

sayi(at,1).
sayi(at,2).
sayi(at,3).
sayi(at,4).
sayi(at,5).
sayi(balýk,1).
sayi(balýk,2).
sayi(balýk,3).
sayi(balýk,4).
sayi(balýk,5).
sayi(kedi,1).
sayi(kedi,2).
sayi(kedi,3).
sayi(kedi,4).
sayi(kedi,5).
sayi(köpek,1).
sayi(köpek,2).
sayi(köpek,3).
sayi(köpek,4).
sayi(köpek,5).
sayi(kuþ,1).
sayi(kuþ,2).
sayi(kuþ,3).
sayi(kuþ,4).
sayi(kuþ,5).

start:-    
    sayi(blend,P),
    sayi(kedi,X),
    
    Temp2 is P+1,
    Temp3 is P-1,
    (Temp2 = X ; Temp3 = X),
    
    sayi(at,V),
    sayi(dunhills,S),
    
    Temp4 is V+1,
    Temp5 is V-1,
    (Temp4 = S ; Temp5 = S),
        
    sayi(mavi,C),
    sayi(norveçli,J),
    
    Temp6 is C+1,
    Temp7 is C-1,
    (Temp6 = J ; Temp7 = J),
    
    
    sayi(su,N),
    
    Temp8 is P+1,
    Temp9 is P-1,
    (Temp8 = N ; Temp9 = N),
    
    sayi(kýrmýzý,B),
    sayi(ingiliz,H),
    B=H,
    
    sayi(isveçli,I),
    sayi(köpek,Y),    
    I=Y,
    
    sayi(danimarkalý,G),
    sayi(çay,L),
    G=L,
    
    sayi(yeþil,E),
    sayi(beyaz,A),
    Temp is E + 1,
    Temp=A,
    
    sayi(kahve,M),
    E=M,
    
    sayi(pallmall,T),
    sayi(kuþ,Z),
    T=Z,
    
    sayi(sarý,D),
    D=S,
    
    sayi(bluemasters,R),
    sayi(bira,K),
    R=K,
    
    sayi(alman,F),
    sayi(prince,U),
    F=U,
    
    sayi(süt,O),			
	sayi(balýk,W),
    
    not(A=B),
    not(A=C),
    not(A=D),
    not(A=E),
    not(B=C),
    not(B=D),
    not(B=E),
    not(C=D),
    not(C=E),
    not(D=E),
    
    not(F=G),
    not(F=H),
    not(F=I),
    not(F=J),
    not(G=H),
    not(G=I),
    not(G=J),
    not(H=I),
    not(H=J),
    not(I=J),
    
    not(K=L),
    not(K=M),
    not(K=N),
    not(K=O),
    not(L=M),
    not(L=N),
    not(L=O),
    not(M=N),
    not(M=O),
    not(N=O),
    
    not(P=R),
    not(P=S),
    not(P=T),
    not(P=U),
    not(R=S),
    not(R=T),
    not(R=U),
    not(S=T),
    not(S=U),
    not(T=U),
    
    not(V=W),
    not(V=X),
    not(V=Y),
    not(V=Z),
    not(W=X),
    not(W=Y),
    not(W=Z),
    not(X=Y),
    not(X=Z),
    not(Y=Z),
    
    !,    
    sil,
    ekle("blend",P,4),
    ekle("kedi",X,5),
    ekle("at",V,5),
    ekle("dunhills",S,4),
    ekle("mavi",C,1),
    ekle("norveçli",J,2),
    ekle("su",N,3),
    ekle("kýrmýzý",B,1),
    ekle("isveçli",I,2),
    ekle("ingiliz",H,2),
    ekle("köpek",Y,5),
    ekle("danimarkalý",G,2),
    ekle("çay",L,3),
    ekle("yeþil",E,1),
    ekle("beyaz",A,1),
    ekle("kahve",M,3),
    ekle("pallmall",T,4),
    ekle("kuþ",Z,5),
    ekle("sarý",D,1),
    ekle("bluemasters",R,4),
    ekle("bira",K,3),    
    ekle("alman",F,2),
    ekle("prince",U,4),
    ekle("süt",O,3),
    ekle("balýk",W,5),
    !,
    
    yaz(W,1).

   
    
sil:-
    sayi(A,B),retract(sayi(A,B)),sil.
sil:-true.
   
ekle(X,Y,Z):-
    asserta(sonuc(X,Y,Z)).

yaz(W,Z):-
    sonuc(A,W,Z),
    write(A),
    write(" renk evde kalan, içecek olarak "),
    Temp is Z + 2,
    sonuc(B,W,Temp),
    write(B),
    write(" tüketen ve "),
    Temp2 is Z + 3,
    sonuc(C,W,Temp2),
    write(C),
    write(" marka sigara kullanan "),
    Temp3 is Z + 1,
    sonuc(D,W,Temp3),
    write(D),
    write(" adam "),
    Temp4 is Z + 4,
    sonuc(E,W,Temp4),
    write(E),
    write(" besler.").