create database Sensor
default character set utf8
default collate utf8_general_ci;

use Sensor;

create  table cadastro_cliente -- Cadastro do cliente do site 
(
	codcliente int primary key auto_increment,
    clinome varchar (50) not null,
    cliemail varchar (50) not null,
    clisenha text
) default charset = utf8;

insert into cadastro_cliente -- Exemplos de dados 
(clinome, cliemail, clisenha)
values
('Arnaldo', 'arnaldo@gmail.com', '12345678'),
('Silvia', 'silvia@gmail.com', '12345678'),
('Elimar', 'elimar@gmail.com', '12345678'),
('Daniel', 'daniel@gmail.com', '12345678');

create table cadastro_adm -- Site cadastro adm's
(
	codadm int primary key auto_increment,
    admnome varchar (50) not null,
    admsenha text
) default charset = utf8;

 insert into cadastro_adm 
 (admnome, admsenha) 
 values 
 ('Arthur', MD5('12345678')),
 ('Felipe', MD5('12345678')),
 ('Leonardo', MD5('12345678')),
 ('Ryan', MD5('12345678')),
 ('Gabriel', MD5('12345678'));

create table dados_sensor  -- Dados do sensor exposto no site
(
	codsensor int primary key auto_increment,
    sensorarea varchar (50) not null,
    numindiv int,
    qtdsensor int,
    datahora datetime
) default charset = utf8;

insert into dados_sensor
(sensorarea, numindiv, qtdsensor, datahora)
values
('Entrada', 20, 12, '2020-03-09 13:40:00'),
('Saída', 5, 10, '2020-03-09 14:27:00'),
('Entrada', 2, 12, '2020-03-09 14:52:00'),
('Saída', 7, 10, '2020-03-09 15:11:00'),
('Entrada', 3, 12, '2020-03-09 15:35:00'),
('Saída', 9, 10, '2020-03-09 15:40:00');

-- create table monitor_caixa
-- (
-- monitorcod int primary key auto_increment,
 --   numcaixas int,
 --   numcaixafunc int,
 --   numcaixadesat int,
--    numcaixacheio int,
--    numcaixavazio int,
 --   mdatahora datetime
-- ) default charset = utf8;

-- insert into monitor_caixa
-- (numcaixas, numcaixasfunc, numcaixadesat, numcaixacheio, numcaixavazio, mdatahora)
-- values
-- (20, 12, 8, 8, 3, '2020-03-09 13:40:00');
	

select * from cadastro_cliente;

select * from cadastro_adm;

select * from dados_sensor;