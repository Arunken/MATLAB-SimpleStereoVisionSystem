%==========================================================================
%                            EXIBI��O DO MAPA
%
%   Script respons�vel por representar o mapa de disparidades na tela.
%==========================================================================

function showDisparity(dMap, dRng, label)

%	Cria uma nova figura.
figure;

%	Exibe o mapa de disparidades.
imshow(dMap, dRng);
title(label);

end