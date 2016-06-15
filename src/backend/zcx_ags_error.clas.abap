class ZCX_AGS_ERROR definition
  public
  inheriting from CX_STATIC_CHECK
  create public .

public section.

  interfaces IF_T100_MESSAGE .

  constants:
    begin of ZCX_AGS_ERROR,
      msgid type symsgid value 'ZABAPGITSERVER',
      msgno type symsgno value '000',
      attr1 type scx_attrname value '',
      attr2 type scx_attrname value '',
      attr3 type scx_attrname value '',
      attr4 type scx_attrname value '',
    end of ZCX_AGS_ERROR .
  constants:
    begin of M001,
      msgid type symsgid value 'ZABAPGITSERVER',
      msgno type symsgno value '001',
      attr1 type scx_attrname value '',
      attr2 type scx_attrname value '',
      attr3 type scx_attrname value '',
      attr4 type scx_attrname value '',
    end of M001 .
  constants:
    begin of M002,
      msgid type symsgid value 'ZABAPGITSERVER',
      msgno type symsgno value '002',
      attr1 type scx_attrname value '',
      attr2 type scx_attrname value '',
      attr3 type scx_attrname value '',
      attr4 type scx_attrname value '',
    end of M002 .
  constants:
    begin of M004,
      msgid type symsgid value 'ZABAPGITSERVER',
      msgno type symsgno value '004',
      attr1 type scx_attrname value '',
      attr2 type scx_attrname value '',
      attr3 type scx_attrname value '',
      attr4 type scx_attrname value '',
    end of M004 .
  constants:
    begin of M005,
      msgid type symsgid value 'ZABAPGITSERVER',
      msgno type symsgno value '005',
      attr1 type scx_attrname value 'SHA1',
      attr2 type scx_attrname value '',
      attr3 type scx_attrname value '',
      attr4 type scx_attrname value '',
    end of M005 .
  constants:
    begin of M006,
      msgid type symsgid value 'ZABAPGITSERVER',
      msgno type symsgno value '006',
      attr1 type scx_attrname value 'STRING',
      attr2 type scx_attrname value '',
      attr3 type scx_attrname value '',
      attr4 type scx_attrname value '',
    end of M006 .
  data SHA1 type ZAGS_SHA1 .
  data STRING type STRING .

  methods CONSTRUCTOR
    importing
      !TEXTID like IF_T100_MESSAGE=>T100KEY optional
      !PREVIOUS like PREVIOUS optional
      !SHA1 type ZAGS_SHA1 optional
      !STRING type STRING optional .
protected section.
private section.
ENDCLASS.



CLASS ZCX_AGS_ERROR IMPLEMENTATION.


  method CONSTRUCTOR.
CALL METHOD SUPER->CONSTRUCTOR
EXPORTING
PREVIOUS = PREVIOUS
.
me->SHA1 = SHA1 .
me->STRING = STRING .
clear me->textid.
if textid is initial.
  IF_T100_MESSAGE~T100KEY = ZCX_AGS_ERROR .
else.
  IF_T100_MESSAGE~T100KEY = TEXTID.
endif.
  endmethod.
ENDCLASS.