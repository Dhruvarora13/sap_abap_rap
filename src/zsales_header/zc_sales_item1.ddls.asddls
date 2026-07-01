@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View for Sales Item'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true
define view entity ZC_SALES_ITEM1 as projection on ZCDS_SLALESITEM as _salesitem
{
    key Salesitemuuid,
    @Search.defaultSearchElement: true
    Salesorderuuid,
    Salesorderitem,
    Salesorderitemcategory,
    Salesorderitemtext,
    Material,
    Plant,
    @Semantics.quantity.unitOfMeasure: 'Orderquantityunit'
    Orderquantity,
    Orderquantityunit,
    @Semantics.amount.currencyCode: 'Transactioncurrency'
    Netamount,
    Transactioncurrency,
    Createdbyuser,
    Createdby,
    Createdat,
    Lastchangedby,
    Lastchangedat,
    /* Associations */
    _salesheader : redirected to parent ZC_SALESHEADER
}
