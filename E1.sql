--pessoas

CREATE TABLE corretor(
	codCorr int primary key not null,
	nome varchar(35) not null,
	licença varchar(35), 
	telefone varchar(35)
);

CREATE TABLE proprietario(
	codProp int primary key not null,
	nome varchar(35) not null, 
	telefone varchar(35)
);

CREATE TABLE inquilino(
	codInq int primary key not null,
	nome varchar(35) not null,
	cpf varchar(20) not null
);

-- Imovel

CREATE TABLE imovel(
	codImovel int primary key not null,
	descricao varchar(100),
	codProp int REFERENCES proprietario(CodProp),
	valorAluguel real not null,
	alugado boolean not null
);

CREATE TABLE aluguel(
	codAlu int primary key not null,
	codInq int not null REFERENCES inquilino(codInq),
	codImo int not null REFERENCES imovel(codImovel),
	codCorr int not null REFERENCES corretor(codCorr),
	dataAluguel date,
	dataVenc date,
	valorAluguel real
);

-- Junção de Tabelas

CREATE TABLE corrInq(
	codInq int not null REFERENCES inquilino(codInq),
	codCorr int not null REFERENCES corretor(codCorr)
);

CREATE TABLE corrProp(
	codCorr int not null REFERENCES corretor(codCorr),
	codProp int not null REFERENCES proprietario(codProp)
);

---------------------------Inserção de Dados---------------------------
--       Pessoas
-- Corretor
insert into corretor values(1, 'Joao', 'licença1', '(99) 9999-9999');
insert into corretor values(2, 'Ana', 'licença2', '(88) 8888-8888');
insert into corretor values(3, 'Gabriel', 'licença3', '(77) 7777-7777');
insert into corretor values(4, 'Maria', 'licença4', '(66) 6666-6666');
insert into corretor values(5, 'Pedro', 'licença5', '(55) 5555-5555');

select * from corretor;

-- Proprietário
insert into proprietario values(1, 'Manuel', '(99) 9999-9999');
insert into proprietario values(2, 'Alice', '(88) 8888-8888');
insert into proprietario values(3, 'Andrei', '(77) 7777-7777');
insert into proprietario values(4, 'Sara', '(66) 6666-6666');
insert into proprietario values(5, 'Paulo', '(55) 5555-5555');

select * from proprietario;

-- Inquilino
insert into inquilino values(1, 'Renan', '999.999.999-99');
insert into inquilino values(2, 'Franciele', '888.888.888-88');
insert into inquilino values(3, 'Lucas', '777.777.777-77');
insert into inquilino values(4, 'Victoria', '666.666.666-66');
insert into inquilino values(5, 'Weslei', '555.555.555-55');

select * from inquilino;

--       Imovel
-- Imovel
insert into imovel values(1, 'Casa', 1, 300.00, true);
insert into imovel values(2, 'Ap', 2, 500.00, false);
insert into imovel values(3, 'Ap', 3, 1000, true);
insert into imovel values(4, 'Casa', 4, 700.00, false);
insert into imovel values(5, 'Ap', 5, 350.00, true);

select * from imovel;

-- Aluguel
insert into aluguel values(1, 1, 1, 1, '2022-09-10', '2029-12-31', 300.00);
insert into aluguel values(2, 2, 2, 2, '2022-09-10', '2029-12-31', 500.00);
insert into aluguel values(3, 3, 3, 3, '2022-09-10', '2029-12-31', 1000.00);
insert into aluguel values(4, 4, 4, 4, '2022-09-10', '2029-12-31', 700.00);
insert into aluguel values(5, 5, 5, 5, '2022-09-10', '2029-12-31', 350.00);

select * from aluguel;

--       Junção Tabelas
-- CorrPorp
insert into corrprop values(1, 1);
insert into corrprop values(2, 2);
insert into corrprop values(3, 3);
insert into corrprop values(4, 4);
insert into corrprop values(5, 5);

select * from corrprop;

-- CorrInq
insert into corrinq values(1, 1);
insert into corrinq values(2, 2);
insert into corrinq values(3, 3);
insert into corrinq values(4, 4);
insert into corrinq values(5, 5);

select * from corrinq;