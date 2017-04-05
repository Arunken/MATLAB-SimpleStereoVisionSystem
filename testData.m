%==========================================================================
%                CARREGA IMAGENS PREVIAMENTE CAPTURADAS
%
%   Script respons�vel por carregar um par de imagens est�reo que foi pre-
% viamente capturado. Utilizado, em geral, quando n�o h� c�meras ligadas ao
% ambiente.
%==========================================================================

function [lSnap, rSnap, error] = testData

%	L� os arquivos de imagem de um diret�rio.
try 
    lSnap = imread('images/Plants/im0.png', 'png');
    rSnap = imread('images/Plants/im1.png', 'png');
catch
    error = 1;
    return;
end

%   Vari�vel utilizada no controle de erros da fun��o; retorna 0 se tudo 
% correr bem.
error = 0;

end