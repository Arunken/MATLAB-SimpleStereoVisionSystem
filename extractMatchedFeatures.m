%==========================================================================
%                   EXTRA��O DE CORRESPOND�NCIAS INICIAIS
%
%   Script respons�vel pela extra��o de cantos correspondentes. Recebe duas
% imagens como par�metros, e retorna dois vetores contendo as coordenadas
% dos pontos correspondentes para cada imagem.
%==========================================================================

function [lPts, rPts] = extractMatchedFeatures(lSnap, rSnap)

%   Detecta os cantos de cada imagem utilizando o algoritmo SURF. Tal algo-
% ritmo � o que obteve os melhores resultados na an�lise de correspond�nci-
% as.
surfL = detectSURFFeatures(lSnap);
surfR = detectSURFFeatures(rSnap);

%   Calcula as correspond�ncias entre os cantos de cada imagem, utilizando
% a soma das diferen�as quadradas (SSD).
[ftrsL, vldPtsL] = extractFeatures(lSnap, surfL);
[ftrsR, vldPtsR] = extractFeatures(rSnap, surfR);

index = matchFeatures(ftrsL, ftrsR, 'Unique', true);

lPts = vldPtsL(index(:,1),:);
rPts = vldPtsR(index(:,2),:);

end