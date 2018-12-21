SET SERVEROUTPUT ON;
DECLARE
  --Array definition
  TYPE studentsArray IS VARRAY(5) OF NVARCHAR2(100);
  TYPE notesArray IS VARRAY(5) OF NUMBER;
  --
  students studentsArray;
  notes notesArray;
BEGIN
  students := studentsArray('A', 'B', 'C', 'D', 'E');
  notes := notesArray(0.5, 1.1, 2.3, 4.8, 3.5);
  DBMS_OUTPUT.PUT_LINE(students(1) || ' ' || notes(1)); 
END;
/