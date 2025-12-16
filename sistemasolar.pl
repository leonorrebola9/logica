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

% Pequenas luas regulares de Neptuno
lua(naiade) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, neptuno),
    conhece(sim, orbita, interna).

lua(talassa) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, neptuno),
    conhece(sim, orbita, interna),
    conhece(sim, posicao_orbital, central).

lua(despina) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, neptuno),
    conhece(sim, orbita, media).

lua(galateia) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, neptuno),
    conhece(sim, orbita, media),
    conhece(sim, posicao_orbital, central).

lua(larissa) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, neptuno),
    conhece(sim, orbita, externa).

lua(hipocampo) :-
    conhece(sim, tamanho_lua, pequena),
    conhece(sim, tipo_lua, regular),
    conhece(sim, planeta_de, neptuno),
    conhece(sim, orbita, externa),
    conhece(sim, posicao_orbital, central).


% -------------------------------
% LUAS IRREGULARES
% -------------------------------


% Luas de Jupiter
lua(himalia) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, jupiter),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, progrado),
    conhece(sim, cor_superficie, cinzenta).

lua(elara) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, jupiter),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, progrado),
    conhece(sim, cor_superficie, escura).

lua(lysithea) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, jupiter),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, progrado),
    conhece(sim, cor_superficie, avermelhada).

lua(leda) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, jupiter),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, progrado),
    conhece(sim, cor_superficie, escura).

lua(ananke) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, jupiter),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, escura).

lua(harpalyke) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, jupiter),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, cinzenta).

lua(praxidike) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, jupiter),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, avermelhada).

lua(carme) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, jupiter),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, escura).

lua(taygete) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, jupiter),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, cinzenta).

lua(kalyke) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, jupiter),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, avermelhada).

lua(pasifae) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, jupiter),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, escura).

lua(sinope) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, jupiter),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, avermelhada).

lua(callirrhoe) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, jupiter),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, cinzenta).

lua(themisto) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, jupiter),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, progrado),
    conhece(sim, cor_superficie, escura).

lua(megaclite) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, jupiter),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, progrado),
    conhece(sim, cor_superficie, cinzenta).



% Luas de Saturno
lua(kiviuq) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, progrado),
    conhece(sim, cor_superficie, cinzenta).

lua(ijiraq) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, progrado),
    conhece(sim, cor_superficie, escura).

lua(paaliaq) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, progrado),
    conhece(sim, cor_superficie, avermelhada).

lua(albiorix) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, cinzenta).

lua(bebionn) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, escura).

lua(phoebe) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, escura).

lua(skathi) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, cinzenta).

lua(ymir) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, avermelhada).

lua(suttungr) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, escura).

lua(thrymr) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, cinzenta).

lua(hati) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, avermelhada).

lua(tarvos) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, escura).

lua(erriapo) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, cinzenta).

lua(fornjot) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, avermelhada).

lua(kari) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, saturno),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, escura).



% Luas de Urano
lua(sycorax) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, urano),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, escura).

lua(caliban) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, urano),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, cinzenta).

lua(prospero) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, urano),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, avermelhada).

lua(setebos) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, urano),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, escura).

lua(stephano) :-
    conhece(sim, tipo_lua, irregular),
    conhece(sim, planeta_de, urano),
    conhece(sim, orbita, externa),
    conhece(sim, sentido_orbital, retrogrado),
    conhece(sim, cor_superficie, cinzenta).