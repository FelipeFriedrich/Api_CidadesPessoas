/* Criação do banco de dados*/
create database desafio

Create Table Cidade(
  id int not null auto_increment ,
  nome varchar(255),
  estado varchar(50),
  PRIMARY KEY (id)
);

CREATE TABLE Cliente(
    Id int not null auto_increment,
    Cidade_id int,
    Nome varchar(255),
    Sexo varchar(50),
    Data_de_nasc date,
    Idade int,
    PRIMARY KEY (id),
    FOREIGN KEY (Cidade_id) REFERENCES cidade(id)
);



/* consultar cidade por nome */
select * from cidade where nome = ${nome}

/* consultar  cidade por estado*/
select * from cidade where estado = ${estado}

/*cadastrar cidade*/
insert into cidade(nome, estado) values(`${nome}, ${estado}`);

/* cadastrar cliente  */
insert into cliente(nome, cidade_id, sexo, data_de_nasc, idade) values ( ${nome}, ${cidade}, ${sexo}, STR_TO_DATE(${dataDeNasc}, "%m/%d/%Y" ), ${idade});

/* consultar cliente por Id  */
select cli.id, cli.nome, cli.sexo, cli.data_de_nasc, cli.idade, cid.nome, cid.idade from cliente as cli inner join cidade as cid on cli.cidade_id = cid.id where cli.id = ${id}

/*  consultar cliente por nome  */
select cli.id, cli.nome, cli.sexo, cli.data_de_nasc, cli.idade, cid.nome, cid.idade from cliente as cli inner join cidade as cid on cli.cidade_id = cid.id where cli.nome = ${nome}


/*  alterar nome do cliente  */
update cliente set nome = ${ nome } where id = $ { id }

/*  deletar cliente por ID  */
delete from cliente where id = $ { id }




/* testes */
insert into cidade(nome, estado) values('Porto Alegre','Rio grande do Sul')

insert into cliente(nome, cidade_id, sexo, data_de_nasc, idade) values ( 'Felipe Friedrich', 1, 'Masculino', STR_TO_DATE( "05/09/1996", "%m/%d/%Y" ), 23);

select cli.id, cli.nome, cli.sexo, cli.data_de_nasc, cli.idade, cid.nome, cid.estado from cliente as cli inner join cidade as cid on cli.cidade_id = cid.id where cli.id = 1
select cli.id, cli.nome, cli.sexo, cli.data_de_nasc, cli.idade, cid.nome, cid.estado from cliente as cli inner join cidade as cid on cli.cidade_id = cid.id where cli.nome = 'Felipe Friedrich'