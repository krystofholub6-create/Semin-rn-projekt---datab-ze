-- KLIENT

INSERT INTO Klient VALUES
(1,'Jan','Novak','jan@email.cz','111111111','2025-01-01'),
(2,'Petr','Svoboda','petr@email.cz','222222222','2025-01-02'),
(3,'Eva','Nova','eva@email.cz','333333333','2025-01-03'),
(4,'Anna','Mala','anna@email.cz','444444444','2025-01-04'),
(5,'Tomas','Velky','tomas@email.cz','555555555','2025-01-05'),
(6,'Karel','Cerny','karel@email.cz','666666666','2025-01-06'),
(7,'Lucie','Bila','lucie@email.cz','777777777','2025-01-07');

-- TRENER

INSERT INTO Trener VALUES
(1,'Martin','Silny','Posilovani','martin@fitness.cz','123456789'),
(2,'Pavel','Fit','Kardio','pavel@fitness.cz','123456788'),
(3,'Jana','Sportova','Yoga','jana@fitness.cz','123456787'),
(4,'David','Aktivni','Crossfit','david@fitness.cz','123456786'),
(5,'Lenka','Flexi','Pilates','lenka@fitness.cz','123456785'),
(6,'Roman','Power','Posilovani','roman@fitness.cz','123456784'),
(7,'Nikola','Move','Dance','nikola@fitness.cz','123456783');

-- SAL

INSERT INTO Sal VALUES
(1,'Sál A',30,1,'Kardio','Pasy, kola'),
(2,'Sál B',25,1,'Yoga','Podložky'),
(3,'Sál C',20,2,'Crossfit','Klece, činky'),
(4,'Sál D',40,1,'Dance','Zrcadla'),
(5,'Sál E',35,2,'Pilates','Míče'),
(6,'Sál F',50,3,'Skupinový','Multifunkční'),
(7,'Sál G',15,3,'Osobní trénink','Činky');

-- LEKCE

INSERT INTO Lekce VALUES
(1,'Kardio Start','2025-06-01','09:00:00',20,2,1),
(2,'Yoga Basic','2025-06-02','10:00:00',15,3,2),
(3,'Crossfit Pro','2025-06-03','11:00:00',10,4,3),
(4,'Dance Mix','2025-06-04','12:00:00',25,7,4),
(5,'Pilates Core','2025-06-05','13:00:00',18,5,5),
(6,'Bodybuilding','2025-06-06','14:00:00',12,1,7),
(7,'HIIT Training','2025-06-07','15:00:00',22,6,6);

-- CVICENI

INSERT INTO Cviceni VALUES
(1,'Beh','Lehka',30,300,1),
(2,'Pozdrav slunci','Lehka',45,200,2),
(3,'Burpees','Tezka',20,400,3),
(4,'Tancovani','Stredni',50,350,4),
(5,'Pilates sestava','Stredni',40,250,5),
(6,'Bench press','Tezka',30,450,6),
(7,'Sprint intervaly','Tezka',25,500,7);

-- CLENSTVI

INSERT INTO Clenstvi VALUES
(1,'Mesicni',800,'2025-01-01','2025-01-31',1),
(2,'Mesicni',800,'2025-02-01','2025-02-28',2),
(3,'Ctvrtletni',2200,'2025-01-01','2025-03-31',3),
(4,'Rocni',8000,'2025-01-01','2025-12-31',4),
(5,'Mesicni',800,'2025-03-01','2025-03-31',5),
(6,'Ctvrtletni',2200,'2025-04-01','2025-06-30',6),
(7,'Rocni',8000,'2025-01-01','2025-12-31',7);

-- PLATBA (slabá entita)

INSERT INTO Platba VALUES
(1,1,'2025-01-01',800,'Karta','Zaplaceno'),
(2,1,'2025-02-01',800,'Hotovost','Zaplaceno'),
(3,1,'2025-01-01',2200,'Karta','Zaplaceno'),
(4,1,'2025-01-01',8000,'Prevod','Zaplaceno'),
(5,1,'2025-03-01',800,'Karta','Zaplaceno'),
(6,1,'2025-04-01',2200,'Prevod','Zaplaceno'),
(7,1,'2025-01-01',8000,'Karta','Zaplaceno');

-- REZERVACE

INSERT INTO Rezervace VALUES
(1,'2025-05-20','Potvrzena',1,1),
(2,'2025-05-21','Potvrzena',2,2),
(3,'2025-05-22','Ceka',3,3),
(4,'2025-05-23','Potvrzena',4,4),
(5,'2025-05-24','Zrusena',5,5),
(6,'2025-05-25','Potvrzena',6,6),
(7,'2025-05-26','Ceka',7,7);