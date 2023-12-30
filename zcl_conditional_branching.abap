CLASS zcl_conditional_branching_02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_conditional_branching_02 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA lv_message TYPE string.
    DATA(lv_control) = 100.

    IF lv_control LT 100.
      lv_message = 'Less than 100'.
    ELSEIF lv_control EQ 100.
      lv_message = 'Equal 100'.
    ELSE.
      lv_message = 'Greater than 100'.
    ENDIF.

    out->write( lv_message ). 

  ENDMETHOD.
ENDCLASS.
