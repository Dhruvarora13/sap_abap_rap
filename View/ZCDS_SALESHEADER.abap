@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: ' CDS View for Sales Header'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_SALESHEADER
  as select from zsales_table
  composition [0..*] of ZCDS_SLALESITEM as _salesitem
{
  key salesorderuuid      as Salesorderuuid,
      salesorder          as Salesorder,
      salesordertype      as Salesordertype,
      description         as Description,
      salesorganization   as Salesorganization,
      soldtoparty         as Soldtoparty,
      distributionchannel as Distributionchannel,
      documentreason      as Documentreason,
      @Semantics.amount.currencyCode: 'transactioncurrency'
      totalnetamount      as Totalnetamount,
      transactioncurrency as Transactioncurrency,
      createdbyuser       as Createdbyuser,
      @Semantics.user.createdBy: true
      createdby           as Createdby,
      @Semantics.systemDateTime.createdAt: true
      createdat           as Createdat,
      @Semantics.user.lastChangedBy: true
      lastchangedby       as Lastchangedby,
      @Semantics.systemDateTime.lastChangedAt: true
      lastchangedat       as Lastchangedat,
      _salesitem // Make association public
}
