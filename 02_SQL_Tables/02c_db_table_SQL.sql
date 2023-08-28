/* ------  Strukturen ----- */

/* 
   Doppelte DS werden nicht mehr zugelassen
   UNIQUE
*/

/* Datenbanken auf Server anzeigen */
SHOW DATABASES;

/* DB boo löschen, falls vorhanden */
DROP DATABASE IF EXISTS boo;

/*DB boo anlegen, falls noch nicht vorhanden */
CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
USE boo;

/* Tabelle cats anlegen, falls noch nicht vorhanden */

CREATE TABLE IF NOT EXISTS cats
(
    name VARCHAR(20) NOT NULL UNIQUE DEFAULT "TBA",
    age INT NOT NULL DEFAULT 0
);


/* Alle Tabellen in der DB anzeigen */
#SHOW TABLES;

/* Struktuer der Tabelle anzeigen */
DESCRIBE cats;

/*----Daten----*/
INSERT INTO cats(name,age) VALUES ("Grizabella", 29);
INSERT INTO cats(age,name) VALUES (35, "Alonzo");
INSERT INTO cats VALUES();

-- ABER: Doppelte Datensetze werde zugelassen!
INSERT INTO cats(age,name) VALUES (35, "Alonzo, der Coole!");


/*----Inhalte der Tabelle anzeigen----*/
SELECT * FROM cats;