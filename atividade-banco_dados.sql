create database Consultorio;/*criando o banco de dados */
 /*caracteres especial: varchar*/ 
 /*char:tamanho certo, mesmo tamanho */
 /*saber o tamanho que vai ser colocado */ 
 /* describe table: descrição da tabela */ 
 /* select * from: seleciona a tabela*/
/* mer atributo, sql é campo(coluna) */ 
/* mer é entidade, no sql tabela*/ 
/*not null: obrigatório  */
use Consultorio; /* acessando o banco de dados */
drop database Consultorio; /* apagando  banco*/


create table Paciente(
	pk_id_paciente int auto_increment primary key,
    nome_paciente varchar(100) not null,
    data_nasc_paciente date, 
    cpf_paciente char(11),
    genero_paciente enum('f','m','o'),
    endereco_paciente varchar(100),
    email_paciente varchar(50),
    telefone_paciente char(13)
);

insert into Paciente (
	nome_paciente,data_nasc_paciente,cpf_paciente,genero_paciente,endereco_paciente,email_paciente,telefone_paciente) values('João da Silva','1987-02-08',
    '12365478945','m','rua nove,10','joão@joao.com','5511912345678'),
('Josiane domingos','2004-06-05','12365478945','m','rua nove,10','joão@joao.com','5511912345672'),
('Ricardo ribeiro de matos ','2002-02-10','12365478945','m','rua nove,10','joão@joao.com','5511912345675'),
('Isabela clemente da silva','2004-02-08','12365478945','m','rua nove,10','joão@joao.com','5511912345674'),
('José ricardo','1972-02-08','12365478945','m','rua nove,10','joão@joao.com','5511912345672'),
('mariana neves dos santos da silva','1972-02-08','12365478945','m','rua nove,10','joão@joao.com','5511912345673'),
('maria zelia neves dos santos','1954-02-08','12365478945','m','rua nove,10','joão@joao.com','5511912345677'),
('Victor francisco neves dos santos da silva','2016-02-08','12365478945','m','rua nove,10','joão@joao.com','5511912345674'),
('beatriz de santos ','1957-02-08','12365478945','m','rua nove,10','joão@joao.com','5511912345678'),
('wesley de rocha','1997-02-08','12365478945','m','rua nove,10','joão@joao.com','5511912345679'),
('Debora paixão','1969-02-08','12365478945','m','rua nove,10','joão@joao.com','5511912345671');

describe  Paciente;
select * from Paciente;

create database Dentista;
use Dentista;
 drop table Dentista;
 create table Dentista(
 pk_id_dentista int auto_increment primary key,
    nome_dentista varchar(100) not null,
    cro_dentista char (7) not null,
    data_nasc_dentista date, 
    cpf_dentista char(11),
    genero_dentista enum('f','m','o'),
    endereco_dentista varchar(100),
    email_dentista varchar(50),
    telefone_dentista char(13)
 );
 describe Dentista;
 insert into Dentista (
 nome_dentista,cro_dentista,data_nasc_dentista, cpf_dentista, genero_dentista,endereco_dentista,email_dentista,telefone_dentista) values
 ('ferrari','9876543','2005-08-23','76548392187','f','rua nove,19','joão@j.com','5511912845478'),
('Josiane domingos','9876544','2006-06-05','12368478945','m','rua nove,32','joão@josi.com','5511912845679'),
('Ricardo matos ','9676543','2002-02-10','12365478945','m','rua nove,10','joão@joao.com','5511912345675'),
('Isabel da silva','8876543','2004-02-08','12365478945','m','rua nove,10','joão@joao.com','5511912345674'),
('José ','9578543','2007-03-08','12365478945','m','rua nove,10','joão@joao.com','5511912345672'),
('mariana da silva','9846543','1972-02-08','12365478945','m','rua nove,10','joão@joao.com','5511912345673'),
('maria dos santos','5876543','1954-02-08','12365478945','m','rua nove,10','joão@joao.com','5511912345677'),
('francisco neves dos santos da silva','9876543','2016-02-08','12365478945','m','rua nove,10','vitori@caroline.com','5511912345674'),
('beatriz de santos ','3876543','1957-02-08','12365478945','m','rua nove,10','isabel@joao.com','5511922345678'),
('wesley de rocha pinto','2876543','1997-02-08','12365478945','m','rua nove,10','jose@castroo.com','5511912345679'),
('Debora paixão souza','1876543','1969-02-08','12365478945','m','rua nove,10','mariana@neves.com','5511917395671');
 describe Dentista;
 select  * from Dentista;
 
 create table Consulta(
  pk_id_consulta int auto_increment primary key,
    local_consulta varchar(100) not null,
    data_consulta datetime not null,
    descricao_consulta varchar (100) not null
 );
 
 insert into Consulta (local_consulta, data_consulta, descricao_consulta)
 values ('sala1', '2024-08-12 11:26:00', 'Avaliação'),
('sala1', '2024-08-12 11:26:00', 'Avaliação'),
('sala1', '2024-08-12 11:26:00', 'obturação'),
('sala1', '2024-08-12 11:26:00', 'manutenção'),
('sala1', '2024-08-12 11:26:00', 'obturação'),
('sala1', '2024-08-12 11:26:00', 'prótese'),
('sala1', '2024-08-12 11:26:00', 'prótese'),
('sala1', '2024-08-12 11:26:00', 'manutenção'),
('sala1', '2024-08-12 11:26:00', 'Avaliação'),
('sala1', '2024-08-12 11:26:00', 'Avaliação'),
('sala1', '2024-08-12 11:26:00', 'manutenção');

describe Consulta;
select * from Consulta;
drop Consulta;
 
 
