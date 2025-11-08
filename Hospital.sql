create database project;
use project;

CREATE TABLE Department (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);

INSERT INTO Department (department_name, location) VALUES
('Cardiology', 'Block A'),
('Neurology', 'Block B'),
('Orthopedics', 'Block C'),
('Pediatrics', 'Block D'),
('Dermatology', 'Block E'),
('Oncology', 'Block F'),
('General Medicine', 'Block G');



CREATE TABLE Doctor (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    specialization VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100) UNIQUE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);


INSERT INTO Doctor (first_name, last_name, specialization, phone, email, department_id) VALUES
('John','Doe','Cardiologist','9876543210','johndoe1@example.com',1),
('Alice','Smith','Cardiologist','9876543211','alicesmith@example.com',1),
('Robert','Brown','Neurologist','9876543212','robertbrown@example.com',2),
('Emily','Davis','Neurologist','9876543213','emilydavis@example.com',2),
('Michael','Wilson','Orthopedic','9876543214','michaelwilson@example.com',3),
('Sarah','Taylor','Orthopedic','9876543215','sarahtaylor@example.com',3),
('David','Anderson','Pediatrician','9876543216','davidanderson@example.com',4),
('Laura','Thomas','Pediatrician','9876543217','laurathomas@example.com',4),
('James','Jackson','Dermatologist','9876543218','jamesjackson@example.com',5),
('Linda','White','Dermatologist','9876543219','lindawhite@example.com',5),
('William','Harris','Oncologist','9876543220','williamharris@example.com',6),
('Elizabeth','Martin','Oncologist','9876543221','elizabethmartin@example.com',6),
('Richard','Thompson','General Physician','9876543222','richardthompson@example.com',7),
('Susan','Garcia','General Physician','9876543223','susangarcia@example.com',7),
('Charles','Martinez','General Physician','9876543224','charlesmartinez@example.com',7);



CREATE TABLE Patient (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    gender CHAR(1),
    phone VARCHAR(15),
    email VARCHAR(100) UNIQUE,
    address VARCHAR(255)
);



