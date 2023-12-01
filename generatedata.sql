INSERT INTO instroment (instrument_id,,brand,quantity,type)
VALUES
  ('346','Sociis Incorporated',1,'individual'),
  ('871','Vestibulum Ante Ltd',2,'group'),
  ('553','Fusce Mi Incorporated',5,'group'),
  ('655','Nec Ligula Ltd',9,'ensembles'),
  ('524','Pellentesque Tincidunt Tempus Corp.',6,'individual'),
  ('790','Urna Justo Corporation',5,'individual'),
  ('856','Arcu Foundation',9,'ensambles'),
  ('264','Lectus Sit Foundation',4,'ensambles'),
  ('381','Natoque Incorporated',8,'group'),
  ('253','Amet Ante Vivamus Institute',7,'group');


INSERT INTO person (name,PK,person_number,address,postalZip)
VALUES
  ('Jamal Lester',1339,8,'Ap #911-9247 Enim Street','18164-80251'),
  ('Oprah Gardner',5303,9,'P.O. Box 518, 2007 Elit, Rd.','57690'),
  ('William Stephenson',1235,0,'254-1120 Sapien, Ave','6421'),
  ('Lionel Craft',9487,1,'Ap #290-9827 Vulputate Rd.','36733'),
  ('Armand Becker',7404,8,'P.O. Box 765, 1335 At, Av.','71062'),
  ('Zachery Walls',5139,6,'4933 Erat, Rd.','4886'),
  ('Vivian Knox',6409,6,'709-6708 Tempor Avenue','5428-2873'),
  ('Roanna Greene',5779,3,'P.O. Box 587, 4763 Cubilia Rd.','846563'),
  ('Noah Warner',6781,3,'Ap #280-8611 Fermentum Rd.','6630'),
  ('Holmes Rollins',7316,9,'P.O. Box 831, 8170 Scelerisque Av.','263603');
  
INSERT INTO person_email (person_id,phone_number)
VALUES
  ('682','1-874-825-1163'),
  ('439','(592) 435-2236'),
  ('982','(453) 603-5158'),
  ('623','(244) 111-3512'),
  ('139','1-502-362-7547'),
  ('307','1-922-211-6946'),
  ('139','(173) 674-5462'),
  ('679','1-242-288-0173'),
  ('446','1-295-434-2639'),
  ('402','1-440-415-5395');

INSERT INTO person_phon (person_id,phone_id,PK)
VALUES
  (10,'(224) 866-2489','347'),
  (4,'(365) 763-7675','711'),
  (7,'1-442-913-9633','513'),
  (8,'(392) 313-7921','153'),
  (3,'1-927-157-0489','381'),
  (3,'(600) 463-0828','194'),
  (3,'1-755-513-5531','204'),
  (4,'1-562-828-5254','585'),
  (9,'1-216-551-1965','959'),
  (9,'1-677-621-2723','993');

INSERT INTO email (email,email_id)
VALUES
  ('nullam@aol.edu','848'),
  ('vulputate.nisi@outlook.edu','178'),
  ('lorem.vehicula@hotmail.couk','304'),
  ('magna@icloud.ca','453'),
  ('nec.ligula@yahoo.com','941'),
  ('arcu.vestibulum@google.com','591'),
  ('phasellus@yahoo.com','218'),
  ('nec@aol.couk','849'),
  ('amet.consectetuer@outlook.net','606'),
  ('tempor.arcu.vestibulum@aol.edu','972');
  
INSERT INTO person_email (email,email_id,email_id,person_id)
VALUES
  ('egestas@google.org','788','604'),
  ('ac@outlook.org','702','889'),
  ('mollis@icloud.net','373','581'),
  ('aenean.sed.pede@hotmail.com','649','490'),
  ('eget.ipsum.suspendisse@google.couk','428','900'),
  ('montes.nascetur@aol.com','450','458'),
  ('nec@google.com','549','444'),
  ('dolor.tempus@outlook.com','187','212'),
  ('augue.ut@hotmail.net','385','309'),
  ('purus.maecenas@outlook.edu','354','928');
  
INSERT INTO Soundgood_music_school (PK,school_id,street,postalZip,city)
VALUES
  ('854','142','P.O. Box 769, 3851 Ac Ave','213826','Macau');
  
INSERT INTO student (student_id,person_id,level)
VALUES
  ('587','208','Bignner'),
  ('711','768','Biginner'),
  ('367','950','Biginner'),
  ('842','813','Intermedait'),
  ('244','642','Intermedait'),
  ('297','244','Intermedait'),
  ('666','677','Intermedait'),
  ('516','600','Advanced'),
  ('571','127','Advanced'),
  ('522','756','Advanced');
  
INSERT INTO contact_person (student_id,person_id)
VALUES
  ('733','803'),
  ('451','473'),
  ('250','444'),
  ('339','897'),
  ('212','145'),
  ('890','600'),
  ('300','936'),
  ('169','833'),
  ('796','699'),
  ('357','916');
  
