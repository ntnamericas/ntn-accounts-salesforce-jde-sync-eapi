%dw 2.0
output application/json
---
[
{
					'errorType':'BUSINESSVALIDATION:BUSINESS-SALESFORCE',
					'errorCode':404,
					'httpStatus':404,
					'errorMessage':vars.unauthorizedError default 'You have issues accessing the system. This information comes from dwl/customErrorsMap.dwl file',
					'errorDeveloperMessage': vars.developerMessage default error.detailedDescription,
					'errorTitle': 'DATA VALIDATION ERROR'
				}
]