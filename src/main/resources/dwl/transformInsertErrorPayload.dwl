%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    status: payload.status default 0,
    payload: vars.errorPayload default "message": "Error",
    errors: [
    	{
      errorTitle: error.errorType.asString,
	  errorMessage: "Error",
	  version: p('app.version'),
	  developerMessage: error.description,
      errorCode: "20001",
	  moreInfo: "Contact Support Team",
	  correlationId: correlationId,
      errorHttpStatus: attributes.httpStatus,
	  validationErrors: null
    	}] default []
}


