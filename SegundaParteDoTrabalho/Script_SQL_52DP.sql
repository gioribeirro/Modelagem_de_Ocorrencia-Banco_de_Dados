-- PROJETO ACADÊMICO: 52º DISTRITO POLICIAL - PARQUE SÃO JORGE
-- SCRIPT SQL 
-- Banco de dados: db_52dp
-- Modelo: 11 tabelas
-- Dados: fictícios, utilizados exclusivamente para fins acadêmicos.
--

-- 1. CRIAÇÃO E SELEÇÃO DO BANCO DE DADOS
CREATE DATABASE IF NOT EXISTS db_52dp
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_0900_ai_ci;
USE db_52dp;
SET NAMES utf8mb4;

-- 2. REMOÇÃO CONTROLADA DA ESTRUTURA ANTERIOR
-- A ordem respeita as dependências das chaves estrangeiras.
DROP TRIGGER IF EXISTS trg_movimentacao_cargo_bi;
DROP TRIGGER IF EXISTS trg_movimentacao_cargo_bu;
DROP TRIGGER IF EXISTS trg_servidor_cargo_bu;

DROP TABLE IF EXISTS MOVIMENTACAO;
DROP TABLE IF EXISTS EVIDENCIA;
DROP TABLE IF EXISTS DEPOIMENTO;
DROP TABLE IF EXISTS INQUERITO;
DROP TABLE IF EXISTS ENVOLVIMENTO;
DROP TABLE IF EXISTS OCORRENCIA;
DROP TABLE IF EXISTS ADVOGADO;
DROP TABLE IF EXISTS SERVIDOR;
DROP TABLE IF EXISTS NATUREZA_FATO;
DROP TABLE IF EXISTS PESSOA;
DROP TABLE IF EXISTS UNIDADE_POLICIAL;

-- 3. CRIAÇÃO DAS 11 TABELAS

-- 3.1 UNIDADE_POLICIAL: dados da unidade policial.
CREATE TABLE UNIDADE_POLICIAL (
    id_unidade    INTEGER       NOT NULL AUTO_INCREMENT,
    nome          VARCHAR(120)  NOT NULL,
    endereco      VARCHAR(150)  NOT NULL,
    tipo_unidade  VARCHAR(60)   NOT NULL,
    cidade        VARCHAR(80)   NOT NULL,
    CONSTRAINT pk_unidade_policial PRIMARY KEY (id_unidade)
) ENGINE = InnoDB;

-- 3.2 PESSOA: superentidade com dados comuns das pessoas cadastradas.
CREATE TABLE PESSOA (
    id_pessoa           INTEGER       NOT NULL AUTO_INCREMENT,
    nome_ficticio       VARCHAR(120)  NOT NULL,
    documento_ficticio  VARCHAR(30)   NOT NULL,
    observacao          VARCHAR(200)  DEFAULT NULL,
    contato_ficticio    VARCHAR(20)   NOT NULL,
    CONSTRAINT pk_pessoa PRIMARY KEY (id_pessoa)
) ENGINE = InnoDB;

-- 3.3 NATUREZA_FATO: classificação da natureza e gravidade do fato.
CREATE TABLE NATUREZA_FATO (
    id_natureza  INTEGER       NOT NULL AUTO_INCREMENT,
    descricao    VARCHAR(100)  NOT NULL,
    gravidade    VARCHAR(20)   NOT NULL,
    CONSTRAINT pk_natureza_fato PRIMARY KEY (id_natureza)
) ENGINE = InnoDB;

-- 3.4 SERVIDOR: especialização de PESSOA, vinculada a uma unidade.
CREATE TABLE SERVIDOR (
    id_servidor         INTEGER      NOT NULL AUTO_INCREMENT,
    id_pessoa           INTEGER      NOT NULL,
    id_unidade          INTEGER      NOT NULL,
    cargo               VARCHAR(60)  DEFAULT NULL,
    matricula_ficticia  VARCHAR(20)  NOT NULL,
    CONSTRAINT pk_servidor PRIMARY KEY (id_servidor),
    CONSTRAINT uq_servidor_pessoa UNIQUE (id_pessoa),
    CONSTRAINT fk_servidor_pessoa FOREIGN KEY (id_pessoa)
        REFERENCES PESSOA (id_pessoa),
    CONSTRAINT fk_servidor_unidade FOREIGN KEY (id_unidade)
        REFERENCES UNIDADE_POLICIAL (id_unidade),
    CONSTRAINT chk_servidor_cargo CHECK (
        cargo IN ('Delegado', 'Escrivão', 'Investigador/Agente')
    )
) ENGINE = InnoDB;

