use trabajo1;

Create table tratamientos (
TraNumero int primary key not null,
TraFechaAsignado varchar (10) not null,
TraDescripcion Varchar (1000) not null,
TraFechaInicio date not null,
TraFechaFin date not null,
TraObservaciones varchar(1000) not null,
Trapaciente varchar (30) not null

);
create table Pacientes (
    PacIdentificacion INT PRIMARY KEY NOT NULL,
    PacNombres VARCHAR(30) NOT NULL,
    PacApellidos VARCHAR(30) NOT NULL,
    PacFechaNacimiento DATE NOT NULL,
    PacSexo VARCHAR(30),
	foreign key(fk_Tratamientos) references tratamientos (TraNumero)

);
create table Citas (
CitNumero int primary key not null auto_increment,
CitFecha date not null,
CitHora time not null,
CitPaciente varchar (30) not null,
CitMedico varchar (30) not null,
CitConsultorio Varchar (10) not null,
CitEstado varchar (1000) Not null,
CitObservaciones varchar (1000) Not null,
foreign key(fk_PacIdentificacion) references pacientes(PacIdentificacion)
);
create table Medicos(
MedIdentificacion int primary key not null,
MedNombre varchar (30) not null,
MedApellido varchar (30) not null,
foreign key(fk_CitNumero) references Citas(CitNumero)
);
Create table Consultorios (
ConNumero int primary key not null,
ConNombre varchar (30) not null,
foreign key(fk_MedIdentificacion) references Medicos (MedIdentificacion)
);


use trabajo1;
DELIMITER //
CREATE PROCEDURE trabajo1()
BEGIN  
    SELECT TratamiFechaAsignado  FROM Tratamientos;
	SELECT CitaNumero  FROM Citas;
    SELECT ConsuNumero FROM Consultorio;
    SELECT PacienIdentificacion FROM Pacientes;
    SELECT PacienNombres FROM Pacientes;
    SELECT  PacientNombres,PacienIdentificacion FROM Pacientes
    INNER JOIN Pacientes ON 
END //
DELIMITER ;