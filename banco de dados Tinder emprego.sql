CREATE DATABASE IF NOT EXISTS usuario;
USE usuario;

CREATE TABLE usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome_usuario VARCHAR(45) NOT NULL,
    CPF_usuario VARCHAR(11),
    Email_usuario VARCHAR(45),
    Numero_usuario VARCHAR(20)
);

CREATE TABLE candidato (
    id_candidato INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    nome_candidato VARCHAR(45) NOT NULL,
    CPF_candidato VARCHAR(11),
    contato_candidato VARCHAR(20),
    curriculo_candidato TEXT,
    formacaoAcademica_candidato TEXT,
    habilidades_candidato TEXT,
    competenciasTecnicas_candidato TEXT,
    vagaPretendida_candidato VARCHAR(30),

    CONSTRAINT fk_candidato_usuario
    FOREIGN KEY (id_usuario)
    REFERENCES usuario(id_usuario)
);

CREATE TABLE empresa (
    id_empresa INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    CNPJ_empresa VARCHAR(20) NOT NULL,
    Contatos_empresa VARCHAR(20),
    NomeEmpresa_empresa VARCHAR(100),
    EmailCorporativo_empresa VARCHAR(30),
    CEP_empresa VARCHAR(20),
    Web_site VARCHAR(50),
    VagaPretendida_empresa VARCHAR(45),
    DatadeFundacao_empresa DATE,
    NumerosFuncionarios_empresa INT,
    Reputacao_empresa VARCHAR(10),
    Tipo_empresa TEXT,

    CONSTRAINT fk_empresa_usuario
    FOREIGN KEY(id_usuario)
    REFERENCES usuario(id_usuario)
);

CREATE TABLE Experiencias (
    id_Experiencias INT PRIMARY KEY AUTO_INCREMENT,
    id_candidato INT,
    AreaQueTrabalha_Experiencias VARCHAR(45) NOT NULL,
    TempoAtua_Experiencias VARCHAR(45),
    cargo_Experiencias VARCHAR(45),
    Datatermino_Experiencias DATE,
    DataInicio_Experiencias DATE,
    HabilidadesAplicadas_Experiencias TEXT,
    TipoVinculo_Experiencias VARCHAR(45),

    CONSTRAINT fk_experiencia_candidato
    FOREIGN KEY (id_candidato)
    REFERENCES candidato(id_candidato)
);

CREATE TABLE Curriculo (
    id_Curriculo INT PRIMARY KEY AUTO_INCREMENT,
    id_candidato INT,
    id_Experiencias INT,
    Nome_curriculo VARCHAR(45) NOT NULL,
    endereco_curriculo VARCHAR(20),
    contato_curriculo VARCHAR(20),
    Portfolio_curriculo VARCHAR(45),
    Cargo_curriculo VARCHAR(40),
    cursos_curriculo TEXT,
    conhecimentos_curriculo TEXT,

    CONSTRAINT fk_curriculo_candidato
    FOREIGN KEY(id_candidato)
    REFERENCES candidato(id_candidato),

    CONSTRAINT fk_curriculo_experiencias
    FOREIGN KEY(id_Experiencias)
    REFERENCES Experiencias(id_Experiencias)
);

CREATE TABLE vaga (
    id_vaga INT PRIMARY KEY AUTO_INCREMENT,
    id_empresa INT,
    TituloVaga_vaga VARCHAR(20),
    Descricao_vaga TEXT,
    salario_vaga DECIMAL(10,2),
    DataPublicacao_vaga DATE,
    DataExpiracao_vaga DATE,
    ContatoEmpresa_vaga VARCHAR(20),
    ExperienciasExigidas_vaga VARCHAR(100),
    status_vaga VARCHAR(45),

    CONSTRAINT fk_vaga_empresa
    FOREIGN KEY (id_empresa)
    REFERENCES empresa(id_empresa)
);

CREATE TABLE avaliacao (
    id_avaliacao INT PRIMARY KEY AUTO_INCREMENT,
    id_empresa INT,
    id_candidato INT,
    nota_avaliacao VARCHAR(10),
    comentario_avaliacao VARCHAR(250),

    CONSTRAINT fk_avaliacao_empresa
    FOREIGN KEY (id_empresa)
    REFERENCES empresa(id_empresa),

    CONSTRAINT fk_avaliacao_candidato
    FOREIGN KEY (id_candidato)
    REFERENCES candidato(id_candidato)
);

CREATE TABLE Mattch (
    id_Mattch INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    id_empresa INT,
    id_candidato INT,
    UserCandidato_Mattch INT NOT NULL,
    UserEmpresa_Mattch INT,
    DataOcorreu_Mattch DATE,
    likes_Mattch INT,

    CONSTRAINT fk_match_usuario
    FOREIGN KEY(id_usuario)
    REFERENCES usuario(id_usuario),

    CONSTRAINT fk_match_empresa
    FOREIGN KEY (id_empresa)
    REFERENCES empresa(id_empresa),

    CONSTRAINT fk_match_candidato
    FOREIGN KEY (id_candidato)
    REFERENCES candidato(id_candidato)
);

