CREATE TABLE Locations (
    id SERIAL PRIMARY KEY,
    campus_name VARCHAR(50),
    address VARCHAR(255),
    total_enrollment INT
);

CREATE TABLE Buildings (
    id SERIAL PRIMARY KEY,
    type VARCHAR(50),
    address VARCHAR(255)
);

CREATE TABLE Departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    faculty_id INT,
    building_id INT,
    FOREIGN KEY (faculty_id) REFERENCES Faculty(id),
    FOREIGN KEY (building_id) REFERENCES Buildings(id)
);

CREATE TABLE Faculty (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_title VARCHAR(100),
    yearly_salary DECIMAL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(id)
);

CREATE TABLE Emphases (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    classes TEXT,
    total_credits INT
);

CREATE TABLE Majors (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    required_classes TEXT,
    total_credits INT,
    emphases_id INT,
    FOREIGN KEY (emphases_id) REFERENCES Emphases(id)
);

CREATE TABLE Minors (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    classes TEXT,
    total_credits INT
);

CREATE TABLE DormBuildings (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    cost_of_living_per_semester DECIMAL,
    address VARCHAR(255),
    current_rd VARCHAR(100)
);

CREATE TABLE Students (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    major_id INT,
    emphasis_id INT,
    minor_id INT,
    residence_id INT,
    classes TEXT,
    total_credits INT,
    FOREIGN KEY (major_id) REFERENCES Majors(id),
    FOREIGN KEY (emphasis_id) REFERENCES Emphases(id),
    FOREIGN KEY (minor_id) REFERENCES Minors(id),
    FOREIGN KEY (residence_id) REFERENCES DormBuildings(id)
);

CREATE TABLE Classes (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    reference VARCHAR(20),
    professor_id INT,
    credits INT,
    prereqs TEXT,
    FOREIGN KEY (professor_id) REFERENCES Faculty(id)
);

CREATE TABLE Clubs (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    number_of_members INT,
    president_id INT,
    location VARCHAR(255),
    FOREIGN KEY (president_id) REFERENCES Students(id)
);

CREATE TABLE Jobs (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    min_salary DECIMAL,
    max_salary DECIMAL
);