-- 3.5 ADVOGADO: especialização de PESSOA, identificada pela OAB.
CREATE TABLE ADVOGADO (
    id_oab     VARCHAR(20)  NOT NULL,
    id_pessoa  INTEGER      NOT NULL,
    CONSTRAINT pk_advogado PRIMARY KEY (id_oab),
    CONSTRAINT uq_advogado_pessoa UNIQUE (id_pessoa),
    CONSTRAINT fk_advogado_pessoa FOREIGN KEY (id_pessoa)
        REFERENCES PESSOA (id_pessoa)
) ENGINE = InnoDB;

-- 3.6 OCORRENCIA: registro dos fatos comunicados à unidade policial.
-- id_servidor e status são opcionais, conforme a modelagem documentada.
CREATE TABLE OCORRENCIA (
    id_ocorrencia   INTEGER       NOT NULL AUTO_INCREMENT,
    id_unidade      INTEGER       NOT NULL,
    id_natureza     INTEGER       NOT NULL,
    id_servidor     INTEGER       DEFAULT NULL,
    canal_registro  VARCHAR(20)   NOT NULL,
    data_registro   DATETIME      NOT NULL,
    localidade      VARCHAR(120)  NOT NULL,
    status          VARCHAR(30)   DEFAULT NULL,
    relato_fatos    TEXT          NOT NULL,
    CONSTRAINT pk_ocorrencia PRIMARY KEY (id_ocorrencia),
    CONSTRAINT fk_ocorrencia_unidade FOREIGN KEY (id_unidade)
        REFERENCES UNIDADE_POLICIAL (id_unidade),
    CONSTRAINT fk_ocorrencia_natureza FOREIGN KEY (id_natureza)
        REFERENCES NATUREZA_FATO (id_natureza),
    CONSTRAINT fk_ocorrencia_servidor FOREIGN KEY (id_servidor)
        REFERENCES SERVIDOR (id_servidor),
    CONSTRAINT chk_ocorrencia_canal CHECK (
        canal_registro IN ('Presencial', 'Online')
    )
    CONSTRAINT chk_ocorrencia_status CHECK (
        status IN (
            'Em análise', 'Em investigação',
            'Convertida em inquérito', 'Cancelada'
        )
    )
) ENGINE = InnoDB;

-- 3.7 ENVOLVIMENTO: associação entre PESSOA e OCORRENCIA.
-- A PK é composta por id_pessoa + id_ocorrencia; id_oab é opcional.
CREATE TABLE ENVOLVIMENTO (
    id_pessoa      INTEGER      NOT NULL,
    id_ocorrencia  INTEGER      NOT NULL,
    id_oab         VARCHAR(20)  DEFAULT NULL,
    papel          VARCHAR(30)  NOT NULL,
    CONSTRAINT pk_envolvimento PRIMARY KEY (id_pessoa, id_ocorrencia),
    CONSTRAINT fk_envolvimento_pessoa FOREIGN KEY (id_pessoa)
        REFERENCES PESSOA (id_pessoa),
    CONSTRAINT fk_envolvimento_ocorrencia FOREIGN KEY (id_ocorrencia)
        REFERENCES OCORRENCIA (id_ocorrencia),
    CONSTRAINT fk_envolvimento_advogado FOREIGN KEY (id_oab)
        REFERENCES ADVOGADO (id_oab),
    CONSTRAINT chk_envolvimento_papel CHECK (papel <> 'Advogado')
) ENGINE = InnoDB;

