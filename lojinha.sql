-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Ago-2021 às 04:08
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lojinha`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(4) NOT NULL,
  `cliente_nome` varchar(20) NOT NULL,
  `cliente_datanasc` date NOT NULL,
  `cliente_email` varchar(25) NOT NULL,
  `cliente_cpf` varchar(15) NOT NULL,
  `cliente_endereço` varchar(100) NOT NULL,
  `cliente_telefone` varchar(25) NOT NULL,
  `cliente_datacadastro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `cliente_nome`, `cliente_datanasc`, `cliente_email`, `cliente_cpf`, `cliente_endereço`, `cliente_telefone`, `cliente_datacadastro`) VALUES
(0, 'Maria das Chagas dia', '2011-08-01', 'mcd@email.com', '1234567-11', 'Avenidas Verdes mares - nº 100 - fortaleza - CE', '3333344444', '2021-08-30 01:20:07'),
(2, 'Andre Paiva Dantas', '1990-10-04', 'mj@email.com', '1234567-01', 'Rua da primavera, nº 1010 - Fortaleza-Ce', '8888-8888', '2021-08-30 01:13:23'),
(3, 'Maria das Chagas dia', '2011-08-01', 'mcd@email.com', '1234567-11', 'Avenidas Verdes mares - nº 100 - fortaleza - CE', '3333344444', '2021-08-30 01:20:07'),
(4, 'Andre das Chagas dia', '2012-08-01', 'acd@email.com', '1234567-12', 'Avenidas Verdes mares - nº 100 - fortaleza - CE', '3333344444', '2021-08-30 01:20:07'),
(6, 'José Dias Braz', '2013-08-04', 'jdias@email.com', '1234567-14', 'Rua das flores - nº 1202 - Fortaleza - CE', '32323232', '2021-08-30 01:27:17'),
(7, 'Neide Dias Braz', '2013-08-07', 'ndias@email.com', '1234567-17', 'Rua das flores - nº 1202 - Fortaleza - CE', '32323233', '2021-08-30 01:27:17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id_fornedecor` int(4) NOT NULL,
  `fornecedor_nome` varchar(100) NOT NULL,
  `fornecedor_cnpj` varchar(50) NOT NULL,
  `fornecedor_ramo` varchar(30) NOT NULL,
  `fornecedor_email` varchar(40) NOT NULL,
  `fornecedor_endereço` varchar(40) NOT NULL,
  `fornecedor_telefone` varchar(30) NOT NULL,
  `fornecedor_datacadastro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id_fornedecor`, `fornecedor_nome`, `fornecedor_cnpj`, `fornecedor_ramo`, `fornecedor_email`, `fornecedor_endereço`, `fornecedor_telefone`, `fornecedor_datacadastro`) VALUES
