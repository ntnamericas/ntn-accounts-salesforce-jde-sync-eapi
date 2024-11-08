%dw 2.0
output application/json
---
{
"ntnGlobalMarket": payload.Envelope.Body.notifications.Notification.sObject.NTN_Global_Market__c,
    "ntnAdvPrcGrp": payload.Envelope.Body.notifications.Notification.sObject.NTN_ADV_PRC_GRP__c,
	"alphaName": payload.Envelope.Body.notifications.Notification.sObject.Alpha_Name__c,
	"billingAddressType": payload.Envelope.Body.notifications.Notification.sObject.Billing_Address_Type__c,
	"billToNumber": payload.Envelope.Body.notifications.Notification.sObject.Bill_To_Number__c,
	"customerServiceCoordinatorCode": payload.Envelope.Body.notifications.Notification.sObject.Customer_Service_Coordinator_Code__c,
	"customerPriceGroup40PC": payload.Envelope.Body.notifications.Notification.sObject.Customer_Price_Group_40PC__c,
	"custTypeCode": payload.Envelope.Body.notifications.Notification.sObject.NTN_Cust_Type__c,
	"dunsNumber": payload.Envelope.Body.notifications.Notification.sObject.Duns_Number__c,
	"fax": payload.Envelope.Body.notifications.Notification.sObject.Fax,
	"id": payload.Envelope.Body.notifications.Notification.sObject.Id,
	"jdeAddressNumber": payload.Envelope.Body.notifications.Notification.sObject.JDE_AddressNumber__c,
	"nbcaMarket": payload.Envelope.Body.notifications.Notification.sObject.NBCA_Market__c,
	"ntnCustomerGroup": payload.Envelope.Body.notifications.Notification.sObject.NTN_Customer_Group__c,
	"ntnMarketCode": payload.Envelope.Body.notifications.Notification.sObject.NTN_Market_Code__c,
	"parentNumber": payload.Envelope.Body.notifications.Notification.sObject.Parent_Number__c,
	"phone": payload.Envelope.Body.notifications.Notification.sObject.Phone,
	"region": payload.Envelope.Body.notifications.Notification.sObject.Region__c,
	"ntnSalesRep": payload.Envelope.Body.notifications.Notification.sObject.NTN_Sales_Rep__c,
	"shippingStateCode": payload.Envelope.Body.notifications.Notification.sObject.ShippingStateCode,
	"shippingCity": payload.Envelope.Body.notifications.Notification.sObject.ShippingCity,
	"shippingCountryCode": payload.Envelope.Body.notifications.Notification.sObject.ShippingCountryCode,
	"shippingPostalCode": payload.Envelope.Body.notifications.Notification.sObject.ShippingPostalCode,
	"shippingStreet": payload.Envelope.Body.notifications.Notification.sObject.ShippingStreet,
    "type": payload.Envelope.Body.notifications.Notification.sObject.Type,
//    "searchType" : payload.Envelope.Body.notifications.Notification.sObject.Search_Type__c, 
	"ntnCompanyName": payload.Envelope.Body.notifications.Notification.sObject.NTN_Company_Name__c ,
	"mktRep": payload.Envelope.Body.notifications.Notification.sObject.MKT_REP__c,
	"engineer": payload.Envelope.Body.notifications.Notification.sObject.Engineer__c,
	"lastModifiedById":   payload.Envelope.Body.notifications.Notification.sObject.LastModifiedById,
	    "status": payload.Envelope.Body.notifications.Notification.sObject.Status__c 
}