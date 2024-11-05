%dw 2.0

import * from dw::core::Strings

output application/json
---
{
    status: payload.status default 0,
    payload: vars.errorPayload default "message": "Error",
    errors: payload.errors map ( payload01 , indexOfPayload01 ) ->{
      errorTitle: payload01.errorTitle,
	  errorMessage: payload01.errorMessage,
	  version: payload01.version,
	  developerMessage: payload01.developerMessage replace /(\[.*\])/ with '[]' replace /((http[s]?:\/\/)?([^\/\s]+\/)(.*)\')/ with '',
      errorCode: payload01.errorCode,
	  moreInfo: payload01.moreInfo,
	  correlationId: payload01.correlationId,
      errorHttpStatus: payload01.errorHttpStatus,
	  validationErrors: payload01.validationErrors
    	}default []
}

