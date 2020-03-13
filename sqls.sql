/* Criação do banco de dados*/
create database desafio

Create Table Cidades(
  id int not null auto_increment ,
  nome varchar(255),
  estado varchar(50),
  PRIMARY KEY (id)
);

CREATE TABLE Clientes(
    Id int not null auto_increment,
    Cidade_id int,
    Nome varchar(255),
    Sexo varchar(50),
    Data_de_nasc date,
    Idade int,
    PRIMARY KEY (id),
    FOREIGN KEY (Cidade_id) REFERENCES Cidades(id)
);



/* consultar cidade por nome */
select * from cidades where nome = ${nome}

/* consultar  cidade por estado*/
select * from cidades where estado = ${estado}

/*cadastrar cidade*/
insert into cidades(nome, estado) values(`${nome}, ${estado}`);

/* cadastrar clientes  */
insert into clientes(nome, cidade_id, sexo, data_de_nasc, idade) values ( ${nome}, ${cidade}, ${sexo}, STR_TO_DATE(${dataDeNasc}, "%m/%d/%Y" ), ${idade});

/* consultar cliente por Id  */
select cli.id, cli.nome, cli.sexo, cli.data_de_nasc, cli.idade, cid.nome, cid.idade from clientes as cli inner join cidades as cid on cli.cidade_id = cid.id where cli.id = ${id}

/*  consultar cliente por nome  */
select cli.id, cli.nome, cli.sexo, cli.data_de_nasc, cli.idade, cid.nome, cid.idade from clientes as cli inner join cidades as cid on cli.cidade_id = cid.id where cli.nome = ${nome}


/*  alterar nome do cliente  */
update clientes set nome = ${ nome } where id = $ { id }

/*  deletar cliente por ID  */
delete from clientes where id = $ { id }




/* testes */
insert into cidades(nome, estado) values('Porto Alegre','Rio grande do Sul')

insert into clientes(nome, cidade_id, sexo, data_de_nasc, idade) values ( 'Felipe Friedrich', 1, 'Masculino', STR_TO_DATE( "05/09/1996", "%m/%d/%Y" ), 23);

select cli.id, cli.nome, cli.sexo, cli.data_de_nasc, cli.idade, cid.nome, cid.estado from clientes as cli inner join cidades as cid on cli.cidade_id = cid.id where cli.id = 1
select cli.id, cli.nome, cli.sexo, cli.data_de_nasc, cli.idade, cid.nome, cid.estado from clientes as cli inner join cidades as cid on cli.cidade_id = cid.id where cli.nome = 'Felipe Friedrich'