CREATE TABLE mensagem (
    id_mensagem INT PRIMARY KEY AUTO_INCREMENT,
    id_empresa INT,
    id_candidato INT,
    id_Mattch INT,
    ConteudoTexto VARCHAR(45),
    tipoMensagem BOOLEAN,
    DataEnvio DATETIME,
    Vizualizacao BOOLEAN,
    anexo VARCHAR(20),

    CONSTRAINT fk_mensagem_empresa
    FOREIGN KEY (id_empresa)
    REFERENCES empresa(id_empresa),

    CONSTRAINT fk_mensagem_candidato
    FOREIGN KEY (id_candidato)
    REFERENCES candidato(id_candidato),

    CONSTRAINT fk_mensagem_match
    FOREIGN KEY (id_Mattch)
    REFERENCES Mattch(id_Mattch)
);

CREATE TABLE notificacao (
    id_notificacao INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    identificacao_notificacao VARCHAR(45),
    titulo_notificacao VARCHAR(45),
    DatadeCriacao_notificacao DATETIME,
    DataEnvio_notificacao DATETIME,

    CONSTRAINT fk_notificacao_usuario
    FOREIGN KEY(id_usuario)
    REFERENCES usuario(id_usuario)
);

-- =====================================================
-- INSERT INTO
-- =====================================================

INSERT INTO usuario 
(nome_usuario, CPF_usuario, Email_usuario, Numero_usuario)
VALUES
('Lucas Alves', '12345678901', 'lucas@gmail.com', '61999999999'),
('Maria Souza', '98765432100', 'maria@gmail.com', '61888888888');

SELECT * FROM usuario;

INSERT INTO candidato
(id_usuario, nome_candidato, CPF_candidato, contato_candidato, curriculo_candidato,
formacaoAcademica_candidato, habilidades_candidato,
competenciasTecnicas_candidato, vagaPretendida_candidato)
VALUES
(1, 'Lucas Alves', '12345678901', '61999999999',
'Curriculo Desenvolvedor',
'ADS',
'Java, SQL',
'Backend',
'Desenvolvedor');

SELECT * FROM candidato;

INSERT INTO empresa
(id_usuario, CNPJ_empresa, Contatos_empresa, NomeEmpresa_empresa,
EmailCorporativo_empresa, CEP_empresa, Web_site,
VagaPretendida_empresa, DatadeFundacao_empresa,
NumerosFuncionarios_empresa, Reputacao_empresa, Tipo_empresa)
VALUES
(2, '11222333000199', '6133333333', 'Tech Solutions',
'contato@tech.com', '70000000', 'www.tech.com',
'Programador', '2010-05-10', 120, 'Alta', 'Tecnologia');

SELECT * FROM empresa;

INSERT INTO Experiencias
(id_candidato, AreaQueTrabalha_Experiencias, TempoAtua_Experiencias,
cargo_Experiencias, Datatermino_Experiencias,
DataInicio_Experiencias, HabilidadesAplicadas_Experiencias,
TipoVinculo_Experiencias)
VALUES
(1, 'TI', '2 anos', 'Desenvolvedor Jr',
'2025-01-01', '2023-01-01',
'Java, MySQL', 'CLT');

SELECT * FROM Experiencias;

INSERT INTO Curriculo
(id_candidato, id_Experiencias, Nome_curriculo,
endereco_curriculo, contato_curriculo,
Portfolio_curriculo, Cargo_curriculo,
cursos_curriculo, conhecimentos_curriculo)
VALUES
(1, 1, 'Curriculo Lucas',
'Cruzeiro-DF', '61999999999',
'github.com/lucas', 'Programador',
'Java e Banco de Dados',
'POO e SQL');

SELECT * FROM Curriculo;

INSERT INTO vaga
(id_empresa, TituloVaga_vaga, Descricao_vaga,
salario_vaga, DataPublicacao_vaga,
DataExpiracao_vaga, ContatoEmpresa_vaga,
ExperienciasExigidas_vaga, status_vaga)
VALUES
(1, 'Dev Java', 'Desenvolvimento Backend',
4500.00, '2026-05-10',
'2026-06-10', '6133333333',
'Java e MySQL', 'Aberta');

SELECT * FROM vaga;

-- =====================================================
-- CREATE TABLE CÓPIA
-- =====================================================

CREATE TABLE copia_usuario AS
SELECT * FROM usuario;

SELECT * FROM copia_usuario;

-- =====================================================
-- TRUNCATE
-- =====================================================

TRUNCATE TABLE copia_usuario;

SELECT * FROM copia_usuario;

-- =====================================================
-- ALTER TABLE
-- =====================================================

ALTER TABLE copia_usuario
ADD coluna_teste VARCHAR(30);

DESCRIBE copia_usuario;

-- =====================================================
-- DROP TABLE
-- =====================================================

DROP TABLE copia_usuario;

-- =====================================================
-- UPDATE
-- =====================================================

UPDATE usuario
SET nome_usuario = 'Lucas Oliveira'
WHERE id_usuario = 1;

SELECT * FROM usuario;

-- =====================================================
-- DELETE
-- =====================================================

DELETE FROM usuario
WHERE id_usuario = 2;

SELECT * FROM usuario;