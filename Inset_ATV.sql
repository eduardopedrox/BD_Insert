create database BD_locadora;
use BD_locadora;
create table Cliente (
	id_cliente int not null primary key auto_increment,
    nome varchar(30) not null,
    sexo varchar(1),
    endereco varchar(100),
    cidade varchar(20),
    estado char(2),
    email varchar(50),
    telefone int(8)
    );
create table Veiculo (
	id_veiculo int not null primary key auto_increment,
    marca varchar(30) not null,
    modelo varchar(10) not null,
    ano int(4) not null,
    quilometragem int(10) not null,
    cor varchar(10) not null
    );
use BD_locadora;
create table Locacao (
	id_locacao int not null primary key auto_increment,
    fk_cliente int not null,
    fk_veiculo int not null,
    data_locacao date, 
    data_devolucao date,
    valor float(5,2),
    foreign key(fk_cliente) references Cliente(id_cliente),
    foreign key(fk_veiculo) references Veiculo(id_veiculo)
    );
insert into Cliente (nome, sexo, endereco,cidade,estado,email ,telefone)values ("Paulo Coope", "M", "Rua 1", "Peruíbe","SP", "paulocope@gmail.com", 1332247786);
insert into Cliente (nome, sexo, endereco,cidade,estado,email ,telefone)values ("Sandro Junior", "M", "Rua Ouro Verde", "Santos", "SP", "sandrinho@uol.com.br", 1399603245);
insert into Cliente (nome, sexo, endereco,cidade,estado,email ,telefone)values ("Samanta Silva Bueno", "F", "Avenida Tira Dentes", "Praia Grande", "SP", "sasabueno@hotmail.com", 1336457858);
insert into Cliente (nome, sexo, endereco,cidade,estado,email ,telefone)values ("Janaina da Silva Sobrinho", "F", "Viela Projetada", "São Vicente", "SP", "janasobrinho@bol.com.br", 1332256684);
insert into Cliente (nome, sexo, endereco,cidade,estado,email ,telefone)values ("Joséfa Aparecida da Silva", "F", "Rua Ubiratan", "São Vicente", "SP", "josilva@uol.com.br", 1336645528);
use BD_locadora;
insert into Veiculo (marca, modelo, ano,quilometragem,cor)values ("Volkswagen", "gol g5", "2018", "35000", "preto");
insert into Veiculo (marca, modelo, ano,quilometragem,cor)values ("Fiat", "Uno", "2022", "10000", "prata");
insert into Veiculo (marca, modelo, ano,quilometragem,cor)values ("Ford", "Fiesta", "2021", "15000", "branco");
insert into Veiculo (marca, modelo, ano,quilometragem,cor)values ("Fiat", "Palio", "2020", "12000", "vermelho");
insert into Veiculo (marca, modelo, ano,quilometragem,cor)values ("Volkswagen", "Fox", "2023", "5000", "branco");
use BD_locadora;
insert into locacao values (null, 1, 1, '2024-03-20', '2024-03-25', 500.00);
