create database ValorantFinder
use ValorantFinder

create table Jogadores(
id integer auto_increment not null,
usuario varchar(11) not null,
email varchar(128) not null,
senha varchar(128) not null,
contato varchar(50) not null,
apelido varchar(30) not null,
bio varchar(250),
imagem varchar(200),
primary key (id) 
);

create table Times(
id integer auto_increment not null,
nome varchar(25) not null,
siglas varchar(5) not null,
data_criacao date not null,
logo_time varchar(200),
primary key(id)
);

create table times_jogadores(
id_jogador integer not null,
id_time integer,
administrador tinyint not null,
primary key (id_jogador),
foreign key (id_jogador) references jogadores(id),
foreign key (id_time) references times(id)
);