INSERT INTO Patient (patient_id, first_name, last_name, date_of_birth, gender, phone, email, address) VALUES
(1,'Aarav','Shah','1985-02-14','M','9000000001','patient1@example.com','123 MG Road, Bangalore'),
(2,'Ananya','Patel','1990-06-23','F','9000000002','patient2@example.com','45 Residency Road, Bangalore'),
(3,'Rohan','Mehta','1982-11-05','M','9000000003','patient3@example.com','12 Church Street, Bangalore'),
(4,'Sanya','Kumar','1995-01-18','F','9000000004','patient4@example.com','78 Brigade Road, Bangalore'),
(5,'Vivaan','Gupta','1988-09-09','M','9000000005','patient5@example.com','23 Jayanagar, Bangalore'),
(6,'Ishita','Sharma','1992-12-12','F','9000000006','patient6@example.com','56 Whitefield, Bangalore'),
(7,'Aditya','Rao','1987-03-21','M','9000000007','patient7@example.com','34 Koramangala, Bangalore'),
(8,'Meera','Kapoor','1991-07-07','F','9000000008','patient8@example.com','89 Indiranagar, Bangalore'),
(9,'Karan','Joshi','1984-05-30','M','9000000009','patient9@example.com','21 HSR Layout, Bangalore'),
(10,'Tanya','Desai','1993-08-15','F','9000000010','patient10@example.com','67 Malleshwaram, Bangalore'),
(11,'Arjun','Verma','1986-10-10','M','9000000011','patient11@example.com','10 Ulsoor, Bangalore'),
(12,'Nisha','Singh','1994-11-25','F','9000000012','patient12@example.com','12 Whitefield, Bangalore'),
(13,'Raghav','Chopra','1983-04-02','M','9000000013','patient13@example.com','88 Bannerghatta Road, Bangalore'),
(14,'Diya','Malhotra','1996-02-16','F','9000000014','patient14@example.com','45 JP Nagar, Bangalore'),
(15,'Shiv','Bhatt','1989-06-12','M','9000000015','patient15@example.com','22 Kalyan Nagar, Bangalore'),
(16,'Pooja','Rathi','1992-09-19','F','9000000016','patient16@example.com','56 Rajajinagar, Bangalore'),
(17,'Sai','Nair','1985-12-30','M','9000000017','patient17@example.com','34 Banashankari, Bangalore'),
(18,'Anika','Saxena','1990-03-05','F','9000000018','patient18@example.com','78 Jayanagar, Bangalore'),
(19,'Dev','Shinde','1987-08-22','M','9000000019','patient19@example.com','21 Indiranagar, Bangalore'),
(20,'Rhea','Chawla','1993-05-28','F','9000000020','patient20@example.com','90 HSR Layout, Bangalore'),
(21,'Kabir','Malik','1984-07-15','M','9000000021','patient21@example.com','15 MG Road, Bangalore'),
(22,'Sana','Khan','1991-10-02','F','9000000022','patient22@example.com','20 Residency Road, Bangalore'),
(23,'Arnav','Bajaj','1988-01-12','M','9000000023','patient23@example.com','33 Church Street, Bangalore'),
(24,'Kiara','Reddy','1994-03-18','F','9000000024','patient24@example.com','54 Brigade Road, Bangalore'),
(25,'Yash','Choudhary','1987-12-22','M','9000000025','patient25@example.com','12 Jayanagar, Bangalore'),
(26,'Suhana','Mehra','1992-11-11','F','9000000026','patient26@example.com','87 Whitefield, Bangalore'),
(27,'Reyansh','Verma','1985-06-05','M','9000000027','patient27@example.com','45 Koramangala, Bangalore'),
(28,'Anvi','Sharma','1993-09-09','F','9000000028','patient28@example.com','76 Indiranagar, Bangalore'),
(29,'Ayaan','Patel','1989-02-20','M','9000000029','patient29@example.com','23 HSR Layout, Bangalore'),
(30,'Myra','Gupta','1995-04-18','F','9000000030','patient30@example.com','65 Malleshwaram, Bangalore'),
(31,'Krishna','Joshi','1986-08-25','M','9000000031','patient31@example.com','12 Ulsoor, Bangalore'),
(32,'Esha','Shah','1991-12-12','F','9000000032','patient32@example.com','44 Whitefield, Bangalore'),
(33,'Vivaan','Kumar','1988-03-05','M','9000000033','patient33@example.com','78 Banashankari, Bangalore'),
(34,'Tara','Rao','1990-07-17','F','9000000034','patient34@example.com','21 Jayanagar, Bangalore'),
(35,'Rudra','Mehta','1987-01-30','M','9000000035','patient35@example.com','89 Indiranagar, Bangalore'),
(36,'Aisha','Kapoor','1994-05-25','F','9000000036','patient36@example.com','56 HSR Layout, Bangalore'),
(37,'Aryan','Verma','1985-11-20','M','9000000037','patient37@example.com','12 MG Road, Bangalore'),
(38,'Ira','Singh','1992-02-14','F','9000000038','patient38@example.com','45 Residency Road, Bangalore'),
(39,'Kabir','Bhatia','1989-06-06','M','9000000039','patient39@example.com','34 Church Street, Bangalore'),
(40,'Naina','Chawla','1993-08-28','F','9000000040','patient40@example.com','78 Brigade Road, Bangalore');







select*from patient;

CREATE TABLE Appointment (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);




