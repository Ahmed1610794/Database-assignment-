CREATE database Telemedicin;
USE Telemedicin;
CREATE TABLE patients(
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(10),
);

CREATE TABLE Visit(
    Visit_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    date_of_visit DATE NOT NULL,
    Type_of_visit DATE NOT null,
);
CREATE TABLE Ed_visit(
    Ed_visit_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT NOT NULL,
    Visit_id INT NOT NULL,
    provider_id INT NOT NULL,

);

CREATE TABLE providers(
    provider_id INT PRIMARY KEY AUTO_INCREMENT,
    provider_name VARCHAR(50) NOT NULL,
    provider_address VARCHAR(50) NOT NULL,
  
);

CREATE TABLE Admission(
    addmission_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    date_of_addmissio DATE NOT NULL,
  
);
CREATE TABLE discharges(
    discharges_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    addmission_id INT,
  
);




