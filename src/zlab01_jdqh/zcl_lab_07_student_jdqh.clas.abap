CLASS zcl_lab_07_student_jdqh DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA birth_date TYPE zdatejdqh READ-ONLY.

    METHODS set_birth_date
      IMPORTING
        iv_birth_date TYPE zdatejdqh.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_07_student_jdqh IMPLEMENTATION.

  METHOD set_birth_date.
    birth_date = iv_birth_date.
  ENDMETHOD.

ENDCLASS.
