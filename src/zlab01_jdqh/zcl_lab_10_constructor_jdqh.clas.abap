CLASS zcl_lab_10_constructor_jdqh DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  CLASS-DATA log TYPE string.

  CLASS-METHODS class_constructor.
METHODS constructor.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_10_constructor_jdqh IMPLEMENTATION.

METHOD class_constructor.
  log = log && 'Constructor estático ejecutado. '.
ENDMETHOD.

METHOD constructor.
  log = log && 'Constructor de instancia ejecutado. '.
ENDMETHOD.

ENDCLASS.
