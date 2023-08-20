-- Listagem de Clientes:
SELECT c.nome, c.cpf, c.email, c.telefone, e.cidade, e.estado
FROM cliente c
JOIN endereco e ON c.fk_endereco_id = e.id;

-- Listagem de Veículos Disponíveis:
SELECT v.placa, m.marca, m.modelo, m.ano, m.preco_diario, f.nome
FROM veiculo v
JOIN modelo m ON v.fk_modelo_id = m.id
JOIN filial f ON v.fk_filial_id = f.id
WHERE v.disponivel = TRUE;
