CREATE TABLE email (
 id INT NOT NULL,
 email VARCHAR(100) NOT NULL
);

ALTER TABLE email ADD CONSTRAINT PK_email PRIMARY KEY (id);


CREATE TABLE email_person (
 id INT NOT NULL
);

ALTER TABLE email_person ADD CONSTRAINT PK_email_person PRIMARY KEY (id);


CREATE TABLE instrument (
 id INT NOT NULL,
 instroment_id VARCHAR(100) NOT NULL UNIQUE,
 brand VARCHAR(100) NOT NULL,
 quantity INT NOT NULL,
 type VARCHAR(100) NOT NULL
);

ALTER TABLE instroment ADD CONSTRAINT PK_instroment PRIMARY KEY (id);


CREATE TABLE person (
 id INT NOT NULL,
 first_name VARCHAR(100),
 last_name VARCHAR(100),
 person_number VARCHAR(12) NOT NULL UNIQUE,
 street VARCHAR(100),
 zip VARCHAR(100),
 city VARCHAR(100)
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (id);


CREATE TABLE person_email (
 email_id INT NOT NULL,
 person_id INT NOT NULL
);

ALTER TABLE person_email ADD CONSTRAINT PK_person_email PRIMARY KEY (email_id,person_id);


CREATE TABLE phone (
 id INT NOT NULL,
 phone_no VARCHAR(13) NOT NULL
);

ALTER TABLE phone ADD CONSTRAINT PK_phone PRIMARY KEY (id);


CREATE TABLE phone_person (
 id INT NOT NULL,
 city VARCHAR(100),
 region VARCHAR(100),
 zip VARCHAR(100),
 street VARCHAR(10)
);

ALTER TABLE phone_person ADD CONSTRAINT PK_phone_person PRIMARY KEY (id);


CREATE TABLE soundgood_music_school (
 id INT NOT NULL,
 school_id VARCHAR(100) NOT NULL UNIQUE,
 zip VARCHAR(100),
 city VARCHAR(100),
 street VARCHAR(100)
);

ALTER TABLE soundgood_music_school ADD CONSTRAINT PK_soundgood_music_school PRIMARY KEY (id);


CREATE TABLE student (
 id INT NOT NULL,
 student_id VARCHAR(100) NOT NULL UNIQUE,
 level VARCHAR(10) NOT NULL,
 person_id INT NOT NULL
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);


CREATE TABLE contact_person (
 id INT NOT NULL,
 student_id INT NOT NULL,
 person_id INT
);

ALTER TABLE contact_person ADD CONSTRAINT PK_contact_person PRIMARY KEY (id);


CREATE TABLE instructor (
 id INT NOT NULL,
 employment_id VARCHAR(100) NOT NULL UNIQUE,
 teaching_field CHAR(10),
 person_id INT NOT NULL
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);


CREATE TABLE person_phone (
 phone_id INT NOT NULL,
 person_id INT NOT NULL
);

ALTER TABLE person_phone ADD CONSTRAINT PK_person_phone PRIMARY KEY (phone_id,person_id);


CREATE TABLE Rental (
 id INT NOT NULL,
 rental_id VARCHAR(100) NOT NULL UNIQUE,
 time TIMESTAMP(6) NOT NULL,
 student_id INT,
 instrument_id INT NOT NULL,
 price NUMERIC(10, 2) NOT NULL
);

ALTER TABLE Rental ADD CONSTRAINT PK_Rental PRIMARY KEY (id);


CREATE TABLE schedule (
 id INT NOT NULL,
 lesson_id VARCHAR(100) NOT NULL UNIQUE,
 school_id INT NOT NULL,
 time TIMESTAMP(6) NOT NULL,
 instructor_id INT NOT NULL,
 type_id VARCHAR(10) NOT NULL
);

ALTER TABLE schedule ADD CONSTRAINT PK_schedule PRIMARY KEY (id);


CREATE TABLE siblings (
 discount_id CHAR(100) NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE siblings ADD CONSTRAINT PK_siblings PRIMARY KEY (discount_id);


CREATE TABLE student_lesson (
 student_id INT NOT NULL,
 lesson_id INT NOT NULL
);

ALTER TABLE student_lesson ADD CONSTRAINT PK_student_lesson PRIMARY KEY (student_id,lesson_id);


CREATE TABLE ensembles (
 type_id INT NOT NULL,
 lesson_id INT NOT NULL,
 genre  VARCHAR(100) NOT NULL,
 minimum_participant VARCHAR(10) NOT NULL,
 maximum_participant VARCHAR(50) NOT NULL
);

ALTER TABLE ensembles ADD CONSTRAINT PK_ensembles PRIMARY KEY (type_id);


CREATE TABLE group_table (
 type_id INT NOT NULL,
 lesson_id  INT NOT NULL,
 mininum_participant VARCHAR(5) NOT NULL,
 maximum_participant VARCHAR(10) NOT NULL
);

ALTER TABLE group_table ADD CONSTRAINT PK_group PRIMARY KEY (type_id);


CREATE TABLE individual (
 type_id INT NOT NULL,
 losson_id INT NOT NULL,
 which_instroment VARCHAR(500) NOT NULL
);

ALTER TABLE individual ADD CONSTRAINT PK_individual PRIMARY KEY (type_id);


CREATE TABLE lesson_price (
 price_id CHAR(10) NOT NULL,
 type_id VARCHAR(10) NOT NULL,
 level VARCHAR(10) NOT NULL,
 price NUMERIC(10, 2) NOT NULL,
 schedule_id INT
);


ALTER TABLE lesson_price ADD CONSTRAINT PK_lesson_price PRIMARY KEY (price_id);


ALTER TABLE email_person ADD CONSTRAINT FK_email_person_0 FOREIGN KEY (id) REFERENCES email (id);


ALTER TABLE person_email ADD CONSTRAINT FK_person_email_0 FOREIGN KEY (email_id) REFERENCES email (id);
ALTER TABLE person_email ADD CONSTRAINT FK_person_email_1 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE phone_person ADD CONSTRAINT FK_phone_person_0 FOREIGN KEY (id) REFERENCES phone (id);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE contact_person ADD CONSTRAINT FK_contact_person_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE contact_person ADD CONSTRAINT FK_contact_person_1 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE person_phone ADD CONSTRAINT FK_person_phone_0 FOREIGN KEY (phone_id) REFERENCES phone (id);
ALTER TABLE person_phone ADD CONSTRAINT FK_person_phone_1 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE Rental ADD CONSTRAINT FK_Rental_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE Rental ADD CONSTRAINT FK_Rental_1 FOREIGN KEY (instrument_id) REFERENCES instroment (id);


ALTER TABLE schedule ADD CONSTRAINT FK_schedule_0 FOREIGN KEY (school_id) REFERENCES soundgood_music_school (id);
ALTER TABLE schedule ADD CONSTRAINT FK_schedule_1 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE siblings ADD CONSTRAINT FK_siblings_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE student_lesson ADD CONSTRAINT FK_student_lesson_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE student_lesson ADD CONSTRAINT FK_student_lesson_1 FOREIGN KEY (lesson_id) REFERENCES schedule (id);


ALTER TABLE ensembles ADD CONSTRAINT FK_ensembles_0 FOREIGN KEY (lesson_id) REFERENCES schedule (id);


ALTER TABLE group_table ADD CONSTRAINT FK_group_0 FOREIGN KEY (lesson_id ) REFERENCES schedule (id);


ALTER TABLE individual ADD CONSTRAINT FK_individual_0 FOREIGN KEY (losson_id) REFERENCES schedule (id);