INSERT INTO instructor (instructor_id,person_id,employment_id,teaching_field)
VALUES
  ('596','832','934','guitar'),
  ('750','944','633','piano'),
  ('778','967','771','violen'),
  ('515','352','674','Accordino'),
  ('743','445','773','Afghani guitar'),
  ('323','460','867','cello'),
  ('223','363','281','clarinet'),
  ('861','699','347','chimta'),
  ('425','654','552','core anglais'),
  ('512','454','619','ektara');

INSERT INTO rental (rental_id,student_id,instrument_id,time,date)
VALUES
  ('445','286','414','6:39 AM','Feb 13, 2023'),
  ('760','877','381','2:58 AM','Dec 10, 2022'),
  ('496','170','115','3:10 PM','Jan 2, 2023'),
  ('802','929','990','8:25 PM','Feb 10, 2023'),
  ('962','980','828','6:17 AM','Jan 17, 2023'),
  ('376','992','631','3:03 AM','Feb 21, 2023'),
  ('434','651','339','4:20 PM','Dec 27, 2022'),
  ('940','807','294','2:51 AM','Dec 5, 2022'),
  ('661','158','812','11:16 PM','Jan 23, 2023'),
  ('403','628','443','8:15 AM','Dec 3, 2022');

INSERT INTO siblings (discount_id,student_id)
VALUES
  ('755','408'),
  ('946','581'),
  ('811','364'),
  ('526','213'),
  ('494','140'),
  ('446','467'),
  ('638','126'),
  ('784','500'),
  ('874','267'),
  ('326','542');
  
INSERT INTO lesson_price (schedual_id,instructor_id,type_id,level,price)
VALUES
  ('663','890','325','individual',23),
  ('494','829','593','individual',39),
  ('645','357','250','individual',84),
  ('605','764','129','individual',85),
  ('648','179','508','group',39),
  ('903','465','636','group',80),
  ('402','624','890','group',68),
  ('269','129','900','group',69),
  ('509','786','223','ensamble',18),
  ('122','635','467','ensamble',90);
  
INSERT INTO schedual (schedual_id,lesson_id,school_id,time,instrument_id,type_id,date)
VALUES
  ('589','813','910','9:23 AM',48,15,'Dec 4, 2022'),
  ('872','897','759','11:13 PM',75,64,'Dec 22, 2022'),
  ('489','433','274','2:37 PM',13,71,'Feb 22, 2023'),
  ('532','965','120','7:26 AM',25,78,'Feb 12, 2023'),
  ('709','844','905','8:50 AM',62,83,'Jan 1, 2023'),
  ('273','685','466','1:42 AM',21,88,'Feb 5, 2023'),
  ('854','356','454','7:13 AM',16i,74,'Dec 13, 2022'),
  ('955','965','414','10:10 AM',34,48,'Jan 12, 2023'),
  ('880','942','748','3:42 AM',37,35,'Jan 29, 2023'),
  ('837','199','737','10:55 PM',84,70,'Dec 13, 2022');  

INSERT INTO person_lesson (student_id,lesson_id)
VALUES
  ('380','609'),
  ('984','338'),
  ('258','966'),
  ('284','775'),
  ('303','572'),
  ('842','777'),
  ('980','210'),
  ('828','853'),
  ('404','581'),
  ('176','439');
  
INSERT INTO ensamble (PK,lesson_id,minimum_nr_of_students,maximum_nr_of_student,genre)
VALUES
  ('638','938',10,20,'Magna Lorem Ipsum LLC'),
  ('525','320',10,20,'Lobortis Mauris Institute'),
  ('568','548',10,20,'Duis Volutpat Industries'),
  ('670','460',10,20,'Pellentesque Limited'),
  ('144','405',10,20,'Rutrum Consulting'),
  ('262','381',10,20,'Nullam Feugiat Corp.'),
  ('453','182',10,20,'In Molestie LLP'),
  ('495','267',10,20,'In Faucibus Consulting'),
  ('609','257',10,20,'At Associates'),
  ('522','865',10,20,'Faucibus Id Foundation');
  
INSERT INTO group_table (PK,lesson_id,minimum_nr_of_students,maximum_nr_of_student)
VALUES
  ('729','693',10,20),
  ('627','399',10,20),
  ('535','540',10,20),
  ('163','243',10,20),
  ('716','829',10,20),
  ('438','283',10,20),
  ('656','724',10,20),
  ('240','444',10,20),
  ('340','645',10,20),
  ('957','570',10,20);
  
INSERT INTO individual (PK,lesson_id,instrument_type)
VALUES
  ('729','693','guitar'),
  ('627','399','guitar'),
  ('535','540','guitar'),
  ('163','243','guitar'),
  ('716','829','guitar'),
  ('438','283','guitar'),
  ('656','724','guitar'),
  ('240','444','guitar'),
  ('340','645','guitar'),
  ('957','570','guitar');
  
