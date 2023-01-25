
select
--Fazendo o cálculo pra descobrir a porcentagem do aumento de emissão 
round((_2019 - _1970) / _2019 * 100,1) variacao_percentual_anual_emissao
from
(
  /*
  Começo utilizando duas instruçôes CASE para separar os resultados
  para cada ano especifíco, depois faço a soma com o SUM e depois 
  utilizo o ROUND para reduzir para uma casa decimal. No comando WHERE
  eu filtro os valores nulos,coloco o tipo de emissão e coloco os anos
  especifícos.
  */
SELECT
  round(sum(case
    when ano = 1970 then emissao
  end),1) _1970,
  round(sum(case
    when ano = 2019 then emissao
  end),1) _2019
FROM `basedosdados.br_seeg_emissoes.brasil` 
where  
  tipo_emissao = 'Emissão' and 
  emissao is not null and 
  ano in (1970,2019)
)