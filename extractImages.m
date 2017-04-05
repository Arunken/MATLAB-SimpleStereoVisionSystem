%==========================================================================
%                           EXTRA��O DE IMAGENS
%
%   Script respons�vel por extrair as imagens de uma cena utilizando um par
% de webcams. � necess�rio informar o identificador de cada c�mera (defini-
% do pelo ambiente do MatLab). Tem como retorno o par de imagens capturado
% (em tons de cinza), bem como uma vari�vel utilizada para tratar poss�veis
% erros de captura.
%==========================================================================

function [lSnap, rSnap, error] = extractImages(LEFT_CAM, RGHT_CAM)

%   Inicializa o par de c�meras.
try 
    lCam = videoinput('winvideo', LEFT_CAM);
    rCam = videoinput('winvideo', RGHT_CAM);
catch
    error = 1;
    return;
end

%   Captura as imagens utilizando as c�meras inicializadas.
lSnap = getsnapshot(lCam);
rSnap = getsnapshot(rCam);

%   Vari�vel utilizada no controle de erros da fun��o; retorna 0 se tudo 
% correr bem.
error = 0;

end