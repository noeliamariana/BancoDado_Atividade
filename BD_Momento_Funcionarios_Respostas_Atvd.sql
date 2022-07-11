/*1- Inclua suas próprias informações no departamento de tecnologia da empresa. */
INSERT INTO funcionarios(primeiro_nome, sobrenome, email, telefone, dataContratacao,ocupacao_id, salario, gerente_id, departamento_id ) values('Noelia', 'Mariana', 'noeliamariana@gmail.org', '815.222.4000', '2022-01-17', '9', '5000.00', '100' , '6');

/*2 - A administração está sem funcionários. Inclua os outros elementos do seu grupo do demoday no departamento de administração.*/
INSERT INTO funcionarios(primeiro_nome, sobrenome, email, telefone, dataContratacao,ocupacao_id, salario, gerente_id, departamento_id ) 
values('Camilly', 'Sheilla', 'camisheilla@gmail.org', '815.789.1234', '2020-04-19', '3', '10000.00', '100' , '1');
INSERT INTO funcionarios(primeiro_nome, sobrenome, email, telefone, dataContratacao,ocupacao_id, salario, gerente_id, departamento_id ) 
values('Matheus', 'França', 'matheusfranca@gmail.org', '815.321.1234', '2020-04-19', '3', '10000.00', '100' , '1');
INSERT INTO funcionarios(primeiro_nome, sobrenome, email, telefone, dataContratacao,ocupacao_id, salario, gerente_id, departamento_id ) 
values('Iago', 'Paiva', 'iagopaiva@gmail.org', '815.543.1234', '2020-04-19', '3', '10000.00', '100' , '1');
INSERT INTO funcionarios(primeiro_nome, sobrenome, email, telefone, dataContratacao,ocupacao_id, salario, gerente_id, departamento_id ) 
values('Lucas', 'Alencar', 'lucasalencar@gmail.org', '815.888.1234', '2020-04-19', '3', '10000.00', '100' , '1');
INSERT INTO funcionarios(primeiro_nome, sobrenome, email, telefone, dataContratacao,ocupacao_id, salario, gerente_id, departamento_id ) 
values('Rian', 'Paiva', 'rianpaiva@gmail.org', '815.777.1234', '2020-04-19', '3', '10000.00', '100' , '1');
INSERT INTO funcionarios(primeiro_nome, sobrenome, email, telefone, dataContratacao,ocupacao_id, salario, gerente_id, departamento_id ) 
values('Sara', 'Morais', 'sara@gmail.org', '815.555.1234', '2020-04-19', '3', '10000.00', '100' , '1');
INSERT INTO funcionarios(primeiro_nome, sobrenome, email, telefone, dataContratacao,ocupacao_id, salario, gerente_id, departamento_id ) 
values('Matheus', 'Almeida', 'matheusalmeida@gmail.org', '815.111.1234', '2020-04-19', '3', '10000.00', '100' , '1');


/*3 - Agora diga, quantos funcionários temos ao total na empresa?*/
SELECT COUNT('quantidade total de funcionarios') FROM funcionarios;

/*4 - Quantos funcionários temos no departamento de finanças?*/
select * from departamento where departamento_name="Finanças";
SELECT count(*)  as total_financas from funcionarios  where departamento_id="10";

/*5 - Qual a média salarial do departamento de tecnologia? */
select * from departamento where departamento_name="Tecnologia";
SELECT AVG (salario) FROM funcionarios WHERE departamento_id = "6";

/*6 - Quanto o departamento de Transportes gasta em salários?**/
select * from departamento where departamento_name="Transporte";
SELECT SUM(salario) FROM funcionarios WHERE departamento_id = "5";

/*7 - Um novo departamento foi criado. O departamento de inovações. Ele será locado no Brasil. 
Por favor, adicione-o no banco de dados. */
INSERT INTO departamento(departamento_name, posicao_id) VALUES ("Inovações","5400");

/*8 - Três novos funcionários foram contratados para o departamento de inovações. Por favor, adicione-os: William Ferreira, casado com Inara Ferreira, 
possui um filho chamado Gabriel que tem 4 anos e adora brincar com cachorros. Ele será programador.Já a Fernanda Lima, que é casada com o Rodrigo,
 não possui filhos. Ela vai ocupar a posição de desenvolvedora.  Por último, a Gerente do departamento será Fabiana Raulino. Casada, duas filhas (Maya e Laura).*/

/*O salário de todos eles será a média salarial dos departamentos de administração e finanças.*/
SELECT AVG(salario) FROM funcionarios WHERE departamento_id = '1' or departamento_id = '10';
/* O salário  de todos eles será igual a R$9066.66*/

/*Criação das ocupações Programador e Gerente de Inovações*/
INSERT INTO ocupacoes(ocupacao_title,min_salario,max_salario)  VALUES ('Programador',3000.00,9500.00) , ('Gerente de Inovações',6500.00,12000.00);