INSERT INTO Appointment (patient_id, doctor_id, appointment_date, appointment_time) VALUES
(1, 3, '2025-09-25', '10:00:00'),
(2, 7, '2025-09-25', '11:00:00'),
(3, 2, '2025-09-26', '09:30:00'),
(4, 5, '2025-09-26', '14:00:00'),
(5, 1, '2025-09-27', '10:30:00'),
(6, 8, '2025-09-27', '13:00:00'),
(7, 4, '2025-09-28', '09:00:00'),
(8, 6, '2025-09-28', '15:00:00'),
(9, 10, '2025-09-29', '11:30:00'),
(10, 12, '2025-09-29', '14:30:00'),
(11, 14, '2025-09-30', '09:15:00'),
(12, 9, '2025-09-30', '13:45:00'),
(13, 1, '2025-10-01', '10:00:00'),
(14, 5, '2025-10-01', '11:00:00'),
(15, 3, '2025-10-02', '09:30:00'),
(16, 6, '2025-10-02', '14:00:00'),
(17, 2, '2025-10-03', '10:30:00'),
(18, 7, '2025-10-03', '13:00:00'),
(19, 4, '2025-10-04', '09:00:00'),
(20, 8, '2025-10-04', '15:00:00'),
(21, 10, '2025-10-05', '11:30:00'),
(22, 12, '2025-10-05', '14:30:00'),
(23, 14, '2025-10-06', '09:15:00'),
(24, 9, '2025-10-06', '13:45:00'),
(25, 1, '2025-10-07', '10:00:00'),
(26, 5, '2025-10-07', '11:00:00'),
(27, 3, '2025-10-08', '09:30:00'),
(28, 6, '2025-10-08', '14:00:00'),
(29, 2, '2025-10-09', '10:30:00'),
(30, 7, '2025-10-09', '13:00:00'),
(31, 4, '2025-10-10', '09:00:00'),
(32, 8, '2025-10-10', '15:00:00'),
(33, 10, '2025-10-11', '11:30:00'),
(34, 12, '2025-10-11', '14:30:00'),
(35, 14, '2025-10-12', '09:15:00'),
(36, 9, '2025-10-12', '13:45:00'),
(37, 1, '2025-10-13', '10:00:00'),
(38, 5, '2025-10-13', '11:00:00'),
(39, 3, '2025-10-14', '09:30:00'),
(40, 6, '2025-10-14', '14:00:00');





CREATE TABLE Disease (
    disease_id INT PRIMARY KEY AUTO_INCREMENT,
    disease_name VARCHAR(100) NOT NULL,
    description TEXT
);


INSERT INTO Disease (disease_name, description) VALUES
('Diabetes','Chronic condition affecting glucose metabolism'),
('Hypertension','High blood pressure'),
('Asthma','Respiratory condition causing difficulty in breathing'),
('Migraine','Severe recurring headaches'),
('Arthritis','Inflammation of joints'),
('Chickenpox','Viral infection causing rash'),
('Dermatitis','Skin inflammation'),
('Cancer','Uncontrolled cell growth');



CREATE TABLE Patient_Disease (
    patient_disease_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    disease_id INT,
    diagnosis_date DATE,
    severity VARCHAR(50),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (disease_id) REFERENCES Disease(disease_id)
);



INSERT INTO Patient_Disease (patient_id, disease_id, diagnosis_date, severity) VALUES
(1, 1, '2025-01-10', 'Mild'),
(2, 2, '2025-02-12', 'Moderate'),
(3, 3, '2025-03-15', 'Severe'),
(4, 4, '2025-04-20', 'Mild'),
(5, 5, '2025-05-05', 'Moderate'),
(6, 6, '2025-06-18', 'Severe'),
(7, 7, '2025-07-22', 'Mild'),
(8, 8, '2025-08-30', 'Moderate'),
(9, 1, '2025-01-18', 'Severe'),
(10, 2, '2025-02-25', 'Mild'),
(11, 3, '2025-03-12', 'Moderate'),
(12, 4, '2025-04-08', 'Severe'),
(13, 5, '2025-05-15', 'Mild'),
(14, 6, '2025-06-22', 'Moderate'),
(15, 7, '2025-07-05', 'Severe'),
(16, 8, '2025-08-10', 'Mild'),
(17, 1, '2025-01-28', 'Moderate'),
(18, 2, '2025-02-15', 'Severe'),
(19, 3, '2025-03-20', 'Mild'),
(20, 4, '2025-04-12', 'Moderate'),
(21, 5, '2025-05-28', 'Severe'),
(22, 6, '2025-06-14', 'Mild'),
(23, 7, '2025-07-18', 'Moderate'),
(24, 8, '2025-08-25', 'Severe'),
(25, 1, '2025-01-05', 'Mild'),
(26, 2, '2025-02-08', 'Moderate'),
(27, 3, '2025-03-10', 'Severe'),
(28, 4, '2025-04-15', 'Mild'),
(29, 5, '2025-05-20', 'Moderate'),
(30, 6, '2025-06-25', 'Severe'),
(31, 7, '2025-07-30', 'Mild'),
(32, 8, '2025-08-05', 'Moderate'),
(33, 1, '2025-01-12', 'Severe'),
(34, 2, '2025-02-20', 'Mild'),
(35, 3, '2025-03-25', 'Moderate'),
(36, 4, '2025-04-30', 'Severe'),
(37, 5, '2025-05-08', 'Mild'),
(38, 6, '2025-06-12', 'Moderate'),
(39, 7, '2025-07-18', 'Severe'),
(40, 8, '2025-08-22', 'Mild');




