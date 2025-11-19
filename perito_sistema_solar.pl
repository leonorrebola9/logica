:- dynamic conhece/3.

% Entrada principal
perito :-
    write('Concha simples de Sistema Pericial'), nl,
    write('Versao adaptada para Sistema Solar'), nl, nl,
    pergunta_tipo_objetivo,
    (   conhece(sim, tipo_objetivo, planeta)   -> deduz_planeta
    ;   conhece(sim, tipo_objetivo, lua)       -> deduz_lua
    ;   conhece(sim, tipo_objetivo, asteroide) -> deduz_asteroide
    ;   write('Tipo desconhecido.'), nl
    ).

% Pergunta inicial
pergunta_tipo_objetivo :-
    questiona(tipo_objetivo, _, [planeta, lua, asteroide]),
    asserta(conhece(sim, tipo_objetivo, planeta)).  % ou lua/asteroide conforme resposta

questiona(Atr, Val, _) :-
    conhece(sim, Atr, Val).
questiona(Atr, _, _) :-
    conhece(sim, Atr, _), !, fail.
questiona(Atr, Val, Lista) :-
    write('Qual o valor para '), write(Atr), write('?'), nl,
    write(Lista), nl,
    read(X),
    processa(X, Atr, Val, Lista).

processa(Val, Atr, Val, _) :-
    asserta(conhece(sim, Atr, Val)).
processa(X, Atr, _, Lista) :-
    member(X, Lista),
    asserta(conhece(sim, Atr, X)), !, fail.
processa(X, Atr, Val, Lista) :-
    write(X), write(' nao e valor aceite!'), nl,
    questiona(Atr, Val, Lista).

% -------------------------------
% PLANETAS
% -------------------------------
deduz_planeta :-
    questiona(tipo, _, [rochoso, gasoso]),
    questiona(luas, _, [nenhuma, uma, duas, muitas]),
    questiona(cor, _, [beje, dourado, azul]),
    questiona(inclinacao_extrema, _, [sim, nao]),
    ( planeta(P), write('Resposta encontrada: '), write(P), nl
    ; write('Nao foi encontrado planeta correspondente.'), nl ).

planeta(mercurio) :- conhece(sim, tipo, rochoso), conhece(sim, luas, nenhuma).
planeta(venus)    :- conhece(sim, tipo, rochoso), conhece(sim, luas, nenhuma).
planeta(terra)    :- conhece(sim, tipo, rochoso), conhece(sim, luas, uma).
planeta(marte)    :- conhece(sim, tipo, rochoso), conhece(sim, luas, duas).
planeta(jupiter)  :- conhece(sim, tipo, gasoso), conhece(sim, cor, beje).
planeta(saturno)  :- conhece(sim, tipo, gasoso), conhece(sim, cor, dourado).
planeta(urano)    :- conhece(sim, tipo, gasoso), conhece(sim, cor, azul), conhece(sim, inclinacao_extrema, sim).
planeta(neptuno)  :- conhece(sim, tipo, gasoso), conhece(sim, cor, azul), conhece(sim, inclinacao_extrema, nao).

% -------------------------------
% LUAS
% -------------------------------
deduz_lua :-
    questiona(planeta_de, _, [terra, jupiter, saturno, urano, marte, neptuno]),
    questiona(cor_superficie, _, [colorida, branca, escura]),
    questiona(superficie, _, [gelada, porosa, bicolor]),
    questiona(brilho, _, [mais, menos]),
    questiona(crateras, _, [muitas]),
    questiona(tamanho_lua, _, [grande, pequena]),
    ( lua(L), write('Resposta encontrada: '), write(L), nl
    ; write('Nao foi encontrada lua correspondente.'), nl ).

lua(lua)      :- conhece(sim, planeta_de, terra).
lua(io)       :- conhece(sim, planeta_de, jupiter), conhece(sim, cor_superficie, colorida).
lua(europa)   :- conhece(sim, planeta_de, jupiter), conhece(sim, cor_superficie, branca).
lua(calisto)  :- conhece(sim, planeta_de, jupiter), conhece(sim, cor_superficie, escura).
lua(tita)     :- conhece(sim, planeta_de, saturno), conhece(sim, superficie, gelada).
lua(hiperion) :- conhece(sim, planeta_de, saturno), conhece(sim, superficie, porosa).
lua(lapetus)  :- conhece(sim, planeta_de, saturno), conhece(sim, superficie, bicolor).
lua(miranda)  :- conhece(sim, planeta_de, urano), conhece(sim, brilho, menos).
lua(ariel)    :- conhece(sim, planeta_de, urano), conhece(sim, brilho, mais).
lua(fobos)    :- conhece(sim, planeta_de, marte), conhece(sim, crateras, muitas).
lua(deimos)   :- conhece(sim, planeta_de, marte), conhece(sim, crateras, muitas).
lua(tritao)   :- conhece(sim, planeta_de, neptuno), conhece(sim, tamanho_lua, grande).
lua(nereida)  :- conhece(sim, planeta_de, neptuno), conhece(sim, tamanho_lua, pequena).

% -------------------------------
% ASTEROIDES
% -------------------------------
deduz_asteroide :-
    questiona(tipo_asteroide, _, [planeta_anao, metalico, tipo_b, tipo_c, tipo_s]),
    questiona(tamanho_asteroide, _, [grande, pequeno]),
    questiona(tem_luas, _, [sim, nao]),
    questiona(proximo_terra, _, [sim, nao]),
    ( asteroide(A), write('Resposta encontrada: '), write(A), nl
    ; write('Nao foi encontrado asteroide correspondente.'), nl ).

asteroide(plutao)     :- conhece(sim, tipo_asteroide, planeta_anao), conhece(sim, tamanho_asteroide, grande).
asteroide(ceres)      :- conhece(sim, tipo_asteroide, planeta_anao), conhece(sim, tamanho_asteroide, pequeno).
asteroide(psyche)     :- conhece(sim, tipo_asteroide, metalico), conhece(sim, tem_luas, nao).
asteroide(kleopatra)  :- conhece(sim, tipo_asteroide, metalico), conhece(sim, tem_luas, sim).
asteroide(pallas)     :- conhece(sim, tipo_asteroide, tipo_b), conhece(sim, proximo_terra, nao).
asteroide(paethon)    :- conhece(sim, tipo_asteroide, tipo_b), conhece(sim, proximo_terra, sim).
asteroide(ryugu)      :- conhece(sim, tipo_asteroide, tipo_c), conhece(sim, tamanho_asteroide, pequeno).
asteroide(mathilde)   :- conhece(sim, tipo_asteroide, tipo_c), conhece(sim, tamanho_asteroide, grande).
asteroide(annefrank)  :- conhece(sim, tipo_asteroide, tipo_s), conhece(sim, proximo_terra, nao).
asteroide(amor)       :- conhece(sim, tipo_asteroide, tipo_s), conhece(sim, proximo_terra, sim).