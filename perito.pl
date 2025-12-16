% ============================================================
% SISTEMA PERICIAL - OBJETOS DO SISTEMA SOLAR
% Adaptado para evitar perguntas impossíveis
% ============================================================

:- dynamic conhece/3.
:- dynamic executa/2.

% ------------------------------------------------------------
% PONTO DE ENTRADA
% ------------------------------------------------------------

perito :-
    nl,
    write('****************************************************************'), nl,
    write('                UNIVERSIDADE DA BEIRA INTERIOR                  '), nl,
    write('----------------------------------------------------------------'), nl,
    write('           SISTEMA PERICIAL - OBJETOS DO SISTEMA SOLAR          '), nl,
    write('----------------------------------------------------------------'), nl,
    write('  Curso:      Inteligencia Artificial e Ciencia de Dados        '), nl,
    write('  UC:         Logica Computacional                              '), nl,
    write('****************************************************************'), nl,
    nl,
    esperaOrdens(123).

% ------------------------------------------------------------
% MENU
% ------------------------------------------------------------

esperaOrdens(MC) :-
    mostraComandos(MC),
    write('> '),
    read(Comando),
    executa(MC, Comando).

mostraComandos(123) :-
    write('1 - Consultar BC'), nl,
    write('2 - Solucionar'), nl,
    write('3 - Sair'), nl.

mostraComandos(23) :-
    write('2 - Solucionar'), nl,
    write('3 - Sair'), nl.

executa(_, 1) :-
    write('Nome da BC: '), read(F), consult(F), nl,
    esperaOrdens(23).

executa(_, 2) :-
    soluciona,
    esperaOrdens(23).

executa(_, 3) :- halt.

executa(MC, _) :-
    write('Comando invalido.'), nl,
    esperaOrdens(MC).

% ------------------------------------------------------------
% FLUXO PRINCIPAL
% ------------------------------------------------------------

soluciona :-
    retractall(conhece(_,_,_)),
    questiona(tipo_objetivo, Tipo, [planeta, lua]),
    ( Tipo = lua       -> deduz_lua
    ; Tipo = planeta   -> write('Planetas nao implementados.'), nl
    ; Tipo = asteroide -> write('Asteroides nao implementados.'), nl
    ).

% ------------------------------------------------------------
% PERGUNTAS GENERICAS
% ------------------------------------------------------------

questiona(Atr, Val, _) :-
    conhece(sim, Atr, Val), !.

questiona(Atr, Val, Lista) :-
    write('Qual o valor para '), write(Atr), write('?'), nl,
    write(Lista), nl,
    read(X),
    ( member(X, Lista) ->
        asserta(conhece(sim, Atr, X)), Val = X
    ; write('Valor invalido.'), nl,
      questiona(Atr, Val, Lista)
    ).

questiona_orbita(Atr, Val) :-
    questiona(Atr, Val, [interna, media, externa]).

questiona_sentido(Atr, Val) :-
    questiona(Atr, Val, [progrado, retrogrado]).

questiona_posicao_orbital(Atr, Val) :-
    questiona(Atr, Val, [interna, central_interna, central_externa, externa]).

questiona_lado_orbital(Atr, Val) :-
    questiona(Atr, Val, [lado_interno, lado_externo]).

questiona_cor_superficie(Atr, Val) :-
    questiona(Atr, Val, [amarela, branca, cinza, escura]).


nao_perguntar_mais :-
    conhece(sim, planeta_de, neptuno),
    conhece(sim, tamanho_lua, grande),
    conhece(sim, tipo_lua, irregular).

nao_perguntar_mais :-
    conhece(sim, planeta_de, saturno),
    conhece(sim, tamanho_lua, media),
    conhece(sim, tipo_lua, regular),
    conhece(sim, orbita, interna).  % Mimas

% Neptuno - medias regulares (não faz perguntas extra)
nao_perguntar_mais :-
    conhece(sim, planeta_de, neptuno),
    conhece(sim, tamanho_lua, media),
    conhece(sim, tipo_lua, regular).

% Urano - medias regulares (não faz perguntas extra)
nao_perguntar_mais :-
    conhece(sim, planeta_de, urano),
    conhece(sim, tamanho_lua, media),
    conhece(sim, tipo_lua, regular).


