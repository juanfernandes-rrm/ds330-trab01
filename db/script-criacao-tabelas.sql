/* modelo-entidade-relacionamento: */

CREATE TABLE endereco (
    id INT PRIMARY KEY,
    estado CHAR(2),
    cidade VARCHAR(150),
    bairro VARCHAR(100),
    rua VARCHAR(100),
    numero VARCHAR(20)
);

CREATE TABLE modelo (
    id INT PRIMARY KEY,
    marca VARCHAR(100),
    modelo VARCHAR(100),
    categoria VARCHAR(100),
    preco_diario DECIMAL(10, 2),
    ano INT
);

CREATE TABLE filial (
    id INT PRIMARY KEY,
    nome VARCHAR(150),
    fk_endereco_id INT,
    CONSTRAINT FK_filial_2 FOREIGN KEY (fk_endereco_id) REFERENCES endereco (id)
);

CREATE TABLE cliente (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(14),
    email VARCHAR(100),
    telefone VARCHAR(11),
    fk_endereco_id INT,
    CONSTRAINT FK_cliente_2 FOREIGN KEY (fk_endereco_id) REFERENCES endereco (id)
);

CREATE TABLE veiculo (
    id INT PRIMARY KEY,
    disponivel BOOLEAN,
    placa VARCHAR(10),
    fk_filial_id INT,
    fk_modelo_id INT,
    CONSTRAINT FK_veiculo_2 FOREIGN KEY (fk_filial_id) REFERENCES filial (id),
    CONSTRAINT FK_veiculo_3 FOREIGN KEY (fk_modelo_id) REFERENCES modelo (id) ON DELETE CASCADE
);

CREATE TABLE aluguel (
    fk_cliente_id INT,
    fk_veiculo_id INT,
    data_hora_inicio TIMESTAMP,
    data_hora_fim TIMESTAMP,
    valor_total DECIMAL(10, 2),
    PRIMARY KEY (fk_cliente_id, fk_veiculo_id),
    CONSTRAINT FK_aluguel_1 FOREIGN KEY (fk_cliente_id) REFERENCES cliente (id) ON DELETE RESTRICT,
    CONSTRAINT FK_aluguel_2 FOREIGN KEY (fk_veiculo_id) REFERENCES veiculo (id) ON DELETE RESTRICT
);
