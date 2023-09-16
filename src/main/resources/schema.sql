CREATE TABLE ENDERECO
(
    ID          INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    LOGRADOURO  VARCHAR,
    CEP         VARCHAR(255),
    COMPLEMENTO VARCHAR(255),
    BAIRRO      VARCHAR(255),
    LOCALIDADE  VARCHAR(255),
    UF          VARCHAR(255)
);

CREATE TABLE FORNECEDOR
(
    ID            INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    RAZAO_SOCIAL  VARCHAR(255),
    NOME_CONTATO VARCHAR (255),
    CNPJ          VARCHAR(255),
    EMAIL_CONTATO VARCHAR(255),
    ATIVIDADES    VARCHAR(255),
    ID_ENDERECO   INTEGER REFERENCES ENDERECO (ID)
);