-- 1

select * from corretor;

-- 2

select nome, licenca, aluguel.* from corretor, aluguel where corretor.codcorr = aluguel.codcorr;

-- 3

select descricao, valorauguel, alugado, proprietario.nome, proprietario.telefone
from imovel, proprietario where imovel.codprop = proprietario.codprop

-- 4

select codalu, dataalug, valorauguel, inquilino.nome, corretor.nome from aluguel, inquilino, corretor
where aluguel.codinq = inquilino.codinq and aluguel.codcorr = corretor.codcorr

-- 5

select count(codalu) from aluguel, corretor where corretor.codcorr = aluguel.codcorr and licenca = 'LC587'

-- 6

select imovel.* from imovel, proprietario where imovel.alugado = true and imovel.codprop = proprietario.codprop
and proprietario.nome = 'Bill Gates'

-- 7

select p.nome from proprietario p, aluguel a, imovel i where a.codalu = 6 and a.codimo = i.codimo and 
i.codprop = p.codprop

-- 8

select p.nome from proprietario p, corrprop cp, corretor c where p.codprop = cp.codprop and c.codcorr = cp.codcorr
and c.nome = 'Alan Moore'


-- 9

select inq.nome from inquilino inq, aluguel a where
inq.codinq = a.codinq and a.valorauguel > 5000