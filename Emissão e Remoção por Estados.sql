select
    sigla_uf,
    round(sum(case 
      when tipo_emissao = 'Emissão' then emissao
    end),1) emissao,
     sum(case 
      when tipo_emissao = 'Remoção' then emissao
    end) remocao
    
  from
  (
  select
   sigla_uf,tipo_emissao,emissao 
  from`basedosdados.br_seeg_emissoes.municipio` 
  where
    tipo_emissao = 'Remoção'
    and emissao <= 0 
    and emissao is not null
  union all
    select
    sigla_uf,tipo_emissao,emissao 
  from`basedosdados.br_seeg_emissoes.municipio` 
  where
    tipo_emissao = 'Emissão'
    and emissao is not null  
  )
  where sigla_uf not in ('NA')
  group by 1
 
