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

select count(imovel.alugado) from imovel, corretor where corretor.licenca = 'LC587' and imovel.alugado = true

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

select inq.nome from inquilino inq, aluguel a, imovel im where
inq.codinq = a.codinq and a.codimo = im.codimo and im.valorauguel > 5000