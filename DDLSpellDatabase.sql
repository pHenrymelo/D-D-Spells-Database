-- DDL do banco de dados

Create database if not exists ddspells;
use ddspells;
create table if not exists Escolas(
id int(3) auto_increment,
school_name varchar(50),
primary key(id)
);

create table if not exists Classes(
id int(2) auto_increment,
class_name varchar (50),
primary key(id)
);

create table if not exists Magias(
id int(4) auto_increment,
spell_name varchar(60),
spell_description text,
spell_level int(1),
school int(3),
primary key(id),
foreign key(school) references escolas(id) on delete cascade
);

create table if not exists classe_magia(
spell_id int,
class_id int,
FOREIGN KEY (spell_id) REFERENCES magias(id) ON DELETE CASCADE,
FOREIGN KEY (class_id) REFERENCES classes(id) ON DELETE CASCADE
);

INSERT INTO classes (class_name)
VALUES 
    ('Bárbaro'),
    ('Bardo'),
    ('Bruxo'),
    ('Clérigo'),
    ('Druida'),
    ('Feiticeiro'),
    ('Guerreiro'),
    ('Ladino'),
    ('Mago'),
    ('Monge'),
    ('Paladino'),
    ('Patrulheiro'),
    ('Artífice');
    
INSERT INTO Escolas (school_name) 
VALUES 
    ('Abjuração'),
    ('Adivinhação'),
    ('Conjuração'),
    ('Encantamento'),
    ('Evocação'),
    ('Ilusão'),
    ('Necromancia'),
    ('Transmutação');
    