CREATE TABLE Room (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    room_number VARCHAR(10) NOT NULL UNIQUE,
    room_type VARCHAR(50),   -- ICU, General, Private
    capacity INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

INSERT INTO Room (room_number, room_type, capacity, department_id) VALUES
('101','ICU',1,1), ('102','General',2,1), ('103','Private',1,2), ('104','ICU',1,2),
('105','General',2,3), ('106','Private',1,3), ('107','ICU',1,4), ('108','General',2,4),
('109','Private',1,5), ('110','ICU',1,5), ('111','General',2,6), ('112','Private',1,6),
('113','ICU',1,7), ('114','General',2,7), ('115','Private',1,7);



CREATE TABLE Disease_Medication (
    disease_medication_id INT PRIMARY KEY AUTO_INCREMENT,
    disease_id INT,
    medication_name VARCHAR(100) NOT NULL,
    usage_notes VARCHAR(255),
    FOREIGN KEY (disease_id) REFERENCES Disease(disease_id)
);




INSERT INTO Disease_Medication (disease_id, medication_name, usage_notes) VALUES
(1, 'Paracetamol', '1 tablet every 6 hours for fever'),
(1, 'Ibuprofen', 'Take after meals, up to 3 times a day'),
(2, 'Amoxicillin', '500mg capsule, 3 times daily for 7 days'),
(2, 'Cefixime', '1 tablet daily after breakfast'),
(3, 'Metformin', '500mg twice daily with meals'),
(3, 'Glipizide', '5mg once daily before breakfast'),
(4, 'Amlodipine', '5mg once daily, monitor blood pressure'),
(4, 'Losartan', '50mg once daily, with or without food'),
(5, 'Omeprazole', '20mg before breakfast for acid reflux'),
(5, 'Ranitidine', '150mg twice daily for 2 weeks'),
(6, 'Cetirizine', '10mg once daily for allergies'),
(6, 'Loratadine', '10mg once daily, may cause drowsiness'),
(7, 'Salbutamol', '2 puffs every 4–6 hours as needed'),
(7, 'Montelukast', '10mg once daily in the evening'),
(8, 'Insulin', 'As prescribed by doctor before meals'),
(8, 'Glargine', 'Inject once daily at bedtime');




CREATE TABLE Prescription (
    prescription_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    disease_id INT,
    medication_name VARCHAR(100) NOT NULL,
    dosage VARCHAR(50),
    frequency VARCHAR(50),
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id),
    FOREIGN KEY (disease_id) REFERENCES Disease(disease_id)
);


