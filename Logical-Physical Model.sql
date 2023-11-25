CREATE TABLE "instroment"(
 "id" INT NOT NULL,
 instroment_id UNIQUE VARCHAR(100) NOT NULL,
 brand VARCHAR(100) NOT NULL,
 quantity VARCHAR(100) NOT NULL,
 type VARCHAR(100) NOT NULL
);

ALTER TABLE instroment ADD CONSTRAINT PK_instroment PRIMARY KEY (id);


CREATE TABLE person (
 id INT NOT NULL,
 first_name VARCHAR(100),
 last_name VARCHAR(100),
 person_number UNIQUE VARCHAR(12) NOT NULL,
 street VARCHAR(100),
 zip VARCHAR(100),
 city VARCHAR(100)
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (id);


CREATE TABLE phone (
 person_id INT NOT NULL,
 phone_no VARCHAR(13) NOT NULL
);

ALTER TABLE phone ADD CONSTRAINT PK_phone PRIMARY KEY (person_id);


CREATE TABLE phone_person (
 person_id INT NOT NULL,
 city VARCHAR(100),
 region VARCHAR(100),
 zip VARCHAR(100),
 street VARCHAR(10)
);

ALTER TABLE phone_person ADD CONSTRAINT PK_phone_person PRIMARY KEY (person_id);


CREATE TABLE soundgood_music_school (
 id INT NOT NULL,
 school_id UNIQUE VARCHAR(100) NOT NULL,
 zip VARCHAR(100),
 city VARCHAR(100),
 street VARCHAR(100)
);

ALTER TABLE soundgood_music_school ADD CONSTRAINT PK_soundgood_music_school PRIMARY KEY (id);


CREATE TABLE student (
 id INT NOT NULL,
 student_id UNIQUE VARCHAR(100) NOT NULL,
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


CREATE TABLE email (
 person_id INT NOT NULL,
 email VARCHAR(100) NOT NULL
);

ALTER TABLE email ADD CONSTRAINT PK_email PRIMARY KEY (person_id);


CREATE TABLE email_person (
 person_id INT NOT NULL
);

ALTER TABLE email_person ADD CONSTRAINT PK_email_person PRIMARY KEY (person_id);


CREATE TABLE instructor (
 id INT NOT NULL,
 employment_id UNIQUE VARCHAR(100) NOT NULL,
 instromentType CHAR(10),
 person_id INT NOT NULL
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);


CREATE TABLE Rental (
 id INT NOT NULL,
 rental_id UNIQUE VARCHAR(100) NOT NULL,
 time TIMESTAMP(20) NOT NULL,
 student_id INT,
 instrument_id INT NOT NULL
);

ALTER TABLE Rental ADD CONSTRAINT PK_Rental PRIMARY KEY (id);


CREATE TABLE siblings (
 discount_id CHAR(100) NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE siblings ADD CONSTRAINT PK_siblings PRIMARY KEY (discount_id);


CREATE TABLE lesson_administration (
 id INT NOT NULL,
 lesson_id UNIQUE VARCHAR(100) NOT NULL,
 time TIMESTAMP(20) NOT NULL,
 price VARCHAR(1000) NOT NULL,
 school_id INT NOT NULL,
 instructor_id INT NOT NULL,
 discount_id CHAR(100) NOT NULL,
 type  VARCHAR(10) NOT NULL
);

ALTER TABLE lesson_administration ADD CONSTRAINT PK_lesson_administration PRIMARY KEY (id);


CREATE TABLE student_lesson (
 student_id INT NOT NULL,
 lesson_id INT NOT NULL
);

ALTER TABLE student_lesson ADD CONSTRAINT PK_student_lesson PRIMARY KEY (student_id,lesson_id);


CREATE TABLE ensembles (
 id INT NOT NULL,
 lesson_id INT NOT NULL,
 genre  VARCHAR(100) NOT NULL,
 minimum_participant VARCHAR(10) NOT NULL,
 maximum_participant VARCHAR(50) NOT NULL
);

ALTER TABLE ensembles ADD CONSTRAINT PK_ensembles PRIMARY KEY (id);


CREATE TABLE group (
 id INT NOT NULL,
 lesson_id INT NOT NULL,
 mininum_participant VARCHAR(5) NOT NULL,
 maximum_participant VARCHAR(10) NOT NULL
);

ALTER TABLE group ADD CONSTRAINT PK_group PRIMARY KEY (id);


CREATE TABLE individual (
 id INT NOT NULL,
 losson_id INT NOT NULL,
 which_instroment VARCHAR(500) NOT NULL
);

ALTER TABLE individual ADD CONSTRAINT PK_individual PRIMARY KEY (id);


ALTER TABLE phone ADD CONSTRAINT FK_phone_0 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE phone_person ADD CONSTRAINT FK_phone_person_0 FOREIGN KEY (person_id) REFERENCES phone (person_id);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE contact_person ADD CONSTRAINT FK_contact_person_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE contact_person ADD CONSTRAINT FK_contact_person_1 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE email ADD CONSTRAINT FK_email_0 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE email_person ADD CONSTRAINT FK_email_person_0 FOREIGN KEY (person_id) REFERENCES email (person_id);


ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE Rental ADD CONSTRAINT FK_Rental_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE Rental ADD CONSTRAINT FK_Rental_1 FOREIGN KEY (instrument_id) REFERENCES instroment (id);


ALTER TABLE siblings ADD CONSTRAINT FK_siblings_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE lesson_administration ADD CONSTRAINT FK_lesson_administration_0 FOREIGN KEY (school_id) REFERENCES soundgood_music_school (id);
ALTER TABLE lesson_administration ADD CONSTRAINT FK_lesson_administration_1 FOREIGN KEY (instructor_id) REFERENCES instructor (id);
ALTER TABLE lesson_administration ADD CONSTRAINT FK_lesson_administration_2 FOREIGN KEY (discount_id) REFERENCES siblings (discount_id);


ALTER TABLE student_lesson ADD CONSTRAINT FK_student_lesson_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE student_lesson ADD CONSTRAINT FK_student_lesson_1 FOREIGN KEY (lesson_id) REFERENCES lesson_administration (id);


ALTER TABLE ensembles ADD CONSTRAINT FK_ensembles_0 FOREIGN KEY (lesson_id) REFERENCES lesson_administration (id);


ALTER TABLE group ADD CONSTRAINT FK_group_0 FOREIGN KEY (lesson_id) REFERENCES lesson_administration (id);


ALTER TABLE individual ADD CONSTRAINT FK_individual_0 FOREIGN KEY (losson_id) REFERENCES lesson_administration (id);


