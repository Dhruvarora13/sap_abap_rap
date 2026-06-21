@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View for Sales Header'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_SALESHEADER as projection on ZCDS_SALESHEADER as _salesheader
{
    key Salesorderuuid,
    Salesorder,
    Salesordertype,
    Description,
    Salesorganization,
    @Search.defaultSearchElement: true
    Soldtoparty,
    Distributionchannel,
    Documentreason,
    @Semantics.amount.currencyCode: 'Transactioncurrency'
    @Search.defaultSearchElement: true
    Totalnetamount,
    Transactioncurrency,
    Createdbyuser,
    Createdby,
    Createdat,
    Lastchangedby,
    Lastchangedat,
    /* Associations */
    _salesitem : redirected to composition child ZC_SALES_ITEM1
}