INSERT INTO Prescription (patient_id, doctor_id, disease_id, medication_name, dosage, frequency, start_date, end_date) VALUES
(1, 3, 1, 'Paracetamol', '500mg', 'Every 6 hours', '2025-09-25', '2025-09-30'),
(2, 7, 2, 'Amoxicillin', '500mg', '3 times daily', '2025-09-25', '2025-10-01'),
(3, 2, 3, 'Metformin', '500mg', 'Twice daily', '2025-09-26', '2025-10-10'),
(4, 5, 4, 'Amlodipine', '5mg', 'Once daily', '2025-09-26', '2025-10-26'),
(5, 1, 5, 'Omeprazole', '20mg', 'Once daily', '2025-09-27', '2025-10-07'),
(6, 8, 6, 'Cetirizine', '10mg', 'Once daily', '2025-09-27', '2025-10-04'),
(7, 4, 7, 'Salbutamol', '2 puffs', 'Every 6 hours as needed', '2025-09-28', '2025-10-05'),
(8, 6, 8, 'Insulin', '10 units', 'Before meals', '2025-09-28', '2025-10-28'),
(9, 10, 1, 'Ibuprofen', '400mg', '3 times daily', '2025-09-29', '2025-10-03'),
(10, 12, 2, 'Cefixime', '200mg', 'Once daily', '2025-09-29', '2025-10-06'),
(11, 14, 3, 'Glipizide', '5mg', 'Once daily', '2025-09-30', '2025-10-14'),
(12, 9, 4, 'Losartan', '50mg', 'Once daily', '2025-09-30', '2025-10-30'),
(13, 1, 5, 'Ranitidine', '150mg', 'Twice daily', '2025-10-01', '2025-10-15'),
(14, 5, 6, 'Loratadine', '10mg', 'Once daily', '2025-10-01', '2025-10-08'),
(15, 3, 7, 'Montelukast', '10mg', 'Once daily', '2025-10-02', '2025-10-09'),
(16, 6, 8, 'Glargine', '10 units', 'Once daily', '2025-10-02', '2025-11-02'),
(17, 2, 1, 'Paracetamol', '500mg', 'Every 6 hours', '2025-10-03', '2025-10-08'),
(18, 7, 2, 'Amoxicillin', '500mg', '3 times daily', '2025-10-03', '2025-10-09'),
(19, 4, 3, 'Metformin', '500mg', 'Twice daily', '2025-10-04', '2025-10-18'),
(20, 8, 4, 'Amlodipine', '5mg', 'Once daily', '2025-10-04', '2025-11-04'),
(21, 10, 5, 'Omeprazole', '20mg', 'Once daily', '2025-10-05', '2025-10-15'),
(22, 12, 6, 'Cetirizine', '10mg', 'Once daily', '2025-10-05', '2025-10-12'),
(23, 14, 7, 'Salbutamol', '2 puffs', 'Every 6 hours as needed', '2025-10-06', '2025-10-13'),
(24, 9, 8, 'Insulin', '10 units', 'Before meals', '2025-10-06', '2025-11-06'),
(25, 1, 1, 'Paracetamol', '500mg', 'Every 6 hours', '2025-10-07', '2025-10-12'),
(26, 5, 2, 'Amoxicillin', '500mg', '3 times daily', '2025-10-07', '2025-10-13'),
(27, 3, 3, 'Metformin', '500mg', 'Twice daily', '2025-10-08', '2025-10-22'),
(28, 6, 4, 'Amlodipine', '5mg', 'Once daily', '2025-10-08', '2025-11-08'),
(29, 2, 5, 'Omeprazole', '20mg', 'Once daily', '2025-10-09', '2025-10-19'),
(30, 7, 6, 'Cetirizine', '10mg', 'Once daily', '2025-10-09', '2025-10-16'),
(31, 4, 7, 'Salbutamol', '2 puffs', 'Every 6 hours as needed', '2025-10-10', '2025-10-17'),
(32, 8, 8, 'Insulin', '10 units', 'Before meals', '2025-10-10', '2025-11-10'),
(33, 10, 1, 'Ibuprofen', '400mg', '3 times daily', '2025-10-11', '2025-10-15'),
(34, 12, 2, 'Cefixime', '200mg', 'Once daily', '2025-10-11', '2025-10-18'),
(35, 14, 3, 'Glipizide', '5mg', 'Once daily', '2025-10-12', '2025-10-26'),
(36, 9, 4, 'Losartan', '50mg', 'Once daily', '2025-10-12', '2025-11-12'),
(37, 1, 5, 'Ranitidine', '150mg', 'Twice daily', '2025-10-13', '2025-10-27'),
(38, 5, 6, 'Loratadine', '10mg', 'Once daily', '2025-10-13', '2025-10-20'),
(39, 3, 7, 'Montelukast', '10mg', 'Once daily', '2025-10-14', '2025-10-21'),
(40, 6, 8, 'Glargine', '10 units', 'Once daily', '2025-10-14', '2025-11-14');




