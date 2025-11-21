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
lua(lua)      :- conhece(sim,planeta_de,terra).
lua(io)       :- conhece(sim,planeta_de,jupiter), conhece(sim,cor_superficie,colorida).
lua(europa)   :- conhece(sim,planeta_de,jupiter), conhece(sim,cor_superficie,branca).
lua(calisto)  :- conhece(sim,planeta_de,jupiter), conhece(sim,cor_superficie,escura).
lua(tita)     :- conhece(sim,planeta_de,saturno), conhece(sim,superficie,gelada).
lua(hiperion) :- conhece(sim,planeta_de,saturno), conhece(sim,superficie,porosa).
lua(lapetus)  :- conhece(sim,planeta_de,saturno), conhece(sim,superficie,bicolor).
lua(miranda)  :- conhece(sim,planeta_de,urano), conhece(sim,brilho,menos).
lua(ariel)    :- conhece(sim,planeta_de,urano), conhece(sim,brilho,mais).
lua(fobos)    :- conhece(sim,planeta_de,marte), conhece(sim,crateras,muitas).
lua(deimos)   :- conhece(sim,planeta_de,marte), conhece(sim,crateras,poucas).
lua(tritao)   :- conhece(sim,planeta_de,neptuno), conhece(sim,tamanho_lua,grande).
lua(nereida)  :- conhece(sim,planeta_de,neptuno), conhece(sim,tamanho_lua,pequena).

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