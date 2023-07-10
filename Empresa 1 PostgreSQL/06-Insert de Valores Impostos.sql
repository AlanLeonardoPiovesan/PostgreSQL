-- INSERT DE VALORES

-- TABELA IPI
INSERT INTO Ipi_Impostos (Produto_ID, Ipi_Alíquota)
SELECT Produto_ID, 8.00 FROM Produtos;

/*
select *
from ipi_impostos;

"ipi_id"	"produto_id"	"ipi_alíquota"
1	1	8.00
2	2	8.00
3	3	8.00
4	4	8.00
5	5	8.00
6	6	8.00
7	7	8.00
8	8	8.00
9	9	8.00
*/

-- TABELA ICMS ST
INSERT INTO IcmsSt_Impostos (IcmsST_ID, Produto_ID, Mva, Aliquota_ICMS)
SELECT Produto_ID, Produto_ID, 80.00, 18.00 FROM Produtos;

/*
select *
from icmsst_impostos;

"icmsst_id"	"produto_id"	"mva"	"aliquota_icms"
1	1	80.00	18.00
2	2	80.00	18.00
3	3	80.00	18.00
4	4	80.00	18.00
5	5	80.00	18.00
6	6	80.00	18.00
7	7	80.00	18.00
8	8	80.00	18.00
9	9	80.00	18.00
*/