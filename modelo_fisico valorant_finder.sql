create database ValorantFinder
use ValorantFinder

create table Usúarios(
id integer auto_increment not null,
apelido varchar(30) not null,
usuario varchar(70) not null,
email varchar(45) not null,
senha varchar(20) not null,
contato  varchar(50) not null,
primary key (id) 
);

create table Times(
codigo integer auto_increment not null,
nome varchar(90) not null,
siglas varchar(5) not null, 
id_jogador integer not null,
primary key (codigo),
foreign key (id_jogador) references Usúarios(id)
);