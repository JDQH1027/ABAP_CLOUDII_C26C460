CLASS zcl_lab_09_account_jdqh DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS set
  IMPORTING
    iban TYPE string.

METHODS get
  EXPORTING
    iban TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
  DATA iban TYPE string.
ENDCLASS.



CLASS zcl_lab_09_account_jdqh IMPLEMENTATION.

METHOD set.
  me->iban = iban.
ENDMETHOD.

METHOD get.
  iban = me->iban.
ENDMETHOD.

ENDCLASS.
