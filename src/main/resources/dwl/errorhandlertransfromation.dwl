output application/json
---
{
errorCode: payload.errorCode default "10000200",
errorMsg: payload.errorMsg default error.description,
errorTitle: payload.errorTitle default payload.errorType,
error: payload.error default error.detailedDescription,
interfaceName:  payload.interfaceName default vars.requestMessage.Transaction.Pm4dConfig.InterfaceName,
transactionId : payload.transactionId default vars.requestMessage.Transaction.TXN_ID,
mail: payload.mail default p('mail.errorNotification.supportAddress')
}