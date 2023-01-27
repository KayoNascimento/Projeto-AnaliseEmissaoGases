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
 4. Visualizar as emissões médias e máximas de cada ano.
 5. Calcular a porcentagem de aumento de emissão de 1970 a 2019.
 
 ####  OBSERVAÇÃO
 - Quando me refiro a __emissão__ não estou falando de um único gás específico, mas sim a todos os tipos de gases poluentes.
 - E a parte da __remoção__ corresponde a todos os gases que são retirados de circulação.
 
 ### 1. Analisar a distribuição de emissão e remoção de gases poluentes através dos anos.
 Essa parte da análise revela a quantidade gases poluentes por toneladas que foram emitidos e removidos no <br>
 ar atráves dos anos. <br>
 ##### CÓDIGO SQL:https://github.com/KayoNascimento/Projeto-AnaliseEmissaoGases/blob/main/Emiss%C3%A3o%20e%20Remo%C3%A7%C3%A3o%20por%20Ano.sql <BR>
 ![emissão e remoção por ano](https://github.com/KayoNascimento/Projeto-AnaliseEmissaoGases/blob/main/img/emiss%C3%A3o%20e%20remo%C3%A7%C3%A3o%20por%20ano.png) <br>
 - O maior pico foi registrado em 2003 chegando emitir __19.200.018.595,70__ de toneladas de gases poluentes.
 - Percebe-se que até 1989 não estavam contabilizando a quantidade de remoção.   
 
 ### 2. Observar a diferença na quantidade de emissão com o passar dos anos.
 Utilizando a análise acima como gancho agora mostrarei a diferença na quantidade de emissão. <br>
 ##### CÓDIGO SQL:https://github.com/KayoNascimento/Projeto-AnaliseEmissaoGases/blob/main/Diferen%C3%A7a%20Emiss%C3%A3o%20por%20ano.sql <BR>
 ![diferença de emissão](https://github.com/KayoNascimento/Projeto-AnaliseEmissaoGases/blob/main/img/diferen%C3%A7a%20de%20emiss%C3%A3o%20ano%20anterior.png) <br>
 Se observarmos com atenção pode-se notar um pico no aumento de emissões de 1989 para 1990, ao todo a diferença chega ao total de __8.128.188.451,90__ de toneladas
 de um ano para outro. E uma das possíveis causas para esse aumento espontâneo pode estar relacionada com: <br>
 - Mudanças de cálculos 
 - Modificações nos aparelhos de monitoramento
 - Inclusão de novas causas e origens, que por consequência, refletiram nos resultados final.  
 
 ### 3. Analisar a distribuição de emissão e remoção de gases poluentes por Estados brasileiros.
 Distribuição de emissão e remoção de gases por Estados brasileiros de 1970 a 2019. <br>
 ##### CÓDIGO SQL:https://github.com/KayoNascimento/Projeto-AnaliseEmissaoGases/blob/main/Emiss%C3%A3o%20e%20Remo%C3%A7%C3%A3o%20por%20Estados.sql <br>
 ![emissao e remocao por estados](https://github.com/KayoNascimento/Projeto-AnaliseEmissaoGases/blob/main/img/Emissao_Remocao_Gases_Estados%20.png) <br>
 É notório que o Estado do Pará sai em disparada nas emissões somando __7.012.580.557,70__ de toneladas de gases poluentes. Um dos principais fatores que 
 mais influenciaram nessa soma foi, a derrubada de florestas seguida da criação de gado. Por outro lado, o Estado do Amazonas contribui removendo __2.223.925.785,00__
 de toneladas de gases de circulação.
 
 ### 4. Visualizar as emissões médias e máximas de cada ano.
 ##### CÓDIGO SQL:https://github.com/KayoNascimento/Projeto-AnaliseEmissaoGases/blob/main/Emiss%C3%B5es%20m%C3%A9dias%20e%20m%C3%A1ximas%20por%20ano.sql <BR>
 ![max e media emissao](https://github.com/KayoNascimento/Projeto-AnaliseEmissaoGases/blob/main/img/Max%20e%20M%C3%A9dia%20Ano.png) <br>
 De 1990 até o pico de 2003 a média variou de __1.435.051,0__ toneladas para __2.417.225,10__, o que equivale a um aumento de __68,4%__.
 Nas máximas o valor foi de __591.600.000__ toneladas para __1.503.000.000__ aumento __154%__. <br>
 Agora de 2003 até queda de 2010 a média saiu de __2.417.225__ para __1.220.970__ uma redução de __-49%__.Nas máximas o valor foi de 
 __1.503.000.000__ para __301.600.000__ redução de __-80%__
 
 ### 5.  Calcular a porcentagem de aumento de emissão de 1970 a 2019.
 ##### CÓDIGO SQL:https://github.com/KayoNascimento/Projeto-AnaliseEmissaoGases/blob/main/Porcentagem%20do%20aumento%20de%20emiss%C3%A3o.sql <br>
 
 Depois de realizado a consulta, o resultado que aparece é um aumento de aproximadamente __88%__ nas emissões totais de 1970 a 2019.
 
 ### RELATÓRIO COMPLETO
 ![relatório completo](https://github.com/KayoNascimento/Projeto-AnaliseEmissaoGases/blob/main/img/relat%C3%B3rio%20completo.png)
 
 ### CONCLUSÃO
 Por fim observamos que a liberação dos gases poluentes no Brasil, e na maioria dos países, tende a seguir aumentando sendo que os grandes responsáveis 
 pela liberação desses gases, são muito importantes nos pilares econômicos. Como a pecuária, o setor de transportes, geração de energia e o setor industrial.  
 E pensando em maneiras de amenizar essa situação, uma delas seria o incentivo a pesquisas para a sustentabilidade, reciclagem de resíduos, controle do 
 desmatamento, reflorestamento e energias renováveis. 
 
 
 ### AUTOR
 Kayo do Nascimento Nunes
 ### CONTATO
 email:kayonunes99@gmail.com
 
 
  
  
  
