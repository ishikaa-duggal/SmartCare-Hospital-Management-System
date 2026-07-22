
CREATE TABLE Departments (
  department_id INT AUTO_INCREMENT PRIMARY KEY,
  department_name VARCHAR(100) NOT NULL,
  floor_number INT NOT NULL
  );
CREATE TABLE Doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR (50) NOT NULL,
    last_name VARCHAR (50) NOT NULL,
    specialisation VARCHAR (50) NOT NULL,
    phone VARCHAR (20),
    email VARCHAR (60) UNIQUE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
    );
    
    CREATE TABLE Patients (
      patient_id INT AUTO_INCREMENT PRIMARY KEY,
      first_name VARCHAR(50) NOT NULL,
      last_name VARCHAR(50) NOT NULL,
      phone VARCHAR(20),
      email VARCHAR(60) UNIQUE,
      gender VARCHAR(20),
      date_of_birth DATE,
      Address VARCHAR(300),
      blood_group VARCHAR(5)
      );
      
      CREATE TABLE Appointments ( 
        appointment_id INT AUTO_INCREMENT PRIMARY KEY, 
        patient_id INT, 
        doctor_id INT,
        appointment_date DATE,
        appointment_time TIME,
        status VARCHAR (20),
        FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
        FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
        );
        
        CREATE TABLE Rooms (
          room_id INT AUTO_INCREMENT PRIMARY KEY,
          room_type VARCHAR (30),
          room_number VARCHAR (10) UNIQUE,
          availability_status VARCHAR (20)
          );
          
          CREATE TABLE Admissions (
            admission_id INT AUTO_INCREMENT PRIMARY KEY,
            admission_date DATE,
            discharge_date DATE,
            room_id INT,
            patient_id INT,
            FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
            FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
            );
            
            CREATE TABLE Medicines (
              medicine_id INT AUTO_INCREMENT PRIMARY KEY,
              medicine_name VARCHAR (100),
              manufacturer VARCHAR (100), 
              price decimal (10,2)
              );
              
              CREATE TABLE Prescriptions (
                prescription_id INT AUTO_INCREMENT PRIMARY KEY,
                patient_id INT,
                doctor_id INT,
                medicine_id INT,
                dosage VARCHAR (100),
                duration_days INT,
                FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
                FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
                FOREIGN KEY (medicine_id) REFERENCES Medicines(medicine_id)
                );
                
                CREATE TABLE Bills (
                  bill_id INT  AUTO_INCREMENT PRIMARY KEY, 
                  patient_id INT,
                  total_amount DECIMAL (10,2), 
                  payment_status VARCHAR (50),
                  bill_date DATE,
                  FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
                  );
