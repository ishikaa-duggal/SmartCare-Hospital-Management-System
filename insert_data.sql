INSERT INTO Departments (department_name, floor_number)
              VALUES 
              
                ('Cardiology',1),
('Neurology',2),
('Orthopedics',3),
('Pediatrics',2),
('Oncology',4),
('Dermatology',5),
('Emergency',1),
('Radiology',3);


INSERT INTO Doctors ( first_name, last_name, specialisation, phone, email, department_id) 
VALUES 
('Aarav','Sharma','Cardiologist','9876543210','aarav@smartcare.com',1),

('Priya','Mehta','Neurologist','9876543211','priya@smartcare.com',2),

('Rahul','Verma','Orthopedic Surgeon','9876543212','rahul@smartcare.com',3),

('Sneha','Kapoor','Pediatrician','9876543213','sneha@smartcare.com',4),

('Vikram','Singh','Oncologist','9876543214','vikram@smartcare.com',5),

('Ananya','Joshi','Dermatologist','9876543215','ananya@smartcare.com',6),

('Kabir','Malhotra','Emergency Physician','9876543216','kabir@smartcare.com',7),

('Riya','Nair','Radiologist','9876543217','riya@smartcare.com',8);

INSERT INTO Patients(first_name, last_name, phone, email, gender, date_of_birth, address, blood_group) 
VALUES
('Aisha','Khan','9876500001','aisha@gmail.com','Female','2002-05-18','Lucknow','B+'),

('Rohan','Gupta','9876500002','rohan@gmail.com','Male','2001-09-12','Kanpur','O+'),

('Priya','Sharma','9876500003','priya@gmail.com','Female','2003-03-25','Delhi','A+'),

('Arjun','Verma','9876500004','arjun@gmail.com','Male','2000-11-15','Noida','AB+'),

('Neha','Singh','9876500005','neha@gmail.com','Female','2002-08-10','Lucknow','O-'),

('Kabir','Malhotra','9876500006','kabir@gmail.com','Male','1999-06-20','Jaipur','B-'),

('Ananya','Joshi','9876500007','ananya@gmail.com','Female','2001-12-05','Mumbai','A-'),

('Vivek','Patel','9876500008','vivek@gmail.com','Male','1998-04-28','Indore','AB-');

INSERT INTO Medicines(medicine_name, manufacturer, price)
VALUES
('Paracetamol','Cipla',25.50),

('Amoxicillin','Sun Pharma',120.00),

('Metformin','Dr. Reddy',95.75),

('Azithromycin','Abbott',180.00),

('Ibuprofen','Pfizer',65.00),

('Cetirizine','Cipla',40.00);


INSERT INTO Rooms(room_number, room_type, availability_status)
VALUES
('101','General','Available'),

('102','General','Occupied'),

('201','ICU','Available'),

('202','ICU','Occupied'),
('301','Private','Available'),

('302','Private','Occupied');

INSERT INTO Appointments( patient_id, doctor_id, appointment_date, appointment_time, status)
VALUES
(1,1,'2026-07-25','09:00:00','Completed'),

(2,2,'2026-07-25','10:00:00','Completed'),

(3,3,'2026-07-26','11:30:00','Scheduled'),

(4,4,'2026-07-26','12:00:00','Scheduled'),

(5,5,'2026-07-27','02:00:00','Cancelled'),

(6,6,'2026-07-27','03:30:00','Completed'),

(7,7,'2026-07-28','09:30:00','Scheduled'),

(8,8,'2026-07-28','11:00:00','Scheduled');

INSERT INTO Admissions(patient_id, room_id, admission_date, discharge_date)
VALUES
(2,2,'2026-07-25','2026-07-28'),

(4,4,'2026-07-26',NULL),

(6,6,'2026-07-27',NULL);

INSERT INTO Prescriptions(patient_id, doctor_id, medicine_id, dosage, duration_days) 
VALUES
(1,1,1,'1 tablet twice daily',5),

(2,2,2,'1 capsule daily',7),

(3,3,3,'500 mg after meals',30),

(4,4,4,'Once daily',3),

(5,5,5,'SOS for pain',5),

(6,6,6,'Night before sleep',10);


INSERT INTO Bills(patient_id, total_amount, payment_status, bill_date) 
VALUES

(1,2500.00,'Paid','2026-07-25'),

(2,6800.50,'Pending','2026-07-28'),

(3,1200.00,'Paid','2026-07-26'),

(4,15000.00,'Pending','2026-07-29'),

(5,950.00,'Paid','2026-07-27'),

(6,4300.75,'Pending','2026-07-28');


