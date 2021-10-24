create database ValorantFinder
use ValorantFinder

create table Jogadores(
id integer auto_increment not null,
usuario varchar(70) not null,
senha varchar(100) not null,
email varchar(45) not null,
apelido varchar(30) not null,
contato varchar(50) not null,
primary key (id) 
);

create table Times(
codigo integer auto_increment not null,
nome varchar(90) not null,
siglas varchar(5) not null,
id_jogador integer not null,
primary key(codigo),
foreign key (id_jogador) references Jogadores(id)
);