CREATE TABLE Total_Bill (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    appointment_id INT,
    room_id INT,
    total_amount DECIMAL(10,2) NOT NULL,
    payment_status VARCHAR(50) DEFAULT 'Pending', -- Pending, Paid, Cancelled
    bill_date DATE NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (appointment_id) REFERENCES Appointment(appointment_id),
    FOREIGN KEY (room_id) REFERENCES Room(room_id)
);




INSERT INTO Total_Bill (patient_id, appointment_id, room_id, total_amount, payment_status, bill_date) VALUES
(1, 1, 2, 5000.00, 'Paid', '2025-09-25'),
(2, 2, 3, 4500.00, 'Pending', '2025-09-26'),
(3, 3, 1, 6000.00, 'Paid', '2025-09-27'),
(4, 4, 4, 5500.00, 'Pending', '2025-09-28'),
(5, 5, 5, 7000.00, 'Paid', '2025-09-29'),
(6, 6, 6, 4800.00, 'Pending', '2025-09-30'),
(7, 7, 7, 5200.00, 'Paid', '2025-10-01'),
(8, 8, 8, 5300.00, 'Pending', '2025-10-02'),
(9, 9, 2, 5100.00, 'Paid', '2025-10-03'),
(10, 10, 3, 4900.00, 'Pending', '2025-10-04'),
(11, 11, 1, 6000.00, 'Paid', '2025-10-05'),
(12, 12, 4, 5500.00, 'Pending', '2025-10-06'),
(13, 13, 5, 7000.00, 'Paid', '2025-10-07'),
(14, 14, 6, 4800.00, 'Pending', '2025-10-08'),
(15, 15, 7, 5200.00, 'Paid', '2025-10-09'),
(16, 16, 8, 5300.00, 'Pending', '2025-10-10'),
(17, 17, 2, 5100.00, 'Paid', '2025-10-11'),
(18, 18, 3, 4900.00, 'Pending', '2025-10-12'),
(19, 19, 1, 6000.00, 'Paid', '2025-10-13'),
(20, 20, 4, 5500.00, 'Pending', '2025-10-14'),
(21, 21, 5, 7000.00, 'Paid', '2025-10-15'),
(22, 22, 6, 4800.00, 'Pending', '2025-10-16'),
(23, 23, 7, 5200.00, 'Paid', '2025-10-17'),
(24, 24, 8, 5300.00, 'Pending', '2025-10-18'),
(25, 25, 2, 5100.00, 'Paid', '2025-10-19'),
(26, 26, 3, 4900.00, 'Pending', '2025-10-20'),
(27, 27, 1, 6000.00, 'Paid', '2025-10-21'),
(28, 28, 4, 5500.00, 'Pending', '2025-10-22'),
(29, 29, 5, 7000.00, 'Paid', '2025-10-23'),
(30, 30, 6, 4800.00, 'Pending', '2025-10-24'),
(31, 31, 7, 5200.00, 'Paid', '2025-10-25'),
(32, 32, 8, 5300.00, 'Pending', '2025-10-26'),
(33, 33, 2, 5100.00, 'Paid', '2025-10-27'),
(34, 34, 3, 4900.00, 'Pending', '2025-10-28'),
(35, 35, 1, 6000.00, 'Paid', '2025-10-29'),
(36, 36, 4, 5500.00, 'Pending', '2025-10-30'),
(37, 37, 5, 7000.00, 'Paid', '2025-10-31'),
(38, 38, 6, 4800.00, 'Pending', '2025-11-01'),
(39, 39, 7, 5200.00, 'Paid', '2025-11-02'),
(40, 40, 8, 5300.00, 'Pending', '2025-11-03');



