SET SERVEROUTPUT ON;
DECLARE
  TYPE notesArray IS VARRAY(4) OF NUMBER;
  notes notesArray := notesArray(4.25, 3, 3.75, 4.25);
  x NUMBER := 1;
  y NUMBER := 1;
  accSum NUMBER := 0;
  total NUMBER := 0;
BEGIN
  <<loop_1>>
  FOR i IN 1..10 LOOP
    DBMS_OUTPUT.PUT_LINE(i || '*2=' || (i * 2));
  END LOOP loop_1;
  
  <<loop_2>>
  LOOP
    IF x <= 10 THEN
      DBMS_OUTPUT.PUT_LINE(x || '*2=' || (x * 2));
      x := x + 1;
    ELSE
      EXIT;
    END IF;
  END LOOP loop_2;
  
  <<loop_3>>
  WHILE y <= 10 LOOP
    DBMS_OUTPUT.PUT_LINE(y || '*2=' || (y * 2));
    y := y + 1;
  END LOOP loop_3;
  
  FOR i IN 1..notes.COUNT LOOP
    accSum := accSum + notes(i);
  END LOOP;
  total := accSum / notes.COUNT;
  DBMS_OUTPUT.PUT_LINE('avg: ' || total);
END;
/