-- Inserir um endereço
INSERT INTO endereco (id, estado, cidade, bairro, rua, numero)
VALUES (1, 'SP', 'São Paulo', 'Centro', 'Avenida Paulista', '123');

-- Inserir um cliente
INSERT INTO cliente (id, nome, cpf, email, telefone, fk_endereco_id)
VALUES (1, 'João Silva', '123.456.789-01', 'joao@example.com', '1234567890', 1);

-- Inserir um modelo de veículo
INSERT INTO modelo (id, marca, modelo, categoria, preco_diario, ano)
VALUES (1, 'Toyota', 'Corolla', 'Sedan', 150.00, 2023);

-- Inserir uma filial
INSERT INTO filial (id, nome, fk_endereco_id)
VALUES (1, 'Filial A', 1);

-- Inserir um veículo
INSERT INTO veiculo (id, disponivel, placa, fk_filial_id, fk_modelo_id)
VALUES (1, TRUE, 'ABC123', 1, 1);