--         JOINS       ---

/* Question 1(Inner Join): 
List all the patients along with their assigned doctors name and appointment date */

select 
   p.patient_id,
   p.first_name,
   p.last_name,
   d.first_name,
   d.last_name,
   a.appointment_date 
from appointment a
INNER JOIN Patient p 
on 
a.patient_id = p.patient_id
INNER JOIN Doctor d 
on 
a.doctor_id = d.doctor_id;
   

/* Question 2(Left Join) :  
   Retrieve patients who have paid their hospital bill and whose total amount 
   exceeds 5200, along with their disease details */
   
select 
   p.patient_id,
   p.first_name,
   p.last_name,
   d.disease_name,
   tb.bill_id,
   tb.total_amount,
   tb.payment_status
from 
patient p 

LEFT JOIN Patient_Disease pd 
on 
p.patient_id = pd.patient_id
LEFT JOIN Disease d 
on 
pd.disease_id = d.disease_id
LEFT JOIN Total_Bill tb
on 
p.patient_id = tb.patient_id 

where tb.total_amount > 5200 AND tb.payment_status = 'Paid';




/* Question 3(Right Join) :
   Retrieve the list of rooms and the patients assigned to them, showing all rooms,
   even if some rooms are currently unoccupied */
   
   
select 
  
   r.room_id,
   r.room_number,
   r.room_type,
   r. capacity,
   p.patient_id,
   p.first_name,
   p.last_name
   
from patient p
RIGHT JOIN 
Room r 
on p.patient_id = r.patient_id;


--      VIEW     --
/* Question 1:  Create a view that shows each patient's appointment details */

create VIEW Patient_Appointment_view AS

select
   p.patient_id,
   p.first_name as Patient_first_name,
   p.last_name as Patiet_last_name,
   d.doctor_id,
   d.first_name as Doctor_first_name,
   d.last_name as Doctor_last_name,
   dep.department_name,
   a.appointment_date
from appointment a

JOIN patient p 
on 
a.patient_id = p.patient_id
JOIN Doctor d
on
a.doctor_id = d.doctor_id 
JOIN Department dep
on 
d.department_id = dep.department_id;

select*from Patient_Appointment_view;


/* Question 2: Create a view that displays each patient's total billed amount and payment status */

create view Patient_total_bill AS
select
   p.patient_id,
   p.first_name,
   p.last_name,
   SUM(tb.total_amount) AS Total_amount,
   tb.payment_status
from total_bill tb

JOIN patient p
on 
tb.patient_id = p.patient_id

group by 
p.patient_id, p.first_name, p.last_name, tb.payment_status;

select*from Patient_total_bill;


/*Question 3: Create a view that displays doctor's name, the patients they are treating, and the disease of each patient*/

create view Doctor_disease_View AS
select 
    d.doctor_id,
    d.first_name as doctor_first_name,
    d.last_name as doctor_last_name,
    p.first_name as patient_first_name,
    p.last_name as patient_last_name,
    dis.disease_name
from prescription pr
JOIN  Doctor d
on 
pr.doctor_id = d.doctor_id
JOIN patient p
on 
pr.patient_id = p.patient_id
JOIN Disease dis 
on pr.disease_id = dis.disease_id;


select*from doctor_disease_view;


--    Stored Procedure  --
/* Question 1: Create a stored procedure to calculate the total bill amount for a given patient id */

delimiter $$

create procedure Calculate_patient_bill(IN pid INT)
Begin 
    select
       p.patient_id,
       p.first_name,
       p.last_name,
       SUM(tb.total_amount)  AS Total_Bill
	from Total_Bill tb
    JOIN Patient p 
    on 
    tb.patient_id = p.patient_id
    where tb.patient_id = pid
    group by p.patient_id,p.first_name, p.last_name;

