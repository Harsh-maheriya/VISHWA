CREATE TABLE App_User (
    User_ID INTEGER PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Contact_no INTEGER
);

CREATE TABLE Health_activist (
    Health_activist_ID INTEGER PRIMARY KEY,
    Name VARCHAR(100),
    Contact_no INTEGER,
    User_ID INTEGER,
    FOREIGN KEY (User_ID) REFERENCES App_User(User_ID)
);

CREATE TABLE Staff_role (
    role_id INTEGER PRIMARY KEY,
    role_name VARCHAR(100)
);

CREATE TABLE Medical_Center (
    Medical_center_ID INTEGER PRIMARY KEY,
    Medical_center_name VARCHAR(100),
    Address VARCHAR(200)
);

CREATE TABLE Medical_Staff (
    User_ID INTEGER,
    Medical_Staff_ID INTEGER PRIMARY KEY,
    Medical_center_ID INTEGER,
    role_id INTEGER,
    FOREIGN KEY (User_ID) REFERENCES App_User(User_ID),
    FOREIGN KEY (Medical_center_ID) REFERENCES Medical_Center(Medical_center_ID),
    FOREIGN KEY (role_id) REFERENCES Staff_role(role_id)
);

CREATE TABLE Patient (
    Patient_ID INTEGER PRIMARY KEY,
    Name VARCHAR(100),
    Contact_no INTEGER,
    Gender VARCHAR(10),
    General_info TEXT
);

CREATE TABLE Disease (
    Disease_ID INTEGER PRIMARY KEY,
    Disease_Name VARCHAR(100),
    General_info TEXT
);

CREATE TABLE Admission (
    Admission_ID INTEGER PRIMARY KEY,
    Disease_ID INTEGER,
    Admission_date DATE,
    Patient_ID INTEGER,
    Medical_center_ID INTEGER,
    FOREIGN KEY (Disease_ID) REFERENCES Disease(Disease_ID),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Medical_center_ID) REFERENCES Medical_Center(Medical_center_ID)
);

CREATE TABLE Treatment (
    Treatment_ID INTEGER PRIMARY KEY,
    Admission_ID INTEGER,
    Medical_staff_ID INTEGER,
    Treatment_start_date DATE,
    Treatment_end_date DATE,
    Description TEXT,
    FOREIGN KEY (Admission_ID) REFERENCES Admission(Admission_ID),
    FOREIGN KEY (Medical_staff_ID) REFERENCES Medical_Staff(Medical_Staff_ID)
);

CREATE TABLE Medical_resource_type (
    Resource_type_ID INTEGER PRIMARY KEY,
    Resource_type_name VARCHAR(100),
    Resource_type_description TEXT
);

CREATE TABLE Medical_resources (
    Medical_resource_ID INTEGER PRIMARY KEY,
    Medical_center_ID INTEGER,
    Stock INTEGER,
    Resource_type_ID INTEGER,
    FOREIGN KEY (Medical_center_ID) REFERENCES Medical_Center(Medical_center_ID),
    FOREIGN KEY (Resource_type_ID) REFERENCES Medical_resource_type(Resource_type_ID)
);

CREATE TABLE Manufacturer (
    Manufacturer_ID INTEGER PRIMARY KEY,
    Production_capacity INTEGER,
    No_of_workers INTEGER,
    Name VARCHAR(100),
    Address TEXT,
    Email VARCHAR(100)
);

CREATE TABLE Vaccine (
    Vaccine_ID INTEGER PRIMARY KEY,
    Disease_ID INTEGER,
    Name VARCHAR(100),
    Manufactured_by INTEGER,
    Medical_info TEXT,
    Composition TEXT,
    FOREIGN KEY (Disease_ID) REFERENCES Disease(Disease_ID),
    FOREIGN KEY (Manufactured_by) REFERENCES Manufacturer(Manufacturer_ID)
);

CREATE TABLE Research_Center (
    Research_center_ID INTEGER PRIMARY KEY,
    Name VARCHAR(100),
    Address TEXT
);

CREATE TABLE Researcher (
    User_ID INTEGER,
    Researcher_ID INTEGER PRIMARY KEY,
    Research_center_ID INTEGER,
    FOREIGN KEY (User_ID) REFERENCES App_User(User_ID),
    FOREIGN KEY (Research_center_ID) REFERENCES Research_Center(Research_center_ID)
);

CREATE TABLE Research_Data (
    Data_ID INTEGER PRIMARY KEY,
    Description TEXT,
    Research_date DATE,
    Researcher_ID INTEGER,
    Disease_ID INTEGER,
    FOREIGN KEY (Researcher_ID) REFERENCES Researcher(Researcher_ID),
    FOREIGN KEY (Disease_ID) REFERENCES Disease(Disease_ID)
);

CREATE TABLE Research_data_disease (
    Data_disease_ID INTEGER PRIMARY KEY,
    Data_ID INTEGER,
    Disease_ID INTEGER,
    FOREIGN KEY (Data_ID) REFERENCES Research_Data(Data_ID),
    FOREIGN KEY (Disease_ID) REFERENCES Disease(Disease_ID)
);

CREATE TABLE Awareness_campaign (
    Campaign_ID INTEGER PRIMARY KEY,
    Health_ID INTEGER,
    Name VARCHAR(100),
    Description TEXT,
    Target_audience TEXT,
    Start_date DATE,
    End_date DATE,
    FOREIGN KEY (Health_ID) REFERENCES Health_activist(Health_activist_ID)
);

CREATE TABLE Campaign_disease (
    Campaign_disease_ID INTEGER PRIMARY KEY,
    Campaign_ID INTEGER,
    Disease_ID INTEGER,
    FOREIGN KEY (Campaign_ID) REFERENCES Awareness_campaign(Campaign_ID),
    FOREIGN KEY (Disease_ID) REFERENCES Disease(Disease_ID)
);