-- 3.8 INQUERITO: no máximo um inquérito para cada ocorrência.
CREATE TABLE INQUERITO (
    id_inquerito    INTEGER      NOT NULL AUTO_INCREMENT,
    id_ocorrencia   INTEGER      NOT NULL,
    data_abertura   DATE         NOT NULL,
    data_conclusao  DATE         DEFAULT NULL,
    status          VARCHAR(30)  NOT NULL,
    prioridade      VARCHAR(20)  NOT NULL,
    CONSTRAINT pk_inquerito PRIMARY KEY (id_inquerito),
    CONSTRAINT uq_inquerito_ocorrencia UNIQUE (id_ocorrencia),
    CONSTRAINT fk_inquerito_ocorrencia FOREIGN KEY (id_ocorrencia)
        REFERENCES OCORRENCIA (id_ocorrencia),
    CONSTRAINT chk_datas_inquerito CHECK (
        data_conclusao IS NULL OR data_conclusao >= data_abertura
    )
) ENGINE = InnoDB;

-- 3.9 DEPOIMENTO: declaração prestada por pessoa no contexto do inquérito.
CREATE TABLE DEPOIMENTO (
    id_depoimento    INTEGER       NOT NULL AUTO_INCREMENT,
    id_inquerito     INTEGER       NOT NULL,
    id_pessoa        INTEGER       NOT NULL,
    data_depoimento  DATE          NOT NULL,
    resumo_ficticio  VARCHAR(255)  NOT NULL,
    CONSTRAINT pk_depoimento PRIMARY KEY (id_depoimento),
    CONSTRAINT fk_depoimento_inquerito FOREIGN KEY (id_inquerito)
        REFERENCES INQUERITO (id_inquerito),
    CONSTRAINT fk_depoimento_pessoa FOREIGN KEY (id_pessoa)
        REFERENCES PESSOA (id_pessoa)
) ENGINE = InnoDB;

-- 3.10 EVIDENCIA: elemento material relacionado ao inquérito.
CREATE TABLE EVIDENCIA (
    id_evidencia     INTEGER       NOT NULL AUTO_INCREMENT,
    id_inquerito     INTEGER       NOT NULL,
    tipo_evidencia   VARCHAR(60)   NOT NULL,
    descricao        VARCHAR(200)  NOT NULL,
    data_apreensao   DATE          NOT NULL,
    status_custodia  VARCHAR(30)   NOT NULL,
    CONSTRAINT pk_evidencia PRIMARY KEY (id_evidencia),
    CONSTRAINT fk_evidencia_inquerito FOREIGN KEY (id_inquerito)
        REFERENCES INQUERITO (id_inquerito)
) ENGINE = InnoDB;

-- 3.11 MOVIMENTACAO: atos e eventos relacionados ao andamento do inquérito.
-- id_servidor é opcional conforme a documentação do modelo.
CREATE TABLE MOVIMENTACAO (
    id_movimentacao    INTEGER       NOT NULL AUTO_INCREMENT,
    id_inquerito       INTEGER       NOT NULL,
    id_servidor        INTEGER       DEFAULT NULL,
    data_movimentacao  DATE          NOT NULL,
    tipo_movimentacao  VARCHAR(60)   NOT NULL,
    descricao          VARCHAR(200)  NOT NULL,
    CONSTRAINT pk_movimentacao PRIMARY KEY (id_movimentacao),
    CONSTRAINT fk_movimentacao_inquerito FOREIGN KEY (id_inquerito)
        REFERENCES INQUERITO (id_inquerito),
    CONSTRAINT fk_movimentacao_servidor FOREIGN KEY (id_servidor)
        REFERENCES SERVIDOR (id_servidor)
) ENGINE = InnoDB;

-- 4. TRIGGERS: somente Delegado ou Escrivão pode ser responsável por uma movimentação. NULL continua permitido.
DELIMITER $$

CREATE TRIGGER trg_movimentacao_cargo_bi
BEFORE INSERT ON MOVIMENTACAO
FOR EACH ROW
BEGIN
    DECLARE v_cargo VARCHAR(60) DEFAULT NULL;
    IF NEW.id_servidor IS NOT NULL THEN
        SELECT cargo INTO v_cargo
        FROM SERVIDOR
        WHERE id_servidor = NEW.id_servidor;

        IF v_cargo IS NULL OR v_cargo NOT IN ('Delegado', 'Escrivão') THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Somente Delegado ou Escrivao pode ser responsavel pela movimentacao.';
        END IF;
    END IF;
END$$

