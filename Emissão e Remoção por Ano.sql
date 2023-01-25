 select
  /*
  Comecei utilizando duas instruções CASE, uma para retornar somente
  a 'Emissão' e a outra pra retornar 'Remoção'. Após o resultado das 
  CASES eu faço a soma com o SUM e reduzo o resultado para uma casa decimal
  com o comando ROUND. Depois eu agrupo os resultados por ano com o GROUP BY.   
  */
    ano,
    round(sum(case 
      when tipo_emissao = 'Emissão' then emissao
    end),1) emissao,
     sum(case 
      when tipo_emissao = 'Remoção' then emissao
    end) remocao
    
  from
  (
  /*
  Essa parte foi feita atráves de duas cosultas onde a primeria onde 
  eu detalho o tipo de emissão para 'Remoção' e na segunda somente para
  'Emissão'.As duas consultas não retornam valores nulos. Por fim eu 
  junto as duas consultas com instrução UNION ALL. 
  */
  select
    ano,tipo_emissao,emissao 
  from`basedosdados.br_seeg_emissoes.brasil` 
  where
    tipo_emissao = 'Remoção'
    and emissao <= 0 
    and emissao is not null
  union all
    select
    ano,tipo_emissao,emissao 
  from`basedosdados.br_seeg_emissoes.brasil` 
  where
    tipo_emissao = 'Emissão'
    and emissao is not null  
  )
  group by 1
  order by 1