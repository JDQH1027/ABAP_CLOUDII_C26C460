*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
CLASS zcl_lab_08_work_record DEFINITION.

  PUBLIC SECTION.
    CLASS-METHODS open_new_record
      IMPORTING
        iv_date       TYPE zdatejdqh
        iv_first_name TYPE string
        iv_last_name  TYPE string
        iv_surname    TYPE string OPTIONAL.

  PRIVATE SECTION.
    CLASS-DATA date       TYPE zdatejdqh.
    CLASS-DATA first_name TYPE string.
    CLASS-DATA last_name  TYPE string.
    CLASS-DATA surname    TYPE string.

ENDCLASS.


CLASS zcl_lab_08_work_record IMPLEMENTATION.

  METHOD open_new_record.
    date       = iv_date.
    first_name = iv_first_name.
    last_name  = iv_last_name.
    surname    = iv_surname.
  ENDMETHOD.

ENDCLASS.
