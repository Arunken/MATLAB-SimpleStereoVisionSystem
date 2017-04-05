%==========================================================================
%                      C�LCULO DO MAPA DE DISPARIDADES
%
%   Script respons�vel pela gera��o de um mapa de disparidades utilizando o
% m�todo SemiGlobal, a partir de um par de imagens retificadas. Retorna o 
% mapa de disparidades produzido, bem como a faixa de valores utilizada na 
% escala de tons de cinza. Refer�ncia:
%
% HIRSCHMULLER, H., 2005. Accurate and Efficient Stereo Processing by Semi-
% Global Matching and Mutual Information. Proc. of Int. Conference on Com-
% puter Vision and Pattern Recognition, 2, 807-814.
%==========================================================================

function [dispMap, dispRng] = disparityMap(lSnap, rSnap)

%   Configura os poss�veis valor de tons de cinza poss�veis. O intervalo 
% precisa estar na base oito.
dispRng = [-6 10];

%   Aplica a fun��o de disparidade utilizando a faixa de tons desejados.
dispMap = disparity(lSnap, rSnap, 'DisparityRange', dispRng);

end