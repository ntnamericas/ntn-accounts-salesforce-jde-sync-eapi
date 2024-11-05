%dw 2.0
import * from dw::core::Strings
output application/json
---
[
	
	{
      "errorType":"MULE:SOURCE_RESPONSE_SEND",
      "errorHttpStatus":200,
      "errorCode":600008000,
      "errorDeveloperMessage": if( substringBefore(substringAfter(error.description, ":"), "\n") != "" ) substringBefore(substringAfter(error.description, ":"), "\n") else error.description,
      "errorTitle": "Mule Source Response Send Error"
   },
	
	{
      "errorType":"DB:CONNECTIVITY",
      "errorHttpStatus":200,
      "errorCode":600008000,
      "errorDeveloperMessage": if( substringBefore(substringAfter(error.description, ":"), "\n") != "" ) substringBefore(substringAfter(error.description, ":"), "\n") else error.description,
      "errorTitle": "Data Base Connectivity Error"
   },
   {
      "errorType":"DB:BAD_SQL_SYNTAX",
      "errorHttpStatus":200,
      "errorCode":600008000,
      "errorDeveloperMessage": if( substringBefore(substringAfter(error.description, ":"), "\n") != "" ) substringBefore(substringAfter(error.description, ":"), "\n") else error.description,
      "errorTitle": "Data Base bad SQL Syntax Error"
   },
   {
      "errorType":"DB:QUERY_EXECUTION",
      "errorHttpStatus":200,
      "errorCode":600008000,
      "errorDeveloperMessage": if( substringBefore(substringAfter(error.description, ":"), "\n") != "" ) substringBefore(substringAfter(error.description, ":"), "\n") else error.description,
      "errorTitle": "Data Base Query Execution Error"
   },
   {
      "errorType":"DB:RETRY_EXHAUSTED",
      "errorHttpStatus":200,
      "errorCode":600008000,
      "errorDeveloperMessage": if( substringBefore(substringAfter(error.description, ":"), "\n") != "" ) substringBefore(substringAfter(error.description, ":"), "\n") else error.description,
      "errorTitle": "Data Base Query Execution Error"
   },
   {
      "errorType":"HTTP:INTERNAL_SERVER_ERROR",
      "errorHttpStatus":500,
      "errorCode":600008000,
      "errorDeveloperMessage": if( substringBefore(substringAfter(error.description, ":"), "\n") != "" ) substringBefore(substringAfter(error.description, ":"), "\n") else error.description,
      "errorTitle": "HTTP Internal Server Error"
   },
   {
      "errorType":"WSC:SOAP_FAULT",
      "errorHttpStatus":500,
      "errorCode":600008000,
      "errorDeveloperMessage": if( substringBefore(substringAfter(error.description, ":"), "\n") != "" ) substringBefore(substringAfter(error.description, ":"), "\n") else error.description,
      "errorTitle": "Web Service Consumer Error"
   },
   {
      "errorType":"WSC:TIMEOUT",
      "errorHttpStatus":500,
      "errorCode":600008000,
      "errorDeveloperMessage": if( substringBefore(substringAfter(error.description, ":"), "\n") != "" ) substringBefore(substringAfter(error.description, ":"), "\n") else error.description,
      "errorTitle": "Timeout Error"
   },
   {
      "errorType":"WSC:BAD_REQUEST",
      "errorHttpStatus":500,
      "errorCode":600008000,
      "errorDeveloperMessage": if( substringBefore(substringAfter(error.description, ":"), "\n") != "" ) substringBefore(substringAfter(error.description, ":"), "\n") else error.description,
      "errorTitle": "Bad Request Error"
   },
   {
      "errorType":"WSC:CONNECTIVITY",
      "errorHttpStatus":500,
      "errorCode":600008000,
      "errorDeveloperMessage": if( substringBefore(substringAfter(error.description, ":"), "\n") != "" ) substringBefore(substringAfter(error.description, ":"), "\n") else error.description,
      "errorTitle": "Web Service Consumer Connectivity Error"
   },
   {
      "errorType":"WSC:CANNOT_DISPATCH",
      "errorHttpStatus":500,
      "errorCode":600008000,
      "errorDeveloperMessage": if( substringBefore(substringAfter(error.description, ":"), "\n") != "" ) substringBefore(substringAfter(error.description, ":"), "\n") else error.description,
      "errorTitle": "Web Service Cannot Dispatch -Internal Server Error"
   }
]
