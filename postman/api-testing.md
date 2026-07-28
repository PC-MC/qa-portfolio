# API Testing Practice (Postman)

## Tools
Postman

## API
JSONPlaceholder API

## Tested HTTP Methods

### GET

Endpoint:
GET /users/1

Result:
200 OK

Checked:
- response status code;
- response body;
- user data structure.


### GET Negative Case

Endpoint:
GET /users/abc

Expected:
400 Bad Request

Actual:
404 Not Found

Bug:
API returns incorrect status code for invalid user ID.


### POST

Endpoint:
POST /users

Request body:

{
  "name": "Anatoliy",
  "age": 37
}

Result:
201 Created

Checked:
- created object;
- response body.


### PUT

Endpoint:
PUT /users/1

Checked:
- full object update;
- returned data.


### PATCH

Endpoint:
PATCH /users/1

Checked:
- partial update;
- changed field value.


## Status Codes Practiced

200 OK  
201 Created  
204 No Content  
400 Bad Request  
404 Not Found  
500 Internal Server Error


## Skills Practiced

- creating API requests;
- working with JSON;
- checking response status;
- checking response body;
- negative testing;
- writing API bug reports.