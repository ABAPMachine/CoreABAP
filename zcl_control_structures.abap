CLASS zcl_control_structures DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA gr_message TYPE string.
    DATA gr_out TYPE REF TO if_oo_adt_classrun_out.

    METHODS conditional_if
      IMPORTING
        iv_control TYPE i.

    METHODS conditional_case
      IMPORTING
        iv_control TYPE i.

    METHODS iteration_do
      IMPORTING
        iv_control TYPE i.

    METHODS iteration_loop.

  ENDCLASS.

CLASS zcl_control_structures IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA(lv_control) = 100.

    gr_out = out.

*   Using Control Structures in ABAP

    conditional_if( iv_control = lv_control ).

    conditional_case( iv_control = lv_control ).

    iteration_do(   iv_control = lv_control ).

    iteration_loop(  ).

  ENDMETHOD.

  METHOD conditional_if.

    IF iv_control LT 100.
      gr_message = 'Less than 100'.
    ELSEIF iv_control EQ 100.
      gr_message = 'Equal 100'.
    ELSE.
      gr_message = 'Greater than 100'.
    ENDIF.

    gr_out->write( gr_message ).

  ENDMETHOD.

  METHOD conditional_case.

    CASE iv_control.
      WHEN 100.
        gr_message = 'Equal 100'.
      WHEN OTHERS.
        gr_message = 'Not equal 100'.
    ENDCASE.

    gr_out->write( gr_message ).

  ENDMETHOD.

  METHOD iteration_do.

    DO iv_control TIMES.
      gr_out->write( iv_control ).
    ENDDO.

  ENDMETHOD.

  METHOD iteration_loop.

    DATA lt_flights TYPE /dmo/t_flight.

    APPEND VALUE #( carrier_id = 'AA' connection_id  = '001' flight_date = '20231228' ) TO lt_flights.

    LOOP AT lt_flights ASSIGNING FIELD-SYMBOL(<ls_flights>).
      gr_out->write( |{ <ls_flights>-carrier_id } | && |{ <ls_flights>-connection_id } | && |{ <ls_flights>-carrier_id }| ).
    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
