SELECT
    P.Produto_ID AS "Código",
    P.Produto_Descricao AS "Descrição",
    GRU.Grupo_Descricao AS "Grupo",
    SUB.SubGrupo_Descricao AS "SubGrupo",
    G.Grade_Descricao AS "GradeDescrição",
    T.Tamanho_Descricao AS "Tamanho",
    EG.EstGra_Quantidade AS "QtdGrade",
    TV.Tabela_ID AS "CódigoTabela",
    TA.Tabela_Descricao AS "DescriçãoTabela",
    TV.Valor_Venda AS "ValorProduto",
    I.Ipi_Alíquota,
    ROUND(COALESCE(I.Ipi_Alíquota / 100 * TV.Valor_Venda, 0), 2) AS "Valor_IPI",
    ST.Mva AS "Mva_ICMS_ST",
    ST.Aliquota_ICMS,
    ROUND((TV.Valor_Venda + (TV.Valor_Venda * ST.Mva / 100)) * ST.Aliquota_ICMS / 100, 2) AS "Valor_ICMS_ST"
FROM
    Produtos P
    JOIN Grades_Tamanhos GT 
        ON P.GraTam_ID = GT.GraTam_ID
    JOIN Grades G 
        ON GT.Grade_ID = G.Grade_ID
    JOIN Grupos_SubGrupos GS 
        ON P.GruSub_ID = GS.GruSub_ID
    JOIN Grupos GRU 
        ON GS.Grupo_ID = GRU.Grupo_ID
    JOIN SubGrupos SUB 
        ON GS.SubGrupo_ID = SUB.SubGrupo_ID
    JOIN Estoques_Grades EG 
        ON P.EstGra_ID = EG.EstGra_ID
    JOIN Tabelas_Valores TV 
        ON P.Valor_ID = TV.Valor_ID
    JOIN Tabelas TA 
        ON TV.Tabela_ID = TA.Tabela_ID
    JOIN Tamanhos T 
        ON GT.Tamanho_ID = T.Tamanho_ID
    LEFT JOIN Ipi_Impostos I 
        ON P.Produto_ID = I.Produto_ID
    LEFT JOIN IcmsSt_Impostos ST 
        ON P.Produto_ID = ST.Produto_ID;

/*
"Código"    "Descrição" "Grupo" "SubGrupo"  "GradeDescrição"    "Tamanho"   "QtdGrade"  "CódigoTabela"  "DescriçãoTabela"   "ValorProduto"  "ipi_alíquota"  "Valor_IPI" "Mva_ICMS_ST"   "aliquota_icms" "Valor_ICMS_ST"
1   "Produto 1" "Grupo 1"   "Subgrupo 1"    "Camiseta"  "Pequeno"   100 1   "Tabela 1"  10.50   8.00    0.84    80.00   18.00   3.40
2   "Produto 1" "Grupo 1"   "Subgrupo 2"    "Camiseta"  "Médio"     200 2   "Tabela 2"  11.00   8.00    0.88    80.00   18.00   3.56
3   "Produto 1" "Grupo 1"   "Subgrupo 3"    "Camiseta"  "Grande"    150 3   "Tabela 3"  12.00   8.00    0.96    80.00   18.00   3.89
4   "Produto 2" "Grupo 2"   "Subgrupo 1"    "Blusa"     "Pequeno"   10  1   "Tabela 1"  15.00   8.00    1.20    80.00   18.00   4.86
5   "Produto 2" "Grupo 2"   "Subgrupo 2"    "Blusa"     "Médio"     60  2   "Tabela 2"  16.00   8.00    1.28    80.00   18.00   5.18
6   "Produto 2" "Grupo 2"   "Subgrupo 3"    "Blusa"     "Grande"    190 3   "Tabela 3"  17.00   8.00    1.36    80.00   18.00   5.51
7   "Produto 3" "Grupo 3"   "Subgrupo 1"    "Calça"     "Pequeno"   70  1   "Tabela 1"  20.00   8.00    1.60    80.00   18.00   6.48
8   "Produto 3" "Grupo 3"   "Subgrupo 2"    "Calça"     "Médio"     50  2   "Tabela 2"  21.00   8.00    1.68    80.00   18.00   6.80
9   "Produto 3" "Grupo 3"   "Subgrupo 3"    "Calça"     "Grande"    120 3   "Tabela 3"  22.00   8.00    1.76    80.00   18.00   7.13
*/