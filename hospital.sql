create database hospital;
use hospital;

create table especialidad(idEspecialidad bigint AUTO_INCREMENT primary key, nombreEspecialidad varchar(100));

create table consultorio(idConsultorio bigint AUTO_INCREMENT primary key, numeroConsultorio int, pisoConsultorio int);

create table medico(idMedico bigint AUTO_INCREMENT primary key, nombreMedico varchar(100), Turno varchar(100),
					telefono int, email varchar(100), idEspecialidad bigint, idConsultorio bigint,
					foreign key (idEspecialidad) references especialidad(idEspecialidad),
					foreign key (idConsultorio) references consultorio(idConsultorio));

create table paciente(idPaciente bigint AUTO_INCREMENT primary key, nombrePaciente varchar(100), 
					  direccion varchar(150), telefono int, idMedico bigint,
					  foreign key (idMedico) references medico(idMedico));

create table cita(idCita bigint AUTO_INCREMENT primary key, horaEntrada varchar(100),
				  idPaciente bigint,
				  foreign key (idPaciente) references paciente(idPaciente));

