CLASS zcl_global_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_global_class IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    data lv_demo type lcl_local_class=>ty_demo.

    lv_demo-number = 9.
    lv_demo-stringt = 'OMG Dude, you did it'.

    out->write( lv_demo-number ).
    out->write( lv_demo-stringt ).
  ENDMETHOD.
ENDCLASS.
