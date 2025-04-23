%dw 2.0
output application/json

fun searchType(NTN_Company_Name__c, Type, Status__c) =
    if (NTN_Company_Name__c ~= "NBCC" and Type ~= "Customer" and Status__c ~= "Active") "C"
    else if (NTN_Company_Name__c ~= "NBCC" and Type ~= "Customer" and Status__c != "Active") "CX"
    else if (NTN_Company_Name__c ~= "NBCC" and Type ~= "End User" and Status__c ~= "Active") "EU"
    else if (NTN_Company_Name__c ~= "NBCC" and Type ~= "End User" and Status__c != "Active") "EX"
    else "Invalid-Search-Type"
---
{
	"ntnGlobalMarket": payload.sObject.NTN_Global_Market__c,
    "ntnAdvPrcGrp": payload.sObject.NTN_ADV_PRC_GRP__c,
	"alphaName": payload.sObject.Alpha_Name__c,
	"billingAddressType": payload.sObject.Billing_Address_Type__c,
	"billToNumber": payload.sObject.Bill_To_Number__c,
	"customerServiceCoordinatorCode": payload.sObject.Customer_Service_Coordinator_Code__c,
	"customerPriceGroup40PC": payload.sObject.Customer_Price_Group_40PC__c,
	"custTypeCode": payload.sObject.NTN_Cust_Type__c,
	"dunsNumber": payload.sObject.Duns_Number__c,
	"fax": payload.sObject.Fax,
	"id": payload.sObject.Id,
	"jdeAddressNumber": payload.sObject.JDE_AddressNumber__c,
	"nbcaMarket": payload.sObject.NBCA_Market__c,
	"ntnCustomerGroup": payload.sObject.NTN_Customer_Group__c,
	"ntnMarketCode": payload.sObject.NTN_Market_Code__c,
	"parentNumber": payload.sObject.Parent_Number__c,
	"phone": payload.sObject.Phone,
	"region": payload.sObject.Region__c,
	"ntnSalesRep": payload.sObject.NTN_Sales_Rep__c,
	"shippingStateCode": payload.sObject.ShippingStateCode,
	"shippingCity": payload.sObject.ShippingCity,
	"shippingCountryCode": payload.sObject.ShippingCountryCode,
	"shippingPostalCode": payload.sObject.ShippingPostalCode,
	"shippingStreet": payload.sObject.ShippingStreet,
    "type": payload.sObject.Type,
    "searchType" : searchType(payload.sObject.NTN_Company_Name__c,payload.sObject.Type,payload.sObject.Status__c ), 
	"ntnCompanyName": payload.sObject.NTN_Company_Name__c ,
	"mktRep": payload.sObject.MKT_REP__c,
	"engineer": payload.sObject.Engineer__c,
	"lastModifiedById":   payload.sObject.LastModifiedById,
	    "status": payload.sObject.Status__c 
}