% ------------------------------------------------------------
% VALIDACOES
% ------------------------------------------------------------

valida_lua :-
    conhece(sim, planeta_de, terra),
    conhece(sim, tamanho_lua, grande),
    !, fail.

valida_lua :-
    conhece(sim, planeta_de, terra),
    conhece(sim, tamanho_lua, media),
    !, fail.

valida_lua :-
    true.


% ------------------------------------------------------------
% DEDUCAO DE LUA
% ------------------------------------------------------------

% Define casos em que não devemos fazer mais perguntas

deduz_lua :-
    % Perguntas iniciais obrigatórias
    questiona(planeta_de, _, [terra, marte, jupiter, saturno, urano, neptuno]),
    questiona(tamanho_lua, _, [grande, media, pequena]),
    questiona(tipo_lua, _, [regular, irregular]),

    valida_lua,

    % Perguntar órbita apenas quando faz sentido e não estiver bloqueado
    ( \+ nao_perguntar_mais,
      (conhece(sim, tamanho_lua, pequena);
       conhece(sim, tamanho_lua, media);
       conhece(sim, tamanho_lua, grande)) ->
        questiona_orbita(orbita, _)
    ; true ),

    % Luas irregulares: sentido orbital + cor (exceto grandes irregulares de Neptuno)
    ( \+ nao_perguntar_mais,
      conhece(sim, tipo_lua, irregular),
      \+ (conhece(sim, planeta_de, neptuno), conhece(sim, tamanho_lua, grande)) ->
        questiona_sentido(sentido_orbital, _),
        questiona_cor_superficie(cor_superficie, _)
    ; true ),

    % Saturno – pequenas regulares: posição orbital
    ( \+ nao_perguntar_mais,
      conhece(sim, planeta_de, saturno),
      conhece(sim, tamanho_lua, pequena),
      conhece(sim, tipo_lua, regular) ->
        questiona_posicao_orbital(posicao_orbital, _)
    ; true ),

    % Saturno – medias regulares: posição orbital
    ( \+ nao_perguntar_mais,
      conhece(sim, planeta_de, saturno),
      conhece(sim, tamanho_lua, media),
      conhece(sim, tipo_lua, regular) ->
        questiona_posicao_orbital(posicao_orbital, _)
    ; true ),

    % Saturno – pequenas regulares externas: lado orbital
    ( \+ nao_perguntar_mais,
      conhece(sim, planeta_de, saturno),
      conhece(sim, tamanho_lua, pequena),
      conhece(sim, tipo_lua, regular),
      conhece(sim, orbita, externa) ->
        questiona_lado_orbital(lado_orbital, _)
    ; true ),

    % Júpiter – grandes regulares (luas galileanas): cor da superfície
    ( \+ nao_perguntar_mais,
      conhece(sim, planeta_de, jupiter),
      conhece(sim, tamanho_lua, grande),
      conhece(sim, tipo_lua, regular) ->
        questiona_cor_superficie(cor_superficie, _)
    ; true ),

    % Urano – grandes regulares: posição orbital
    ( \+ nao_perguntar_mais,
      conhece(sim, planeta_de, urano),
      conhece(sim, tamanho_lua, grande),
      conhece(sim, tipo_lua, regular) ->
        questiona_posicao_orbital(posicao_orbital, _)
    ; true ),

    % Neptuno – medias regulares: posição orbital
    ( \+ nao_perguntar_mais,
      conhece(sim, planeta_de, neptuno),
      conhece(sim, tamanho_lua, media),
      conhece(sim, tipo_lua, regular) ->
        questiona_posicao_orbital(posicao_orbital, _)
    ; true ),

    % Júpiter – pequenas regulares: posição orbital
    ( \+ nao_perguntar_mais,
    conhece(sim, planeta_de, jupiter),
      conhece(sim, tamanho_lua, pequena),
      conhece(sim, tipo_lua, regular) ->
        questiona_posicao_orbital(posicao_orbital, _)
    ; true ),

    % Resultado final
    ( lua(L) ->
        write('Lua encontrada: '), write(L), nl
    ; write('Nenhuma lua encontrada.'), nl
    ).


