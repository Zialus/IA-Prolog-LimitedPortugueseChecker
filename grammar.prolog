%%%%%%%%%%%%%%%%%%%%% SENTENCA %%%%%%%%%%%%%%%%%%%%

%SINGULAR
sentenca(sent(Frase_nom,Frase_verb))-->frase_nom(Frase_nom),frase_verb(Frase_verb).
%PLURAL
sentenca(sent(Frase_nom,Frase_verb))-->frase_nom_p(Frase_nom),frase_verb_p(Frase_verb).

%%%%%%%%%%%%%%%%%%% FRASE NOMINAL %%%%%%%%%%%%%%%%%

%MASCULINO SINGULAR
frase_nom(frase_nom(Sub))-->subst_m(Sub).
frase_nom(frase_nom(Artigo,Sub))-->artigo_m(Artigo), subst_m(Sub).
%FEMININO  SINGULAR
frase_nom(frase_nom(Sub))-->subst_f(Sub).
frase_nom(frase_nom(Artigo,Sub))-->artigo_f(Artigo), subst_f(Sub).
%MASCULINO PLURAL
frase_nom_p(frase_nom(Sub))-->subst_p_m(Sub).
frase_nom_p(frase_nom(Artigo,Sub))-->artigo_p_m(Artigo), subst_p_m(Sub).
%FEMININO  PLURAL
frase_nom_p(frase_nom(Sub))-->subst_p_f(Sub).
frase_nom_p(frase_nom(Artigo,Sub))-->artigo_p_f(Artigo), subst_p_f(Sub).

%%%%%%%%%%%%%%%%%%%FRASE VERBAL%%%%%%%%%%%%%%%%%%%

%CASO BASE SINGULAR
frase_verb(frase_verb(Verb))-->verb(Verb).

%MASCULINO SINGULAR
frase_verb(frase_verb(Verb,Prep,Art,Sub))-->verb(Verb), prep(Prep), artigo_m(Art), subst_m(Sub).
frase_verb(frase_verb(Verb,Prep,Art,Sub))-->verb(Verb), prep(Prep), artigo_p_m(Art), subst_p_m(Sub).

%FEMININO SINGULAR
frase_verb(frase_verb(Verb,Prep,Art,Sub))-->verb(Verb), prep(Prep), artigo_f(Art), subst_f(Sub).
frase_verb(frase_verb(Verb,Prep,Art,Sub))-->verb(Verb), prep(Prep), artigo_p_f(Art), subst_p_f(Sub).

%MASCULINO SINGULAR
frase_verb(frase_verb(Verb,Prep,Sub))-->verb(Verb), prep_m(Prep), subst_m(Sub).
frase_verb(frase_verb(Verb,Art,Sub))-->verb(Verb), artigo_m(Art), subst_m(Sub).
frase_verb(frase_verb(Verb,Art,Sub))-->verb(Verb), artigo_p_m(Art), subst_p_m(Sub).

%FEMININO SINGULAR
frase_verb(frase_verb(Verb,Prep,Sub))-->verb(Verb), prep_f(Prep), subst_f(Sub).
frase_verb(frase_verb(Verb,Art,Sub))-->verb(Verb), artigo_f(Art), subst_f(Sub).
frase_verb(frase_verb(Verb,Art,Sub))-->verb(Verb), artigo_p_f(Art), subst_p_f(Sub).


%CASO BASE PLURAL
frase_verb_p(frase_verb(Verb))-->verb_p(Verb).

%MASCULINO PLURAL
frase_verb_p(frase_verb(Verb,Prep,Sub))-->verb_p(Verb), prep_p_m(Prep), subst_p_m(Sub).
frase_verb_p(frase_verb(Verb,Prep,Sub))-->verb_p(Verb), prep_m(Prep), subst_m(Sub).
frase_verb_p(frase_verb(Verb,Art,Sub))-->verb_p(Verb), artigo_p_m(Art), subst_p_m(Sub).
frase_verb_p(frase_verb(Verb,Art,Sub))-->verb_p(Verb), artigo_m(Art), subst_m(Sub).
frase_verb_p(frase_verb(Verb,Prep,Art,Sub))-->verb_p(Verb), prep(Prep), artigo_p_m(Art), subst_p_m(Sub).
frase_verb_p(frase_verb(Verb,Prep,Art,Sub))-->verb_p(Verb), prep(Prep), artigo_m(Art), subst_m(Sub).

