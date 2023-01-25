## Projeto - Analise de emissão de gases poluentes no Brasil de 1970 a 2019

### INTRODUÇÃO
A razão pela qual eu escolhi trabalhar com esses dados de emissões de gases poluentes se deve ao fato de que atualmente 
uma das grandes preocupações da ONU e das grandes potências mundiais assim como o mundo inteiro é o crescente aumento do __aquecimeto global__,que
por sua vez causa diversas consequências no clima e na temperaturas, alterando o seu padrão natural. E as consequencias 
que surgem por essas mudanças radicais no clima ja estão acontecendo seja através de temperaturas mais altas,tempestades,
secas e até perda de espécies.

E o principal causador do aquecimento global é a __emissão de gases poluentes__ na nossa atmosfera. As origens desses gases são
muitas mas as principais seriam a queima de combustíveis fósseis, pecuária, queimada, desmatamento, má gestão de resíduos e diversas
outras causas.

### TECNOLOGIAS UTILIZADAS
- BigQuery(Google Cloud)
- SQL
- Power BI

### DESCRIÇÃO DA BASE DE DADOS:
 Esses dados abrangem somente o Brasil cobrindo os anos de 1970 a 2019.<br>
 A base apresenta três tabelas:
 - brasil - 12 colunas e 454.850 linhas 
 - uf - 13 colunas e  3.276.750 linhas
 - município -  14 colunas e 14.387.351 linhas
 
 As que eu utilizei na analise foram a tabela 'brasil' e 'município' <br>
 #### Tabela Brasil
 ![descrição da tabela brasil 1](https://github.com/KayoNascimento/Projeto-AnaliseEmissaoGases/blob/main/img/descri%C3%A7%C3%A3o%20tabela%20brasil%201.png)<br>
 ![descrição da tabela brasil 2](https://github.com/KayoNascimento/Projeto-AnaliseEmissaoGases/blob/main/img/descri%C3%A7%C3%A3o%20tabela%20brasil%202.png)<br>
 #### Tabela Município
 ![descrição da tabela municipio 1](https://github.com/KayoNascimento/Projeto-AnaliseEmissaoGases/blob/main/img/descri%C3%A7%C3%A3o%20tabela%20municipio%201.png)<br>
 ![descrição da tabela municipio 2](https://github.com/KayoNascimento/Projeto-AnaliseEmissaoGases/blob/main/img/descri%C3%A7%C3%A3o%20tabela%20municipio%202.png)
 
 Os dados utilizados nessa análise foram retirados do https://basedosdados.org/dataset/br-seeg-emissoes?bdm_table=brasil. <br>
 
 ### OBJETIVOS DA ANÁLISE 
 1. Analisar a distribuição de emissão e remoção de gases poluentes através dos anos.
 2. Observar a diferença na quantidade de emissão com o passar dos anos.
 3. Analisar a distribuição de emissão e remoção de gases poluentes por Estados brasileiros.
 4. Calcular as emissões médias e máximas de cada ano.
 5. Calcular a porcentagem de aumento de emissão de 1970 a 2019.
 
 ####  OBSERVAÇÃO
 - Quando me refiro a __emissão__ não estou falando de um único gás específico, mas sim de todos os tipos gases poluentes.
 - E a parte da __remoção__ corresponde a todos os gases que são retirados de circulação
 
 ### 1. Analisar a distribuição de emissão e remoção de gases poluentes através dos anos.