CREATE TRIGGER trg_movimentacao_cargo_bu
BEFORE UPDATE ON MOVIMENTACAO
FOR EACH ROW
BEGIN
    DECLARE v_cargo VARCHAR(60) DEFAULT NULL;
    IF NEW.id_servidor IS NOT NULL THEN
        SELECT cargo INTO v_cargo
        FROM SERVIDOR
        WHERE id_servidor = NEW.id_servidor;

        IF v_cargo IS NULL OR v_cargo NOT IN ('Delegado', 'Escrivão') THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Somente Delegado ou Escrivao pode ser responsavel pela movimentacao.';
        END IF;
    END IF;
END$$

-- Evita alterar o cargo de um servidor que já possui movimentações para Investigador/Agente ou NULL, o que invalidaria o histórico.

CREATE TRIGGER trg_servidor_cargo_bu
BEFORE UPDATE ON SERVIDOR
FOR EACH ROW
BEGIN
    IF (NEW.cargo IS NULL OR NEW.cargo NOT IN ('Delegado', 'Escrivão'))
       AND EXISTS (
           SELECT 1 FROM MOVIMENTACAO
           WHERE id_servidor = OLD.id_servidor
       ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Servidor com movimentacao registrada deve permanecer Delegado ou Escrivao.';
    END IF;
END$$

DELIMITER ;

-- 5. INSERÇÃO DOS DADOS FICTÍCIOS

-- 5.1 Unidade policial: endereço informado para o 52º DP.
INSERT INTO UNIDADE_POLICIAL (
    id_unidade, nome, endereco, tipo_unidade, cidade
) VALUES (
    1,
    '52º Distrito Policial - Parque São Jorge',
    'Rua Dr. Coryntho Baldoíno Costa, 400 - Vila Zilda, CEP 03069-070',
    'Polícia Civil',
    'São Paulo - SP'
);

-- 5.2 Pessoas fictícias.
INSERT INTO PESSOA (
    id_pessoa, nome_ficticio, documento_ficticio, observacao, contato_ficticio
) VALUES
    (101,  'Ana Lima',     'DOC-0101', NULL,                   'CONT-0101'),
    (102,  'Bruno Costa',  'DOC-0102', NULL,                   'CONT-0102'),
    (103,  'Carlos Souza', 'DOC-0103', 'Acusado fictício',     'CONT-0103'),
    (104,  'Paula Mendes', 'DOC-0104', 'Advogada fictícia',    'CONT-0104'),
    (8001, 'Marina Alves', 'DOC-8001', 'Comunicante fictícia', 'CONT-8001');

-- 5.3 Servidores: Ana Lima (Investigador/Agente) e Bruno Costa (Escrivão).
INSERT INTO SERVIDOR (
    id_servidor, id_pessoa, id_unidade, cargo, matricula_ficticia
) VALUES
    (101, 101, 1, 'Investigador/Agente', 'MAT-0101'),
    (102, 102, 1, 'Escrivão',            'MAT-0102');

-- 5.4 Advogada fictícia Paula Mendes.
INSERT INTO ADVOGADO (id_oab, id_pessoa)
VALUES ('123456', 104);

-- 5.5 Natureza do fato.
INSERT INTO NATUREZA_FATO (id_natureza, descricao, gravidade)
VALUES (1, 'Furto', 'Média');

-- 5.6 Ocorrência fictícia registrada por Ana Lima.
INSERT INTO OCORRENCIA (
    id_ocorrencia, id_unidade, id_natureza, id_servidor,
    canal_registro, data_registro, localidade, status, relato_fatos
) VALUES (
    5001, 1, 1, 101,
    'Presencial', '2026-08-28 10:15:00',
    'Bairro Modelo (fictício)',
    'Convertida em inquérito',
    'Relato fictício dos fatos, registrado para fins acadêmicos'
);

-- 5.7 Envolvidos: Marina Alves (vítima) e Carlos Souza (acusado).
-- A OAB 123456 está vinculada à pessoa fictícia Paula Mendes.
INSERT INTO ENVOLVIMENTO (id_pessoa, id_ocorrencia, id_oab, papel)
VALUES
    (8001, 5001, NULL,     'Vítima'),
    (103,  5001, '123456', 'Acusado');

-- 5.8 Inquérito relacionado à ocorrência 5001.
INSERT INTO INQUERITO (
    id_inquerito, id_ocorrencia, data_abertura,
    data_conclusao, status, prioridade
) VALUES (
    9001, 5001, '2026-08-29', '2026-09-10', 'Concluído', 'Normal'
);

-- 5.9 Depoimento fictício da pessoa 8001.
INSERT INTO DEPOIMENTO (
    id_depoimento, id_inquerito, id_pessoa, data_depoimento, resumo_ficticio
) VALUES (
    3001, 9001, 8001, '2026-08-30', 'Relato simulado registrado'
);

-- 5.10 Evidência fictícia.
INSERT INTO EVIDENCIA (
    id_evidencia, id_inquerito, tipo_evidencia,
    descricao, data_apreensao, status_custodia
) VALUES (
    7001, 9001, 'Documento', 'Arquivo de teste', '2026-08-30', 'Em análise'
);

-- 5.11 Movimentação registrada pelo Escrivão Bruno Costa (servidor 102).
INSERT INTO MOVIMENTACAO (
    id_movimentacao, id_inquerito, id_servidor,
    data_movimentacao, tipo_movimentacao, descricao
) VALUES (
    10001, 9001, 102, '2026-08-29',
    'Distribuição', 'Procedimento distribuído'
);

-- 6. CONSULTAS DE AUDITORIA E INDICADORES (G01 A G13)
-- Os KPIs são demonstrativos e calculados a partir dos dados fictícios.
-- G01: conferências das 11 tabelas do banco
-- G02: volume de ocorrências -> total de ocorrências.
-- G03: situação dos registros -> ocorrências por status.
-- G04: naturezas recorrentes -> ocorrências por natureza.
-- G05: canais utilizados -> ocorrências por canal.
-- G06: situação dos inquéritos -> inquéritos por status.
-- G07: inquéritos sem conclusão -> total em andamento.
-- G08: custódia -> evidências por status de custódia.
-- G09: atos registrados -> movimentações por tipo.
-- G10: especificação das ocorrências, unidade, servidor e natureza 
-- G11: pessoas envolvidas, com seus papéis e advogado conectado
-- G12: ocorrências, inquéritos e referentes naturezas
-- G13: conformidade da atribuição -> movimentações por cargo.

-- G01 - Conferência das 11 tabelas do banco.
SELECT TABLE_NAME AS tabela
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = DATABASE()
  AND TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_NAME;

-- G02 - KPI: quantidade total de ocorrências registradas.
SELECT COUNT(*) AS total_ocorrencias
FROM OCORRENCIA;

-- G03 - KPI: quantidade de ocorrências por status.
SELECT status, COUNT(*) AS total_ocorrencias
FROM OCORRENCIA
GROUP BY status
ORDER BY total_ocorrencias DESC;

-- G04 - KPI: quantidade de ocorrências por natureza do fato.
SELECT n.descricao AS natureza,
       COUNT(o.id_ocorrencia) AS total_ocorrencias
FROM NATUREZA_FATO n
LEFT JOIN OCORRENCIA o ON o.id_natureza = n.id_natureza
GROUP BY n.id_natureza, n.descricao
ORDER BY total_ocorrencias DESC;

-- G05 - KPI: quantidade de ocorrências por canal de registro.
SELECT canal_registro, COUNT(*) AS total_ocorrencias
FROM OCORRENCIA
GROUP BY canal_registro
ORDER BY total_ocorrencias DESC;

-- G06 - KPI: quantidade de inquéritos por status.
SELECT status, COUNT(*) AS total_inqueritos
FROM INQUERITO
GROUP BY status
ORDER BY total_inqueritos DESC;

-- G07 - KPI: quantidade de inquéritos sem data de conclusão.
SELECT COUNT(*) AS total_inqueritos_sem_conclusao
FROM INQUERITO
WHERE data_conclusao IS NULL;

-- G08 - KPI: quantidade de evidências por status de custódia.
SELECT status_custodia, COUNT(*) AS total_evidencias
FROM EVIDENCIA
GROUP BY status_custodia
ORDER BY total_evidencias DESC;

-- G09 - KPI: quantidade de movimentações por tipo.
SELECT tipo_movimentacao, COUNT(*) AS total_movimentacoes
FROM MOVIMENTACAO
GROUP BY tipo_movimentacao
ORDER BY total_movimentacoes DESC;

-- G10 - Detalhamento das ocorrências, com natureza, unidade e servidor.
SELECT o.id_ocorrencia, o.data_registro,
       n.descricao AS natureza,
       u.nome AS unidade_policial,
       p.nome_ficticio AS servidor_registro,
       o.canal_registro, o.localidade, o.status
FROM OCORRENCIA o
INNER JOIN NATUREZA_FATO n ON o.id_natureza = n.id_natureza
INNER JOIN UNIDADE_POLICIAL u ON o.id_unidade = u.id_unidade
LEFT JOIN SERVIDOR s ON o.id_servidor = s.id_servidor
LEFT JOIN PESSOA p ON s.id_pessoa = p.id_pessoa
ORDER BY o.data_registro DESC;

-- G11 - Pessoas envolvidas, seus papéis e eventual advogado vinculado.
SELECT e.id_ocorrencia,
       p.nome_ficticio AS pessoa_envolvida,
       e.papel, e.id_oab,
       pa.nome_ficticio AS advogado
FROM ENVOLVIMENTO e
INNER JOIN PESSOA p ON e.id_pessoa = p.id_pessoa
LEFT JOIN ADVOGADO a ON e.id_oab = a.id_oab
LEFT JOIN PESSOA pa ON a.id_pessoa = pa.id_pessoa
ORDER BY e.id_ocorrencia, p.nome_ficticio;

-- G12 - Inquéritos, ocorrências e respectivas naturezas.
SELECT i.id_inquerito, i.data_abertura, i.data_conclusao,
       i.status AS status_inquerito, i.prioridade,
       o.id_ocorrencia, o.status AS status_ocorrencia,
       n.descricao AS natureza
FROM INQUERITO i
INNER JOIN OCORRENCIA o ON i.id_ocorrencia = o.id_ocorrencia
INNER JOIN NATUREZA_FATO n ON o.id_natureza = n.id_natureza
ORDER BY i.data_abertura DESC;

-- G13 - Auditoria: verifica responsáveis com cargo não autorizado.
-- Resultado esperado com os dados válidos: nenhuma linha.
SELECT m.id_movimentacao, m.id_inquerito, m.id_servidor, s.cargo
FROM MOVIMENTACAO m
LEFT JOIN SERVIDOR s ON m.id_servidor = s.id_servidor
WHERE m.id_servidor IS NOT NULL
  AND (
      s.id_servidor IS NULL
      OR s.cargo IS NULL
      OR s.cargo NOT IN ('Delegado', 'Escrivão')
  );

-- 7. TESTES CONTROLADOS DE UPDATE E DELETE
-- As transações terminam com ROLLBACK para preservar a carga-base.

-- 7.1 Teste de UPDATE: altera temporariamente o inquérito 9001.
START TRANSACTION;
UPDATE INQUERITO
SET status = 'Em investigação', data_conclusao = NULL
WHERE id_inquerito = 9001;
SELECT id_inquerito, status, data_conclusao
FROM INQUERITO
WHERE id_inquerito = 9001;
ROLLBACK;

-- 7.2 Teste de DELETE: cria uma evidência temporária e a exclui.
START TRANSACTION;
INSERT INTO EVIDENCIA (
    id_evidencia, id_inquerito, tipo_evidencia,
    descricao, data_apreensao, status_custodia
) VALUES (
    7002, 9001, 'Documento',
    'Registro criado exclusivamente para teste de exclusão',
    '2026-08-31', 'Em análise'
);
DELETE FROM EVIDENCIA WHERE id_evidencia = 7002;
SELECT * FROM EVIDENCIA WHERE id_evidencia = 7002;
ROLLBACK;

-- 8. CONFERÊNCIA FINAL: estrutura e registros das 11 tabelas.
SHOW TABLES;
SELECT * FROM UNIDADE_POLICIAL;
SELECT * FROM PESSOA;
SELECT * FROM SERVIDOR;
SELECT * FROM ADVOGADO;
SELECT * FROM NATUREZA_FATO;
SELECT * FROM OCORRENCIA;
SELECT * FROM ENVOLVIMENTO;
SELECT * FROM INQUERITO;
SELECT * FROM DEPOIMENTO;
SELECT * FROM EVIDENCIA;
SELECT * FROM MOVIMENTACAO;

-- FIM DO SCRIPT SQL UNIFICADO - 52º DISTRITO POLICIAL
