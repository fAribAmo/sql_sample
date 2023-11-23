CREATE TABLE "instroment" (
	"instrument_id" INT GENERATE ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
	"brand" VARCHAR (100) NOT NULL,
	"quantity" INT (100) NOT NULL,
	"type" VARCHAR(100) NOT NULL
);

CREATE TABLE "person" (
	"person_id" INT GENERATE ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
	"person_number" UNIQUE VARCHAR(12) NOT NULL,
	"first_name" varchar(100),
 	"last_name" varchar(100),
  	"street" varchar(100),
  	"zip" varchar(100),
  	"city" varchar(100)
);

CREATE TABLE "phone"
(
  "person_id" int NOT NULL REFERENCES "person" ON DELETE CASCADE,
  "phone_number" varchar(12) NOT NULL
);

CREATE TABLE "person_phone"
(
  "phone_id" int NOT NULL REFERENCES "email" ON DELETE CASCADE,
  "person_id" int NOT NULL REFERENCES "person" ON DELETE CASCADE,
  PRIMARY KEY("phone_id", "person_id")
);

CREATE TABLE "email"
(
  "email_id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "email" varchar(100) UNIQUE NOT NULL
);

CREATE TABLE "person_email"
(
  "email_id" int NOT NULL REFERENCES "email" ON DELETE CASCADE,
  "person_id" int NOT NULL REFERENCES "person" ON DELETE CASCADE,
  PRIMARY KEY("email_id", "person_id")
);

CREATE TABLE "soundGood_music_school"
(
  "soundGood_music_school_id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "school_id" varchar(100) UNIQUE,
  "street" varchar(100),
  "zip" varchar(100),
  "city" varchar(100)
);

CREATE TABLE "student" (
   "student_id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
   "person_id" INT NOT NULL REFERENCES "person"  ON DELETE CASCADE,
   "level" VARCHAR(100) NOT NULL
);

CREATE TABLE "contact_person" (
   "student_id" INT NOT NULL REFERENCES "student" ON DELETE CASCADE,
   "person_id" INT NOT NULL REFERENCES "person"
);

CREATE TABLE "instructor" (
   "instructor_id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
   "person_id" INT NOT NULL REFERENCES "person" ON DELETE CASCADE,
   "employment_id" VARCHAR(100) UNIQUE NOT NULL,
   "teaching_field" CHAR(100), NOT NULL,
);

CREATE TABLE "rental" (
   "rental_id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
   "student_id" INT NOT NULL REFERENCES "student" ON DELETE CASCADE,
   "instrument_id" INT NOT NULL REFERENCES "instrument" ON DELETE CASCADE,
   "time" TIMESTAMP(20) NOT NULL,
);

CREATE TABLE "siblings" (
   "discount_id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
   "student_id" INT NOT NULL REFERENCES "student" ON DELETE CASCADE,
);

CREATE TABLE "scheduale" (
 "schedual_id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
 "lesson_id" INT NOT NULL REFERENCES "lesson" ON DELETE CASCADE,
 "time" TIMESTAMP(20) NOT NULL,
 "school_id" INT NOT NULL REFERENCES "lesson" ON DELETE CASCADE,
 "instructor_id" INT NOT NULL REFERENCES "lesson" ON DELETE CASCADE,
 "type_id"  VARCHAR(100) NOT NULL,
);

CREATE TABLE "lesson_price" (
 "schedual_id" INT NOT NULL REFERENCES "schedual" ON DELETE CASCADE,  
 "instructor_id" INT NOT NULL REFERENCES "lesson" ON DELETE CASCADE,
 "type_id"  VARCHAR(100) NOT NULL,
 "level" VARCHAR (10) NOT NULL,
 "price" FLOAT (100) NOT NULL
);

CREATE TABLE "person_lesson"
(
  "student_id" int NOT NULL REFERENCES "student" ON DELETE CASCADE,
  "lesson_id" int NOT NULL REFERENCES "lesson" ON DELETE CASCADE,
);

CREATE TABLE "ensembles" (
   "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
   "lesson_id" INT NOT NULL REFERENCES "lesson" ON DELETE CASCADE,
   "minimum_nr_of_students" INT NOT NULL,
   "maximum_nr_of_students" INT NOT NULL,
   "genre" VARCHAR(100) NOT NULL
);

CREATE TABLE "group" (
   "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
   "lesson_id" INT NOT NULL REFERENCES "lesson" ON DELETE CASCADE,
   "minimum_participant" INT NOT NULL,
   "maximum_participant" INT NOT NULL,
);

CREATE TABLE "individual" (
   "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
   "lesson_id" INT NOT NULL REFERENCES "lesson" ON DELETE CASCADE,
   "which_instrument" VARCHAR(500) NOT NULL
);








