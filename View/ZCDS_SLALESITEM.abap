@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Sales Item'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_SLALESITEM
  as select from zsaleseitem
  association to parent ZCDS_SALESHEADER as _salesheader on $projection.Salesorderuuid = _salesheader.Salesorderuuid
{
  key salesitemuuid          as Salesitemuuid,
      salesorderuuid         as Salesorderuuid,
      salesorderitem         as Salesorderitem,
      salesorderitemcategory as Salesorderitemcategory,
      salesorderitemtext     as Salesorderitemtext,
      material               as Material,
      plant                  as Plant,
      @Semantics.quantity.unitOfMeasure : 'orderquantityunit'
      orderquantity          as Orderquantity,
      orderquantityunit      as Orderquantityunit,
      @Semantics.amount.currencyCode: 'transactioncurrency'
      netamount              as Netamount,
      transactioncurrency    as Transactioncurrency,
      createdbyuser          as Createdbyuser,
      @Semantics.user.createdBy: true
      createdby              as Createdby,
      @Semantics.systemDateTime.createdAt: true
      createdat              as Createdat,
      @Semantics.user.lastChangedBy: true
      lastchangedby          as Lastchangedby,
      @Semantics.systemDateTime.lastChangedAt: true
      lastchangedat          as Lastchangedat,
      _salesheader

}
