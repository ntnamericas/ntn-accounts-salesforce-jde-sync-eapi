%dw 2.0
output application/json
---
{
  status: vars.httpStatus,
  payload: {
    appName: p('app.name') default "",
    serverName: "Host: " ++ (server.host default "") ++ ", IP: " ++ (server.ip default ""),
    status: "Inactive",
    date: now()
  },
  errors: []
}