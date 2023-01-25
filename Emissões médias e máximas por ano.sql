/*Calculando a Média e a Máxima de emissão agrupado por ano */
SELECT
  ano,
  max(emissao) _max,
  round(avg(emissao),1) _media 
FROM `basedosdados.br_seeg_emissoes.brasil`
where
  emissao is not null
  and tipo_emissao = 'Emissão'
group by 1  