SELECT  
    ano,
    tipo_emissao,
    round(sum(emissao),1) emissao_total,
    round(sum(emissao) -(lag(sum(emissao))over(order by ano)),1) diferenca_ano_anterior,
    round((sum(emissao)/lag(sum(emissao))over(order by ano)-1)*100 ,2) diferenca_percentual

FROM `basedosdados.br_seeg_emissoes.brasil`  
where
    tipo_emissao = 'Emissão' and 
    emissao is not null 
 group by 1,2
order by 1