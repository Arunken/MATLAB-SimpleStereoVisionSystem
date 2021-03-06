# Sistema de Visão Estéreo (Não-Calibrado)

Este é um **projeto em MATLAB** cujo objetivo é criar um **mapa de disparidades** a partir de uma cena real, capturada por um par de câmeras, **sem qualquer tipo de calibração**. O mapa de disparidades é um mapa que exibe a profundidade dos elementos presentes em uma cena. 

# Materiais Utilizados

- **MATLAB R2017b**, versão x64, disponível em https://www.mathworks.com/products/matlab.html.
- Uma **_webcam_ 3D**, e.g. Minoru3D, disponível em http://www.minoru3d.com/.

## Como Configurar o MATLAB

1) Abra o MATLAB;

2) Digite o comando `supportPackageInstaller` no console do MATLAB e pressione Enter;

3) Uma vez que o _Package Installer Manager_ esteja aberto, marque estas duas bibliotecas para serem instaladas:
	- `USB Webcam`;
	- `OS Generic Video Interface`;
	
4) Configure o caminho do MATLAB para a pasta que contém o projeto baixado (provavelmente a pasta deste arquivo);

5) Encontre o `ID` (é um número, geralmente 1 e 2 para as câmeras esquerda e direita) de cada _webcam_ a ser utilizada e mude os valores de `LEFT_CAM`/`RGHT_CAM` com os `ID`'s de cada uma;

6) Por fim, você pode executar o script `main.m` na IDE do MATLAB.

Você provavelmente precisará de uma **conta no MATLAB** para **baixar e instalar** os pacotes necessários (é de graça).

## Licença de Uso

Os códigos disponibilizados aqui estão sob a licença do MIT, versão 3.0 (veja o arquivo `LICENSE` em anexo para mais detalhes). Dúvidas sobre a biblioteca podem ser enviadas para o meu e-mail: carloswdecarvalho@outlook.com.
