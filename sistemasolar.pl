% -------------------------------
% PLANETAS
% -------------------------------
planeta(mercurio) :- conhece(sim,tipo,rochoso), conhece(sim,luas,nenhuma), conhece(sim,atmosfera_densa,nao).
planeta(venus)    :- conhece(sim,tipo,rochoso), conhece(sim,luas,nenhuma), conhece(sim,atmosfera_densa,sim).
planeta(terra)    :- conhece(sim,tipo,rochoso), conhece(sim,luas,uma).
planeta(marte)    :- conhece(sim,tipo,rochoso), conhece(sim,luas,duas).
planeta(jupiter)  :- conhece(sim,tipo,gasoso), conhece(sim,cor,bege).
planeta(saturno)  :- conhece(sim,tipo,gasoso), conhece(sim,cor,dourado).
planeta(urano)    :- conhece(sim,tipo,gasoso), conhece(sim,cor,azul), conhece(sim,inclinacao_extrema,sim).
planeta(neptuno)  :- conhece(sim,tipo,gasoso), conhece(sim,cor,azul), conhece(sim,inclinacao_extrema,nao).

% -------------------------------
% LUAS
% -------------------------------
lua(io) :-
    conhece(sim, planeta_de, jupiter),
    conhece(sim, tamanho_lua, grande),
    conhece(sim, tipo_lua, regular),
    conhece(sim, cor_superficie, amarela).

lua(europa) :-
    conhece(sim, planeta_de, jupiter),
    conhece(sim, tamanho_lua, grande),
    conhece(sim, tipo_lua, regular),
    conhece(sim, cor_superficie, branca).

lua(ganimedes) :-
    conhece(sim, planeta_de, jupiter),
    conhece(sim, tamanho_lua, grande),
    conhece(sim, tipo_lua, regular),
    conhece(sim, cor_superficie, cinza).

lua(calisto) :-
    conhece(sim, planeta_de, jupiter),
    conhece(sim, tamanho_lua, grande),
    conhece(sim, tipo_lua, regular),
    conhece(sim, cor_superficie, escura).

lua(tita) :-
    conhece(sim, planeta_de, saturno),
    conhece(sim, tamanho_lua, grande),
    conhece(sim, tipo_lua, regular).

lua(titania) :-
    conhece(sim, planeta_de, urano),
    conhece(sim, tamanho_lua, grande),
    conhece(sim, tipo_lua, regular).

lua(oberon) :-
    conhece(sim, planeta_de, urano),
    conhece(sim, tamanho_lua, grande),
    conhece(sim, tipo_lua, regular).

lua(tritao) :-
    conhece(sim, planeta_de, neptuno),
    conhece(sim, tamanho_lua, grande),
    conhece(sim, tipo_lua, irregular).

lua(encelado) :-
    conhece(sim, planeta_de, saturno),
    conhece(sim, tamanho_lua, grande),
    conhece(sim, tipo_lua, regular).

% -------------------------------
% LUAS MÉDIAS REGULARES
% -------------------------------

lua(mimas) :-
    conhece(sim, planeta_de, saturno),
    conhece(sim, tamanho_lua, media),
    conhece(sim, tipo_lua, regular),
    conhece(sim, orbita, interna).

lua(tetis) :-
    conhece(sim, planeta_de, saturno),
    conhece(sim, tamanho_lua, media),
    conhece(sim, tipo_lua, regular),
    conhece(sim, orbita, media),
    conhece(sim, posicao_orbital, interna).

lua(dione) :-
    conhece(sim, planeta_de, saturno),
    conhece(sim, tamanho_lua, media),
    conhece(sim, tipo_lua, regular),
    conhece(sim, orbita, media),
    conhece(sim, posicao_orbital, externa).

lua(reia) :-
    conhece(sim, planeta_de, saturno),
    conhece(sim, tamanho_lua, media),
    conhece(sim, tipo_lua, regular),
    conhece(sim, orbita, externa),
    conhece(sim, posicao_orbital, interna).

lua(japeto) :-
    conhece(sim, planeta_de, saturno),
    conhece(sim, tamanho_lua, media),
    conhece(sim, tipo_lua, regular),
    conhece(sim, orbita, externa),
    conhece(sim, posicao_orbital, externa).


lua(miranda) :-
    conhece(sim, planeta_de, urano),
    conhece(sim, tamanho_lua, media),
    conhece(sim, tipo_lua, regular).

lua(proteu) :-
    conhece(sim, planeta_de, neptuno),
    conhece(sim, tamanho_lua, media),
    conhece(sim, tipo_lua, regular).

% -------------------------------
% LUAS PEQUENAS REGULARES
% -------------------------------

lua(fobos) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, marte),
    conhece(sim, orbita, interna).

lua(deimos) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, marte),
    conhece(sim, orbita, externa).


lua(metis) :-
    conhece(sim, planeta_de, jupiter),
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, orbita, interna),
    conhece(sim, posicao_orbital, interna).

lua(adrasteia) :-
    conhece(sim, planeta_de, jupiter),
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, orbita, interna),
    conhece(sim, posicao_orbital, externa).

lua(amaltheia) :-
    conhece(sim, planeta_de, jupiter),
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, orbita, media),
    conhece(sim, posicao_orbital, interna).

lua(tebe) :-
    conhece(sim, planeta_de, jupiter),
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, orbita, media),
    conhece(sim, posicao_orbital, externa).



% Órbita interna
lua(pan) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, interna),
    conhece(sim, posicao_orbital, interna).

lua(dafnis) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, interna),
    conhece(sim, posicao_orbital, central_interna).

