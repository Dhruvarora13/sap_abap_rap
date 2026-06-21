@Metadata.layer: #CORE
annotate entity ZC_SALESHEADER
    with 
{
    
    @EndUserText.label: 'Sales Order UUID'
    @UI.lineItem: [{ position: 10 }]
    Salesorderuuid;
    @EndUserText.label: 'Sales Order'
    @UI.selectionField: [{position: 20}]
    Salesorder;
    @EndUserText.label: 'Sales Order Type'
    @UI.selectionField: [{position: 30}]
    Salesordertype;
    @EndUserText.label: 'Description'
    @UI.lineItem: [{ position: 40 }]
    Description;
    @EndUserText.label: 'Sales Organisation'
    @UI.lineItem: [{ position: 50 }]
    Salesorganization;
    @EndUserText.label: 'Sold to Party'
    @UI.lineItem: [{ position: 60 }]
    Soldtoparty;
    @EndUserText.label: 'Distribution Channel>'
    @UI.lineItem: [{ position: 70 }]
    Distributionchannel;
    @EndUserText.label: 'Document reason'
    @UI.lineItem: [{ position: 80 }]
    Documentreason;
    @EndUserText.label: 'Net Amount'
    @UI.lineItem: [{ position: 90 }]
    Totalnetamount;
    @EndUserText.label: 'Transaction Currency'
    @UI.hidden: true
    @UI.lineItem: [{ position: 100 }]
    Transactioncurrency;
    @UI.hidden: true
    Createdbyuser;
    @UI.hidden: true
    Createdby;
    @UI.hidden: true
    Createdat;
    @UI.hidden: true
    Lastchangedby;
    @UI.hidden: true
    Lastchangedat;
    
}