(0, 'ADS distribuidora', '12345678-10', 'Alimenticio', 'ads@email.com', 'Rua das Luzes - nº 100 - Fortaleza - CE', '33334444', '2021-08-30 01:30:51'),
(2, 'Brasil Camisetas', '12345678-11', 'Vestuario', 'bc@email.com', 'Rua das Arvores - nº 10110 - Fortaleza -', '33333333', '2021-08-30 01:32:35'),
(3, 'Ceará Vestuário', '12345678-13', 'Vestuário ', 'ccveste@email.com', 'Rua das Arvores 2 - nº 3210 - Fortaleza ', '32324343', '2021-08-30 01:34:31'),
(4, 'Ceara Camisaria', '12345678-15', 'Vestuario ', 'Cearaves@email.com', 'Rua Tenete Lisboa - nº 9012 - fortaleza ', '32324567', '2021-08-30 01:34:31'),
(7, 'Sapataria Nordeste', '12345678-14', 'Calçados', 'spanordeste@email.com', 'Avenida Sem Fim - nº 9911 - Fortaleza - ', '34567890', '2021-08-30 01:38:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_venda`
--

CREATE TABLE `itens_venda` (
  `id_itensvenda` int(11) NOT NULL,
  `vanda_id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  `itensvenda_qtd` int(11) NOT NULL,
  `itensvenda_criadoEm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `itens_venda`
--

INSERT INTO `itens_venda` (`id_itensvenda`, `vanda_id`, `produto_id`, `itensvenda_qtd`, `itensvenda_criadoEm`) VALUES
(20, 101, 3, 20, '2021-08-31 02:02:02'),
(21, 102, 1, 34, '2021-08-30 02:02:02'),
(23, 104, 2, 7, '2021-08-30 02:02:54'),
(25, 105, 3, 23, '2021-08-30 02:02:54'),
(27, 106, 2, 5, '2021-08-30 02:05:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(4) NOT NULL,
  `produto_tipo` varchar(25) NOT NULL,
  `produto_nome` varchar(25) NOT NULL,
  `produto_preçocompra` float(6,2) NOT NULL,
  `produto_preçovanda` float(6,2) NOT NULL,
  `produto_estoque` int(6) NOT NULL,
  `produto_validade` date NOT NULL,
  `produto_codigo` varchar(30) NOT NULL,
  `produto_datacadastro` timestamp NOT NULL DEFAULT current_timestamp(),
  `fornecedor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `produto_tipo`, `produto_nome`, `produto_preçocompra`, `produto_preçovanda`, `produto_estoque`, `produto_validade`, `produto_codigo`, `produto_datacadastro`, `fornecedor_id`) VALUES
(1, 'Camisa', 'Camisa V', 12.00, 17.00, 100, '2021-08-22', '12345', '2021-08-31 01:42:03', 3),
(2, 'Sapato', 'Sapato Verde', 120.00, 150.00, 23, '2021-08-01', '123456', '2021-08-30 01:42:03', 7),
(3, 'Calças', 'Calças Social', 40.00, 60.00, 15, '2021-08-31', '909', '2021-08-30 01:44:43', 2),
(4, 'Camisa', 'Camisa Azul', 12.00, 17.00, 50, '2023-08-27', '2134', '2021-08-30 01:44:43', 4),
(6, 'Sapato', 'Sapato Esporte', 230.00, 260.00, 12, '2026-08-03', '33334', '2021-08-30 01:47:17', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(4) NOT NULL,
  `usuario_nome` varchar(25) NOT NULL,
  `usuario_cpf` varchar(15) NOT NULL,
  `usuario_cargo` varchar(20) NOT NULL,
  `usuario_login` varchar(30) NOT NULL,
  `usuario_senha` varchar(25) NOT NULL,
  `usuario_datacadastr0` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `usuario_nome`, `usuario_cpf`, `usuario_cargo`, `usuario_login`, `usuario_senha`, `usuario_datacadastr0`) VALUES
(10, 'João filho', '234567-10', 'Vendedor', 'josefilho', '123456', '2021-08-30 01:49:27'),
(12, 'Maria Lurdes', '2345678-11', 'Vendedor', 'mariaLurdes2', '123321', '2021-08-30 01:49:27'),
(13, 'Maria Luiza', '2345678-12', 'Gerente', 'Maria123', '1234', '2021-08-30 01:51:20'),
(15, 'Paulo Diniz', '2345678-16', 'Caixa', 'caixa123', '12543', '2021-08-31 01:51:20'),
(17, 'Maria Paula', '2345678-90', 'Atendente', 'PaulaMaria', '12789', '2021-08-24 01:53:14'),
(18, 'Daniela Freitas', '2345678-19', 'Gerente', 'Dani123', '3212', '2021-08-02 01:53:14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id_venda` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `vanda_datavenda` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id_venda`, `cliente_id`, `usuario_id`, `vanda_datavenda`) VALUES
(101, 0, 10, '2021-08-30 01:59:35'),
(102, 2, 13, '2021-08-28 01:59:35'),
(104, 2, 13, '2021-08-30 02:00:30'),
(105, 6, 13, '2021-08-30 02:00:30'),
(106, 7, 18, '2021-08-30 02:01:25');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id_fornedecor`);

--
-- Índices para tabela `itens_venda`
--
ALTER TABLE `itens_venda`
  ADD PRIMARY KEY (`id_itensvenda`),
  ADD KEY `vanda_id` (`vanda_id`),
  ADD KEY `produto_id` (`produto_id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `fornecedor_id` (`fornecedor_id`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id_venda`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `itens_venda`
--
ALTER TABLE `itens_venda`
  ADD CONSTRAINT `itens_venda_ibfk_1` FOREIGN KEY (`vanda_id`) REFERENCES `vendas` (`id_venda`),
  ADD CONSTRAINT `itens_venda_ibfk_2` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id_produto`);

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedores` (`id_fornedecor`);

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
