%==========================================================================
%                           PR�-PROCESSAMENTO
%
%   Scriptrespons�vel pelo pr�-processamento (por hora, apenas a convers�o
% para tonz de cinza) das imagens do sistema de vis�o est�reo. As imagens 
% de retorno s�o as mesmas imagens de entrada, mas pr�-processadas. Possi-
% velmente coisas podem ser adicionadas aqui...
%==========================================================================

function [lSnap, rSnap] = preProcessing(lSnap, rSnap)

%	Convers�o para tons de cinza.
lSnap = rgb2gray(lSnap);
rSnap = rgb2gray(rSnap);

end