SET SERVEROUTPUT ON;
DECLARE
  nota NUMBER := 50;
  approved VARCHAR2(10);
  
  ran NUMBER := ROUND(DBMS_RANDOM.value(0, 5));
  ranString VARCHAR2(10);
BEGIN
  IF nota < 33 THEN
    approved := 'Bajo';
  ELSIF nota >= 33 AND nota < 66 THEN
    approved := 'Medio';
  ELSE
    approved := 'Alto';
  END IF;
  DBMS_OUTPUT.PUT_LINE(approved);
  
  CASE 
    WHEN ran = 0 THEN
      ranString := 'Cero';
    WHEN ran = 1 THEN
      ranString := 'Uno';
    WHEN ran = 2 THEN
      ranString := 'Dos';
    WHEN ran = 3 THEN
      ranString := 'Tres';
    WHEN ran = 4 THEN
      ranString := 'Cuatro';
    WHEN ran = 5 THEN
      ranString := 'Cinco';
    ELSE
      ranString := 'Null';
  END CASE;
  DBMS_OUTPUT.PUT_LINE(ran || ':' || ranString);
END;
/