SELECT
    P.Produto_Descricao,
    P.GruSub_ID,
    P.GraTam_ID,
    TV.Valor_Venda,
    I.Ipi_Alíquota,
    ROUND(COALESCE(I.Ipi_Alíquota / 100 * TV.Valor_Venda, 0), 2) AS Valor_IPI,
    ST.Mva AS "Mva_ICMS_ST",
    ST.Aliquota_ICMS,
    ROUND(COALESCE(ST.Mva / 100 * (TV.Valor_Venda + COALESCE(I.Ipi_Alíquota / 100 * TV.Valor_Venda, 0)), 0), 2) AS Valor_ICMS_ST
FROM
    Produtos P
    JOIN Tabelas_Valores TV 
        ON P.Valor_ID = TV.Valor_ID
    LEFT JOIN Ipi_Impostos I 
        ON P.Produto_ID = I.Produto_ID
    LEFT JOIN IcmsSt_Impostos ST 
        ON P.Produto_ID = ST.Produto_ID;

/*
"produto_descricao" "grusub_id" "gratam_id" "valor_venda"   "ipi_alíquota"  "valor_ipi" "Mva_ICMS_ST"   "aliquota_icms" "valor_icms_st"
"Produto 1" 1   1   10.50   8.00    0.84    80.00   18.00   9.07
"Produto 1" 2   2   11.00   8.00    0.88    80.00   18.00   9.50
"Produto 1" 3   3   12.00   8.00    0.96    80.00   18.00   10.37
"Produto 2" 4   4   15.00   8.00    1.20    80.00   18.00   12.96
"Produto 2" 5   5   16.00   8.00    1.28    80.00   18.00   13.82
"Produto 2" 6   6   17.00   8.00    1.36    80.00   18.00   14.69
"Produto 3" 7   7   20.00   8.00    1.60    80.00   18.00   17.28
"Produto 3" 8   8   21.00   8.00    1.68    80.00   18.00   18.14
"Produto 3" 9   9   22.00   8.00    1.76    80.00   18.00   19.01
*/