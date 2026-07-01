CLASS zsales_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
   METHODS: insert_data,
   delete_data.
ENDCLASS.

CLASS zsales_class IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
   insert_data(  ).
  " delete_data(  ).
   out->write(
   EXPORTING
   data = |"Processing is Completed"| ).

  ENDMETHOD.
METHOD insert_data.
DATA: lt_salesheader TYPE TABLE OF zsales_table,
     lt_salesitem TYPE TABLE OF zsaleseitem.

APPEND VALUE #(
    client              = '100'
    salesorderuuid      = '00112233445566778899AABBCCDDEEFF'
    salesorder          = '5000000001'
    salesordertype      = 'OR'
    description         = 'Laptop Order'
    salesorganization   = '1000'
    soldtoparty         = '0000001001'
    distributionchannel = '10'
    documentreason      = 'New Customer'
    totalnetamount      = '22000.00'
    transactioncurrency = 'INR'
    createdbyuser       = 'SAGAR'
    createdby           = 'SAGAR'
    createdat           = '20260619090000.0000000'
    lastchangedby       = 'SAGAR'
    lastchangedat       = '20260619090000.0000000'
) TO lt_salesheader.

APPEND VALUE #(
    client              = '100'
    salesorderuuid      = '112233445566778899AABBCCDDEEFF00'
    salesorder          = '5000000002'
    salesordertype      = 'OR'
    description         = 'Office Equipment Order'
    salesorganization   = '1000'
    soldtoparty         = '0000001002'
    distributionchannel = '10'
    documentreason      = 'Repeat Customer'
    totalnetamount      = '18000.00'
    transactioncurrency = 'INR'
    createdbyuser       = 'DHRUV'
    createdby           = 'DHRUV'
    createdat           = '20260619090000.0000000'
    lastchangedby       = 'DHRUV'
    lastchangedat       = '20260619090000.0000000'
) TO lt_salesheader.

APPEND VALUE #(
    client              = '100'
    salesorderuuid      = '2233445566778899AABBCCDDEEFF0011'
    salesorder          = '5000000003'
    salesordertype      = 'OR'
    description         = 'Mobile Accessories Order'
    salesorganization   = '1000'
    soldtoparty         = '0000001003'
    distributionchannel = '10'
    documentreason      = 'Online Order'
    totalnetamount      = '12000.00'
    transactioncurrency = 'INR'
    createdbyuser       = 'DHRUV'
    createdby           = 'DHRUV'
    createdat           = '20260619090000.0000000'
    lastchangedby       = 'DHRUV'
    lastchangedat       = '20260619090000.0000000'
) TO lt_salesheader.


APPEND VALUE #(
 salesitemuuid         = 'AAAABBBBCCCCDDDDEEEEFFFF00001111'
 salesorderuuid        = '00112233445566778899AABBCCDDEEFF'
 salesorderitem        = '000010'
 salesorderitemcategory = 'TAN'
 salesorderitemtext    = 'Laptop'
 material              = 'MAT0000001'
 plant                 = '1000'
 orderquantity         = '1'
 orderquantityunit     = 'EA'
 netamount             = '18000.00'
 transactioncurrency   = 'INR'
 createdbyuser        = 'DHRUV'
) TO lt_salesitem.

APPEND VALUE #(
 salesitemuuid         = 'AAAABBBBCCCCDDDDEEEEFFFF00002222'
 salesorderuuid        = '00112233445566778899AABBCCDDEEFF'
 salesorderitem        = '000020'
 salesorderitemcategory = 'TAN'
 salesorderitemtext    = 'Laptop Bag'
 material              = 'MAT0000002'
 plant                 = '1000'
 orderquantity         = '2'
 orderquantityunit     = 'EA'
 netamount             = '4000.00'
 transactioncurrency   = 'INR'
 createdbyuser        = 'DHRUV'
) TO lt_salesitem.

INSERT zsales_table FROM TABLE @lt_salesheader.
INSERT zsaleseitem FROM TABLE @lt_salesitem.

ENDMETHOD.

  METHOD delete_data.
   DELETE FROM : zsales_table , zsaleseitem.
  ENDMETHOD.

ENDCLASS.
