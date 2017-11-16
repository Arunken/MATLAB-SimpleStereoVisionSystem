%==========================================================================
%                CARREGA IMAGENS PREVIAMENTE CAPTURADAS
%
%   Script respons�vel por carregar um par de imagens est�reo que foi pre-
% viamente capturado. Utilizado, em geral, quando n�o h� c�meras ligadas ao
% ambiente.
%==========================================================================

function [lSnap, rSnap, error] = testData(database)

%	L� os arquivos de imagem de um diret�rio.
if strcmp(database, 'Tsukuba') == true
    pathL = 'images/Tsukuba/left/frame_1.png';
    pathR = 'images/Tsukuba/right/frame_1.png';
else
    if strcmp(database, 'Middlebury') == true
        pathL = 'images/Middlebury/Bicycle2/im0.png';
        pathR = 'images/Middlebury/Bicycle2/im1.png';
    else
        error = 1;
        return;
    end
end

%	L� os arquivos de imagem de um diret�rio.
try 
    lSnap = imread(pathL, 'png');
    rSnap = imread(pathR, 'png');
catch
    error = 1;
    return;
end

%   Vari�vel utilizada no controle de erros da fun��o; retorna 0 se tudo 
% correr bem.
error = 0;

end