%FEMININO PLURAL
frase_verb_p(frase_verb(Verb,Prep,Sub))-->verb_p(Verb), prep_p_f(Prep), subst_p_f(Sub).
frase_verb_p(frase_verb(Verb,Prep,Sub))-->verb_p(Verb), prep_f(Prep), subst_f(Sub).
frase_verb_p(frase_verb(Verb,Art,Sub))-->verb_p(Verb), artigo_p_f(Art), subst_p_f(Sub).
frase_verb_p(frase_verb(Verb,Art,Sub))-->verb_p(Verb), artigo_f(Art), subst_f(Sub).
frase_verb_p(frase_verb(Verb,Prep,Art,Sub))-->verb_p(Verb), prep(Prep), artigo_p_f(Art), subst_p_f(Sub).
frase_verb_p(frase_verb(Verb,Prep,Art,Sub))-->verb_p(Verb), prep(Prep), artigo_f(Art), subst_f(Sub).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%BASE DE DADOS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%ARTIGOS
artigo_m(artigo('O'))-->['O'].
artigo_m(artigo(o))-->[o].

artigo_p_m(artigo('Os'))-->['Os'].
artigo_p_m(artigo(os))-->[os].

artigo_f(artigo('A'))-->['A'].
artigo_f(artigo(a))-->[a].

artigo_p_f(artigo('As'))-->['As'].
artigo_p_f(artigo(as))-->[as].


%SUBSTANTIVOS
subst_m(substantivo(tempo))-->[tempo].
subst_m(substantivo(cacador))-->[cacador].
subst_m(substantivo(rosto))-->[rosto].
subst_m(substantivo(rio))-->[rio].
subst_m(substantivo(mar))-->[mar].
subst_m(substantivo(vento))-->[vento].
subst_m(substantivo(martelo))-->[martelo].
subst_m(substantivo(cachorro))-->[cachorro].
subst_m(substantivo(tambor))-->[tambor].
subst_m(substantivo(sino))-->[sino].

subst_p_m(substantivo(lobos))-->[lobos].
subst_p_m(substantivo(tambores)) -->[tambores].

subst_f(substantivo(menina))-->[menina].
subst_f(substantivo(floresta))-->[floresta].
subst_f(substantivo(mae))-->[mae].
subst_f(substantivo(vida))-->[vida].
subst_f(substantivo(noticia))-->[noticia].
subst_f(substantivo(porta))-->[porta].
subst_f(substantivo(cidade))-->[cidade].

subst_p_f(substantivo(lagrimas))-->[lagrimas].
subst_p_f(substantivo(meninas))-->[meninas].


%VERBOS
verb(verbo(corre))-->[corre].
verb(verbo(correu))-->[correu].
verb(verbo(bateu))-->[bateu].

verb_p(verbo(bateram))-->[bateram].
verb_p(verbo(correram))-->[correram].
verb_p(verbo(corriam))-->[corriam].


%PREPOSICOES
prep(preposicao(com)) --> [com].
prep(preposicao(para)) --> [para].

prep_m(preposicao(pelo)) --> [pelo].
prep_m(preposicao(no)) --> [no].

prep_p_m(preposicao(pelos)) --> [pelos].
prep_p_m(preposicao(nos)) --> [nos].

prep_f(preposicao(na)) --> [na].
prep_f(preposicao(pela)) --> [pela].

prep_p_f(preposicao(nas)) --> [nas].
prep_p_f(preposicao(pelas)) --> [pelas].
