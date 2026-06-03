CREATE TABLE Klient (
    klient_id INT PRIMARY KEY,
    jmeno VARCHAR(50) NOT NULL,
    prijmeni VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefon VARCHAR(20),
    datum_registrace DATE
);

CREATE TABLE Trener (
    trener_id INT PRIMARY KEY,
    jmeno VARCHAR(50) NOT NULL,
    prijmeni VARCHAR(50) NOT NULL,
    specializace VARCHAR(100),
    email VARCHAR(100),
    telefon VARCHAR(20)
);

CREATE TABLE Sal (
    sal_id INT PRIMARY KEY,
    nazev VARCHAR(50) NOT NULL,
    kapacita INT,
    patro INT,
    typ VARCHAR(50),
    vybaveni VARCHAR(255)
);

CREATE TABLE Lekce (
    lekce_id INT PRIMARY KEY,
    nazev VARCHAR(100) NOT NULL,
    datum DATE,
    cas TIME,
    kapacita INT,
    trener_id INT,
    sal_id INT,
    FOREIGN KEY (trener_id) REFERENCES Trener(trener_id),
    FOREIGN KEY (sal_id) REFERENCES Sal(sal_id)
);

CREATE TABLE Cviceni (
    cviceni_id INT PRIMARY KEY,
    nazev VARCHAR(100) NOT NULL,
    obtiznost VARCHAR(20),
    delka_min INT,
    kalorie INT,
    lekce_id INT,
    FOREIGN KEY (lekce_id) REFERENCES Lekce(lekce_id)
);

CREATE TABLE Clenstvi (
    clenstvi_id INT PRIMARY KEY,
    typ VARCHAR(50),
    cena DECIMAL(10,2),
    platnost_od DATE,
    platnost_do DATE,
    klient_id INT,
    FOREIGN KEY (klient_id) REFERENCES Klient(klient_id)
);

CREATE TABLE Platba (
    clenstvi_id INT,
    cislo_platby INT,
    datum_platby DATE,
    castka DECIMAL(10,2),
    zpusob_platby VARCHAR(30),
    stav VARCHAR(20),
    PRIMARY KEY (clenstvi_id, cislo_platby),
    FOREIGN KEY (clenstvi_id) REFERENCES Clenstvi(clenstvi_id)
);

CREATE TABLE Rezervace (
    rezervace_id INT PRIMARY KEY,
    datum_rezervace DATE,
    stav VARCHAR(20),
    klient_id INT,
    lekce_id INT,
    FOREIGN KEY (klient_id) REFERENCES Klient(klient_id),
    FOREIGN KEY (lekce_id) REFERENCES Lekce(lekce_id)
);