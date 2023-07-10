-- TABELA IMPOSTOS IPI
CREATE TABLE Ipi_Impostos (
    Ipi_ID SERIAL PRIMARY KEY,
    Produto_ID INT NOT NULL,
    Ipi_Alíquota DECIMAL(10,2)
);

ALTER TABLE Ipi_Impostos
ADD CONSTRAINT fk_Ipi_Impostos_Produtos
FOREIGN KEY (Produto_ID) REFERENCES Produtos(Produto_ID);

-- TABELA IMPOSTOS ICMS ST
CREATE TABLE IcmsSt_Impostos (
    IcmsST_ID INT PRIMARY KEY,
    Produto_ID INT NOT NULL,
    Mva DECIMAL(10,2) NOT NULL,
    Aliquota_ICMS DECIMAL(10,2) NOT NULL
);

ALTER TABLE IcmsSt_Impostos
ADD CONSTRAINT fk_IcmsSt_Impostos_Produtos
FOREIGN KEY (Produto_ID) REFERENCES Produtos(Produto_ID);
