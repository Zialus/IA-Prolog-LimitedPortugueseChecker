% Correct
correct:-
sentenca(X1,['A',menina,corre,para,a,floresta],[]),write(X1),nl,
sentenca(X2,['A',menina,corre,para,a,mae],[]),write(X2),nl,
sentenca(X3,['A',vida,corre],[]),write(X3),nl,
sentenca(X4,['O',tempo,corre],[]),write(X4),nl,
sentenca(X5,['O',cacador,correu,com,os,lobos],[]),write(X5),nl,
sentenca(X6,['A',noticia,correu,pela,cidade],[]),write(X6),nl,
sentenca(X7,['As',lagrimas,corriam,pelo,rosto],[]),write(X7),nl,
sentenca(X8,['O',rio,corre,para,o,mar],[]),write(X8),nl,
sentenca(X9,['A',menina,bateu,a,porta],[]),write(X9),nl,
sentenca(X10,['A',porta,bateu],[]),write(X10),nl,
sentenca(X11,['O',vento,bateu,a,porta],[]),write(X11),nl,
sentenca(X12,['A',menina,bateu,na,porta],[]),write(X12),nl,
sentenca(X13,['O',martelo,bateu,na,porta],[]),write(X13),nl,
sentenca(X14,['A',menina,bateu,no,cachorro],[]),write(X14),nl,
sentenca(X15,['A',menina,bateu,no,tambor],[]),write(X15),nl,
sentenca(X16,['Os',tambores,bateram],[]),write(X16),nl,
sentenca(X17,['O',sino,bateu],[]),write(X17),nl,
sentenca(X18,['A',menina,corre],[]),write(X18),nl,
sentenca(X19,['A',vida,correu],[]),write(X19),nl,
sentenca(X20,['A',noticia,correu,para,a,floresta],[]),write(X20),nl,
sentenca(X21,['A',vida,correu,com,os,lobos],[]),write(X21),nl,
sentenca(X22,['A',menina,bateu,a,mae],[]),write(X22),nl.

% Incorrect
incorrect:-
sentenca(X1,['A',tempo,corre],[]), write(X1),nl;
sentenca(X2,['O',tempo,correram],[]), write(X2),nl;
sentenca(X3,['A',cacador,corriam,pela,rosto],[]), write(X3),nl;
sentenca(X4,['A',tambores,correu,pela,floresta],[]), write(X4),nl;
sentenca(X5,['Os',tambores,bateu,na,porta],[]), write(X5),nl;
sentenca(X6,['O',sino,bateu,na,meninas],[]), write(X6),nl.