END $$

delimiter ;

call calculate_patient_bill(7);

/* Question 2: Create a stored procedure to calculate the average total bill amount per department 
               based on doctor department */
               
Delimiter $$
create procedure Average_Bill()
Begin
   select 
      dept.department_name,
      AVG(tb.total_amount) AS Average_Bill
	from total_bill tb
    Join Appointment a
    on 
    tb.appointment_id = a.appointment_id
    join Doctor d 
    on 
    a.doctor_id = d.doctor_id 
    join Department Dept 
    on d.department_id = dept.department_id
    Group by dept.department_name
    order by average_bill desc;
END $$
Delimiter ;

call average_bill();

/* Question 3: Create a procedure to update patient's payment status */


Delimiter $$

create procedure new_payment_status(IN pid int, IN new_status varchar(50))
BEGIN
    update Total_Bill SET payment_status = new_status
    where patient_id = pid;
    
    select
         bill_id,
         patient_id,
         appointment_id,
         room_id,
         total_amount,
         payment_Status,
         bill_date
	from Total_Bill
    where patient_id = pid;
END $$

Delimiter ;

call new_payment_status(10, 'unpaid');

    
   DROP PROCEDURE new_Payment_Status;


Describe total_bill;



--       Trigger   --

/* Question 1: Create a trigger that sets the payment statis to "Paid" when the total bill amount is greater than 4700 */

Delimiter $$
create trigger set_payment_status
BEFORE insert on total_bill for each row
Begin
    if new.total_amount > 4700 THEN
    SET new.payment_status = 'Paid';
    end if;
END $$

Delimiter ;

insert into total_bill(patient_id, appointment_id, room_id, total_amount, bill_date)
values(10, 12, 6,7000.00, '2025-11-04');

select*from total_bill where patient_id = 10;
    
/* Question 2: create a trigger that updates the total bill amount by adding 500 as a service charge 
               wheneever an existing bill is updated  */
Delimiter $$
              
Create trigger service_charge
before update on total_bill for each row
BEGIN
   SET new.total_amount = new.total_amount + 500;
   
 END $$
 
 Delimiter ;
 
 select bill_id, total_amount from total_bill where bill_id = 12;
 
 -- Now we update it to check whether 500 service charge will be applied or mot 
 
 update total_bill SET total_amount =5500
 where bill_id = 12;
 
 /* Question 3: Create a trigger that updates the bill date to current date 
                whenever a new record is inserted into total_bill table */

delimiter $$

create trigger update_bill_date
BEFORE INSERT on total_bill
for each row
BEGIN 
   SET new.bill_date = CURDATE();
END $$

Delimiter ;

insert into total_bill(patient_id, appointment_id, room_id, total_amount, payment_status)
values(5, 4, 3, 5500, 'Paid');

select*from total_bill where patient_id = 5;

--      Window Functions ---
use project; 
/* Question 1: Find each patient's total bill amount and rank them according to the highest total amount paid  */

select
   p.patient_id,
   p.first_name,
   p.last_name,
   SUM(tb.total_amount) AS Total_Paid,
   RANK() over(order by SUM(tb.total_amount) DESC) AS payment_rank
from patient p
JOIN total_bill tb 
on 
p.patient_id = tb.patient_id
where tb.payment_status = 'Paid'
group by p.patient_id, p.first_name, p.last_name
order by total_paid desc;


/* Question 2: Find each doctor's total patients and rank them by patient count */
use project;
select
d.doctor_id,
d.first_name,
d.last_name,
COUNT(a.patient_id) AS Total_Patients,
Rank() OVER (order by COUNT(a.patient_id) DESC) AS Doctor_Rank
from doctor d

join appointment a 
on d.doctor_id = a.doctor_id
group by d.doctor_id, d.first_name, d.last_name
order by total_patients DESC;

 
 
 
 




