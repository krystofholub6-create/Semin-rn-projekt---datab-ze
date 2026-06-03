-- 1. Vypiš všechny klienty s příjmením Novak.
SELECT *
FROM Klient
WHERE prijmeni = 'Novak';

-- 2. Vypiš všechny klienty registrované po 1. 1. 2025.
SELECT *
FROM Klient
WHERE datum_registrace > '2025-01-01';

-- 3. Vypiš všechny trenéry specializované na posilování.
SELECT *
FROM Trener
WHERE specializace = 'Posilovani';

-- 4. Vypiš všechny sály ve 2. patře.
SELECT *
FROM Sal
WHERE patro = 2;

-- 5. Vypiš všechny lekce s kapacitou větší než 15.
SELECT *
FROM Lekce
WHERE kapacita > 15;

-- 6. Vypiš všechna cvičení s obtížností Tezka.
SELECT *
FROM Cviceni
WHERE obtiznost = 'Tezka';

-- 7. Vypiš všechna členství dražší než 1000 Kč.
SELECT *
FROM Clenstvi
WHERE cena > 1000;

-- 8. Vypiš všechny zaplacené platby.
SELECT *
FROM Platba
WHERE stav = 'Zaplaceno';

-- 9. Vypiš všechny rezervace ve stavu Potvrzena.
SELECT *
FROM Rezervace
WHERE stav = 'Potvrzena';

-- 10. Vypiš klienty, jejichž email obsahuje text "email".
SELECT *
FROM Klient
WHERE email LIKE '%email%';

-- 11. Vypiš lekce, jejichž název obsahuje písmeno "a".
SELECT *
FROM Lekce
WHERE nazev LIKE '%a%';

-- 12. Vypiš cvičení, jejichž název obsahuje písmeno "e".
SELECT *
FROM Cviceni
WHERE nazev LIKE '%e%';

-- 13. Vypiš klienty a jejich členství.
SELECT k.jmeno, k.prijmeni, c.typ, c.cena
FROM Klient k
JOIN Clenstvi c
ON k.klient_id = c.klient_id
WHERE c.cena > 0;

-- 14. Vypiš lekce a trenéry, kteří je vedou.
SELECT l.nazev, t.jmeno, t.prijmeni
FROM Lekce l
JOIN Trener t
ON l.trener_id = t.trener_id
WHERE l.kapacita > 0;

-- 15. Vypiš rezervace včetně klienta a lekce.
SELECT r.rezervace_id, k.jmeno, k.prijmeni, l.nazev
FROM Rezervace r
JOIN Klient k
ON r.klient_id = k.klient_id
JOIN Lekce l
ON r.lekce_id = l.lekce_id
WHERE r.rezervace_id > 0;

-- 16. Vypiš lekce a sály, ve kterých probíhají.
SELECT l.nazev, s.nazev
FROM Lekce l
JOIN Sal s
ON l.sal_id = s.sal_id
WHERE s.kapacita > 0;

-- 17. Vypiš cvičení a lekce, do kterých patří.
SELECT c.nazev, l.nazev
FROM Cviceni c
JOIN Lekce l
ON c.lekce_id = l.lekce_id
WHERE c.kalorie > 0;

-- 18. Vypiš členství a jejich platby.
SELECT cl.typ, p.castka, p.datum_platby
FROM Clenstvi cl
JOIN Platba p
ON cl.clenstvi_id = p.clenstvi_id
WHERE p.castka > 0;

-- 19. Vypiš všechny klienty a jejich členství, i když žádné nemají.
SELECT k.jmeno, k.prijmeni, c.typ
FROM Klient k
LEFT JOIN Clenstvi c
ON k.klient_id = c.klient_id;

-- 20. Vypiš všechny lekce a rezervace, i když na lekci není rezervace.
SELECT l.nazev, r.rezervace_id
FROM Lekce l
LEFT JOIN Rezervace r
ON l.lekce_id = r.lekce_id;

-- 21. Vypiš lekce seřazené podle kapacity od největší.
SELECT *
FROM Lekce
ORDER BY kapacita DESC;

-- 22. Vypiš klienty seřazené podle příjmení.
SELECT *
FROM Klient
ORDER BY prijmeni ASC;

-- 23. Vypiš první 3 klienty.
SELECT *
FROM Klient
LIMIT 3;

-- 24. Vypiš 2 nejdražší členství.
SELECT *
FROM Clenstvi
ORDER BY cena DESC
LIMIT 2;

-- 25. Spočítej počet rezervací pro každou lekci.
SELECT l.nazev,
       COUNT(r.rezervace_id) AS pocet_rezervaci
FROM Lekce l
LEFT JOIN Rezervace r
ON l.lekce_id = r.lekce_id
GROUP BY l.lekce_id, l.nazev
HAVING COUNT(r.rezervace_id) >= 0;

-- 26. Vypiš cenu členství po přičtení 21 % DPH.
SELECT
    clenstvi_id,
    typ,
    cena,
    cena * 1.21 AS cena_s_dph
FROM Clenstvi
WHERE cena > 0;