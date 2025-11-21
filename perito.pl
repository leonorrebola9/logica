:- dynamic conhece/3.
:- dynamic executa/2.

% -------------------------------
% PONTO DE ENTRADA
% -------------------------------
perito :-
    nl,
    write('****************************************************************'), nl,
    write('                UNIVERSIDADE DA BEIRA INTERIOR                  '), nl,
    write('----------------------------------------------------------------'), nl,
    write('         SISTEMA PERICIAL - UBI OBJETOS DO SISTEMA SOLAR        '), nl,
    write('----------------------------------------------------------------'), nl,
    write('  Feito por:  Adriana Abreu (53672)                             '), nl,
    write('              Leonor Rebola (53663)                             '), nl,
    write('  Curso:      Inteligencia Artificial e Ciencia de Dados        '), nl,
    write('  UC:         Logica Computacional                              '), nl,
    write('----------------------------------------------------------------'), nl,
    write('                      Novembro de 2025                          '), nl,
    write('****************************************************************'), nl,
    nl,
    esperaOrdens(123).

% -------------------------------
% MENU DE COMANDOS
% -------------------------------
esperaOrdens(MC) :-
    mostraComandos(MC),
    write('> '),
    read(Comando),
    executa(MC, Comando).

mostraComandos(123) :-
    write('Comandos disponiveis:'), nl,
    write('1 - Consultar uma Base de Conhecimento (BC)'), nl,
    write('2 - Solucionar'), nl,
    write('3 - Sair'), nl.

mostraComandos(23) :-
    write('Comandos disponiveis:'), nl,
    write('2 - Solucionar'), nl,
    write('3 - Sair'), nl.

% -------------------------------
% EXECUÇÃO DE COMANDOS
% -------------------------------
executa(_, 1) :-
    write('Nome da BC: '),
    read(F),
    consult(F),
    write('BC consultada com sucesso.'), nl, nl,
    continua.

executa(_, 2) :-
    soluciona,
    esperaOrdens(23).

executa(_, 3) :-
    nl,
    write('Volte Sempre!'), nl,
    halt.

executa(MC, X) :-
    write(X), write(' nao e um comando valido!'), nl,
    esperaOrdens(MC).

continua :-
    retract((executa(_, 1) :- _)),
    esperaOrdens(23).

% -------------------------------
% SOLUCIONAR (fluxo principal)
% -------------------------------
soluciona :-
    retractall(conhece(_,_,_)),
    pergunta_tipo_objetivo(Tipo),
    ( Tipo = planeta   -> deduz_planeta
    ; Tipo = lua       -> deduz_lua
    ; Tipo = asteroide -> deduz_asteroide
    ; write('Tipo desconhecido.'), nl
    ).

% -------------------------------
% PERGUNTAS GENÉRICAS
% -------------------------------
pergunta_tipo_objetivo(Tipo) :-
    questiona(tipo_objetivo, Tipo, [planeta, lua, asteroide]),
    asserta(conhece(sim, tipo_objetivo, Tipo)).

% Pergunta com opções
questiona(Atr, Val, _) :-
    conhece(sim, Atr, Val), !.
questiona(Atr, Val, Lista) :-
    write('Qual o valor para '), write(Atr), write('?'), nl,
    write('Opcoes: '), write(Lista), nl,
    read(X),
    ( member(X, Lista) ->
        asserta(conhece(sim, Atr, X)), Val = X
    ; write(X), write(' nao e valor aceite!'), nl,
      questiona(Atr, Val, Lista)
    ).

% Pergunta binária (sim/nao)
questiona_binario(Atr, Val) :-
    conhece(sim, Atr, Val), !.
questiona_binario(Atr, Val) :-
    write(Atr), write('? (sim/nao)'), nl,
    read(R),
    ( member(R, [sim, nao]) ->
        asserta(conhece(sim, Atr, R)), Val = R
    ; write(R), write(' nao e valor aceite!'), nl,
      questiona_binario(Atr, Val)
    ).

% -------------------------------
% PLANETAS
% -------------------------------
deduz_planeta :-
    questiona(tipo, Tipo, [rochoso, gasoso]),
    ( Tipo = rochoso -> deduz_planeta_rochoso
    ; Tipo = gasoso  -> deduz_planeta_gasoso
    ),
    ( planeta(P) -> write('Planeta encontrado: '), write(P), nl
    ; write('Nao foi encontrado planeta correspondente.'), nl ).

deduz_planeta_rochoso :-
    questiona(luas, Luas, [nenhuma, uma, duas]),
    ( Luas = nenhuma -> questiona_binario(atmosfera_densa, _)
    ; true ).

deduz_planeta_gasoso :-
    questiona(cor, Cor, [bege, dourado, azul]),
    ( Cor = azul -> questiona_binario(inclinacao_extrema, _)
    ; true ).

% -------------------------------
% LUAS
% -------------------------------
deduz_lua :-
    questiona(planeta_de, Planeta, [terra, jupiter, saturno, urano, marte, neptuno]),
    ( Planeta = jupiter   -> questiona(cor_superficie, _, [colorida, branca, escura])
    ; Planeta = saturno   -> questiona(superficie, _, [gelada, porosa, bicolor])
    ; Planeta = urano     -> questiona(brilho, _, [mais, menos])
    ; Planeta = marte     -> questiona(crateras, _, [muitas, poucas])
    ; Planeta = neptuno   -> questiona(tamanho_lua, _, [grande, pequena])
    ; true ),
    ( lua(L) -> write('Lua encontrada: '), write(L), nl
    ; write('Nao foi encontrada lua correspondente.'), nl ).

% -------------------------------
% ASTEROIDES
% -------------------------------
deduz_asteroide :-
    questiona(tipo_asteroide, Tipo, [planeta_anao, metalico, tipo_b, tipo_c, tipo_s]),
    ( Tipo = planeta_anao -> questiona(tamanho_asteroide, _, [grande, pequeno])
    ; Tipo = metalico     -> questiona_binario(tem_luas, _)
    ; Tipo = tipo_b       -> questiona_binario(proximo_terra, _)
    ; Tipo = tipo_c       -> questiona(tamanho_asteroide, _, [grande, pequeno])
    ; Tipo = tipo_s       -> questiona_binario(proximo_terra, _)
    ),
    ( asteroide(A) -> write('Asteroide encontrado: '), write(A), nl
    ; write('Nao foi encontrado asteroide correspondente.'), nl ).