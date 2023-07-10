-- INSERT DE VALORES

-- TABELA Tamanhos
INSERT INTO Tamanhos (Tamanho_Descricao)
VALUES ('Pequeno'), ('Médio'), ('Grande');

/*
select *
from tamanhos;

"tamanho_id"  "tamanho_descricao"
1      "Pequeno"
2      "Médio"
3      "Grande"
*/

-- TABELA Grades
INSERT INTO Grades (Grade_Descricao)
VALUES ('Camiseta'), ('Blusa'), ('Calça');

/*
select *
from Grades;

"grade_id"    "grade_descricao"
1      "Camiseta"
2      "Blusa"
3      "Calça"
*/

-- TABELA Grades_Tamanhos
INSERT INTO Grades_Tamanhos (Grade_ID, Tamanho_ID)
VALUES (1, 1), (1, 2), (1, 3),
       (2, 1), (2, 2), (2, 3),
       (3, 1), (3, 2), (3, 3);

/*
select *
from Grades_Tamanhos;

"gratam_id"   "grade_id"    "tamanho_id"
1      1      1
2      1      2
3      1      3
4      2      1
5      2      2
6      2      3
7      3      1
8      3      2
9      3      3
*/

-- TABELA Grupos
INSERT INTO Grupos (Grupo_Descricao)
VALUES ('Grupo 1'), ('Grupo 2'), ('Grupo 3');

/*
select *
from Grupos;

"grupo_id"    "grupo_descricao"
1      "Grupo 1"
2      "Grupo 2"
3      "Grupo 3"
*/

-- TABELA SubGrupos
INSERT INTO SubGrupos (SubGrupo_Descricao)
VALUES ('Subgrupo 1'), ('Subgrupo 2'), ('Subgrupo 3');

/*
select *
from SubGrupos;

"subgrupo_id" "subgrupo_descricao"
1      "Subgrupo 1"
2      "Subgrupo 2"
3      "Subgrupo 3"
*/

-- TABELA Grupos_SubGrupos
INSERT INTO Grupos_SubGrupos (Grupo_ID, SubGrupo_ID)
VALUES (1, 1), (1, 2), (1, 3),
       (2, 1), (2, 2), (2, 3),
       (3, 1), (3, 2), (3, 3);

/*
select *
from Grupos_SubGrupos;

"grusub_id"   "grupo_id"    "subgrupo_id"
1      1      1
2      1      2
3      1      3
4      2      1
5      2      2
6      2      3
7      3      1
8      3      2
9      3      3
*/
-- TABELA Tabelas
INSERT INTO Tabelas (Tabela_Descricao)
VALUES ('Tabela 1'), ('Tabela 2'), ('Tabela 3');

/*
select *
from Tabelas;

"tabela_id"   "tabela_descricao"
1      "Tabela 1"
2      "Tabela 2"
3      "Tabela 3"
*/

-- TABELA Tabelas_Valores
INSERT INTO Tabelas_Valores (Produto_ID, Tabela_ID, Valor_Venda)
VALUES (1, 1, 10.50), (1, 2, 11.00), (1, 3, 12.00),
       (2, 1, 15.00), (2, 2, 16.00), (2, 3, 17.00),
       (3, 1, 20.00), (3, 2, 21.00), (3, 3, 22.00);

/*
select *
from Tabelas_Valores;

"valor_id"    "produto_id"  "tabela_id"   "valor_venda"
1      1      1      10.50
2      1      2      11.00
3      1      3      12.00
4      2      1      15.00
5      2      2      16.00
6      2      3      17.00
7      3      1      20.00
8      3      2      21.00
9      3      3      22.00
*/

-- TABELA Estoques_Grades
INSERT INTO Estoques_Grades (GraTam_ID, EstGra_Quantidade)
VALUES (1, 100), 
       (2, 200), 
       (3, 150),
       (4, 10),
       (5, 60),
       (6, 190),
       (7, 70),
       (8, 50),
       (9, 120);

/*
select *
from Estoques_Grades;

"estgra_id"   "gratam_id"   "estgra_quantidade"
1      1      100
2      2      200
3      3      150
4      4      10
5      5      60
6      6      190
7      7      70
8      8      50
9      9      120
*/

-- TABELA Produtos
INSERT INTO Produtos (Produto_Descricao, GruSub_ID, GraTam_ID, Valor_ID, EstGra_ID)
VALUES ('Produto 1', 1, 1, 1, 1),
       ('Produto 1', 2, 2, 2, 2),
       ('Produto 1', 3, 3, 3, 3),
       ('Produto 2', 4, 4, 4, 4),
       ('Produto 2', 5, 5, 5, 5),
       ('Produto 2', 6, 6, 6, 6),
       ('Produto 3', 7, 7, 7, 7),
       ('Produto 3', 8, 8, 8, 8),
       ('Produto 3', 9, 9, 9, 9);

/*
select *
from Produtos;

"produto_id"  "produto_descricao"  "grusub_id"   "gratam_id"   "valor_id"    "estgra_id"
1      "Produto 1"   1      1      1      1
2      "Produto 1"   2      2      2      2
3      "Produto 1"   3      3      3      3
4      "Produto 2"   4      4      4      4
5      "Produto 2"   5      5      5      5
6      "Produto 2"   6      6      6      6
7      "Produto 3"   7      7      7      7
8      "Produto 3"   8      8      8      8
9      "Produto 3"   9      9      9      9
*/