lua(atlas) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, interna),
    conhece(sim, posicao_orbital, externa).



% orbita_media
lua(prometeu) :-
    conhece(sim, planeta_de, saturno),
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, orbita, media),
    conhece(sim, posicao_orbital, interna).

lua(pandora) :-
    conhece(sim, planeta_de, saturno),
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, orbita, media),
    conhece(sim, posicao_orbital, central_interna).

lua(epimeteu) :-
    conhece(sim, planeta_de, saturno),
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, orbita, media),
    conhece(sim, posicao_orbital, central_externa).

lua(jano) :-
    conhece(sim, planeta_de, saturno),
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, orbita, media),
    conhece(sim, posicao_orbital, externa).


% Órbita externa
% Luas pequenas externas de Saturno
lua(metone) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, externa),
    conhece(sim, posicao_orbital, interna),
    conhece(sim, lado_orbital, lado_interno).

lua(palene) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, externa),
    conhece(sim, posicao_orbital, central_interna),
    conhece(sim, lado_orbital, lado_externo).

lua(polideuces) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, externa),
    conhece(sim, posicao_orbital, central_externa),
    conhece(sim, lado_orbital, lado_interno).

lua(telesto) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, externa),
    conhece(sim, posicao_orbital, central_externa),
    conhece(sim, lado_orbital, lado_externo).

lua(calipso) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, externa),
    conhece(sim, posicao_orbital, central_externa),
    conhece(sim, lado_orbital, lado_interno).

lua(helena) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, externa),
    conhece(sim, posicao_orbital, externa).


% Luas pequenas internas de Saturno
lua(aegaeon) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, interna),
    conhece(sim, posicao_orbital, interna).

lua(anthe) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, interna),
    conhece(sim, posicao_orbital, central).


% Pequenas internas de Urano
lua(cordelia) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, urano),
    conhece(sim, orbita, interna),
    conhece(sim, posicao_orbital, interna).

lua(ofelia) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, urano),
    conhece(sim, orbita, interna),
    conhece(sim, posicao_orbital, central_interna).

lua(bianca) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, urano),
    conhece(sim, orbita, interna),
    conhece(sim, posicao_orbital, central_externa).

lua(cressida) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, urano),
    conhece(sim, orbita, interna),
    conhece(sim, posicao_orbital, externa).

lua(desdemona) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, urano),
    conhece(sim, orbita, media),
    conhece(sim, posicao_orbital, interna).

lua(julieta) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, urano),
    conhece(sim, orbita, media),
    conhece(sim, posicao_orbital, central_interna).

lua(porcia) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, urano),
    conhece(sim, orbita, media),
    conhece(sim, posicao_orbital, central_externa).

lua(rosalinda) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, urano),
    conhece(sim, orbita, media),
    conhece(sim, posicao_orbital, externa).

lua(cupido) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, urano),
    conhece(sim, orbita, externa),
    conhece(sim, posicao_orbital, interna).

lua(belinda) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, urano),
    conhece(sim, orbita, externa),
    conhece(sim, posicao_orbital, central_interna).

lua(perdita) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, urano),
    conhece(sim, orbita, externa),
    conhece(sim, posicao_orbital, central_externa).

lua(puck) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, urano),
    conhece(sim, orbita, externa),
    conhece(sim, posicao_orbital, central_externa).

lua(mab) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, urano),
    conhece(sim, orbita, externa),
    conhece(sim, posicao_orbital, externa).


lua(L) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, neptuno),
    member(L, [
        naiade, talassa, despina, galateia, larissa, hipocampo
    ]).

% -------------------------------
% LUAS IRREGULARES
% -------------------------------

lua(L) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, jupiter),
    member(L, [
        himalia, elara, lysithea, leda, ananke, harpalyke,
        praxidike, carme, taygete, kalyke, pasifae, sinope,
        callirrhoe, themisto, megaclite
    ]).

lua(L) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, saturno),
    member(L, [
        kiviuq, ijiraq, paaliaq, albiorix, bebionn,
        phoebe, skathi, ymir, suttungr, thrymr,
        hati, tarvos, erriapo, fornjot, kari
    ]).

lua(L) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, urano),
    member(L, [sycorax, caliban, prospero, setebos, stephano]).


% -------------------------------
% ASTEROIDES
% -------------------------------
asteroide(plutao)    :- conhece(sim,tipo_asteroide,planeta_anao), conhece(sim,tamanho_asteroide,grande).
asteroide(ceres)     :- conhece(sim,tipo_asteroide,planeta_anao), conhece(sim,tamanho_asteroide,pequeno).
asteroide(psyche)    :- conhece(sim,tipo_asteroide,metalico), conhece(sim,tem_luas,nao).
asteroide(kleopatra) :- conhece(sim,tipo_asteroide,metalico), conhece(sim,tem_luas,sim).
asteroide(pallas)    :- conhece(sim,tipo_asteroide,tipo_b), conhece(sim,proximo_terra,nao).
asteroide(paethon)   :- conhece(sim,tipo_asteroide,tipo_b), conhece(sim,proximo_terra,sim).
asteroide(ryugu)     :- conhece(sim,tipo_asteroide,tipo_c), conhece(sim,tamanho_asteroide,pequeno).
asteroide(mathilde)  :- conhece(sim,tipo_asteroide,tipo_c), conhece(sim,tamanho_asteroide,grande).
asteroide(annefrank) :- conhece(sim,tipo_asteroide,tipo_s), conhece(sim,proximo_terra,nao).
asteroide(amor)      :- conhece(sim,tipo_asteroide,tipo_s), conhece(sim,proximo_terra,sim).