INSERT INTO funcionarios(primeiro_nome, sobrenome, email, telefone, dataContratacao, ocupacao_id, salario, gerente_id, departamento_id) 
values ('William', 'Ferreira', 'william@gmail.org', '815.888.2222', '2022-04-28','21', '9066.66','103' ,'12' ); 
INSERT INTO funcionarios(primeiro_nome, sobrenome, email, telefone, dataContratacao, ocupacao_id, salario, gerente_id, departamento_id) 
values ('Fernanda', 'Lima', 'fernandalima@gmail.org', '111.888.2424', '2022-04-28','9', '9066.66', '103', '12' );
INSERT INTO funcionarios(primeiro_nome, sobrenome, email, telefone, dataContratacao, ocupacao_id, salario, departamento_id) 
values ('Fabiana', 'Raulino', 'fabianaraulino@gmail.org', '815.558.1222', '2022-04-25','22', '9066.66', '12' );
/*DEPENDENTES*/
INSERT INTO dependentes(primeiro_nome,sobrenome,parentesco,funcionario_id) VALUES ('Inara','Ferreira','Cônjuge', 217) , ('Gabriel', 'Ferreira','Filho(a)', 217);
INSERT INTO dependentes(primeiro_nome,sobrenome,parentesco,funcionario_id) VALUES ('Rodrigo','Lima','Cônjuge', 218);
INSERT INTO dependentes(primeiro_nome,sobrenome,parentesco,funcionario_id) VALUES ('Maya','Raulino','Filho(a)', 216) , ('Laura', 'Raulino','Filho(a)', 216);

/*9 - Informe todas as regiões em que a empresa atua acompanhadas de seus países.*/
SELECT regiao.regiao_name, paises.pais_name FROM regiao INNER JOIN paises ON paises.regiao_id = regiao.regiao_id;

/*10 - Joe Sciarra é filho de quem?*/
Select	dependentes.primeiro_nome Dependete_filho , dependentes.sobrenome Dependente_filho, dependentes.parentesco,funcionarios.primeiro_nome Funcionario, funcionarios.sobrenome from dependentes
inner join funcionarios on dependentes.funcionario_id = funcionarios.funcionario_id 
where dependentes.primeiro_nome='Joe' and dependentes.sobrenome='Sciarra'; 

/*Jose Manuel possui filhos*/
select dependentes.primeiro_nome, dependentes.sobrenome, funcionarios.primeiro_nome, dependentes.parentesco
from dependentes
inner join funcionarios on dependentes.funcionario_id = funcionarios.funcionario_id 
where funcionarios.primeiro_nome= "Jose Manuel";

/*12 - Qual região possui mais países?*/
SELECT paises.pais_name, regiao.regiao_name, COUNT(*) From paises INNER JOIN regiao On paises.regiao_id = regiao.regiao_id WHERE paises.regiao_id = 1;  /*8*/
SELECT paises.pais_name, regiao.regiao_name, COUNT(*) From paises INNER JOIN regiao On paises.regiao_id = regiao.regiao_id WHERE paises.regiao_id = 2;  /*5*/
SELECT paises.pais_name, regiao.regiao_name, COUNT(*) From paises INNER JOIN regiao On paises.regiao_id = regiao.regiao_id WHERE paises.regiao_id = 3;  /*6*/
SELECT paises.pais_name, regiao.regiao_name, COUNT(*) From paises INNER JOIN regiao On paises.regiao_id = regiao.regiao_id WHERE paises.regiao_id = 4;  /*6*/

/*13 - Exiba o nome cada funcionário acompanhado de seus dependentes.*/
select funcionarios.primeiro_nome Funcionarios, dependentes.primeiro_nome Dependentes, dependentes.parentesco from funcionarios 
inner join dependentes on funcionarios.funcionario_id = dependentes.funcionario_id;

/*14 - Karen Partners possui um cônjuge?*/
select dependentes.parentesco from funcionarios 
inner join	dependentes 
on funcionarios.funcionario_id = dependentes.funcionario_id where funcionarios.primeiro_nome = "Karen" and funcionarios.sobrenome = "Partners";

/*17 - Atualize as informações na tabela para que seu departamento seja criado.*/
INSERT INTO departamento(departamento_name,posicao_id) VALUES ('Internet das Coisas',1500);
UPDATE funcionarios SET ocupacao_id = '21', salario = '3000.00', departamento_id = '13' WHERE funcionarios.funcionario_id = 207;

INSERT INTO funcionarios(primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES 
('Justin','Bieber','justinbieber@gmail.org','515.122.0000','2022-04-01',21,2000.00,207,13);

INSERT INTO funcionarios(primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES 
('Shawn','Mendes','shawnmendes@gmail.org','515.888.0000','2022-04-01',21,2400.00,207,13);

INSERT INTO funcionarios(primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES 
('Rafaella','Ballerini','rafaballerini@gmail.org','522.999.0000','2022-04-01',21,2400.00,207,13);

