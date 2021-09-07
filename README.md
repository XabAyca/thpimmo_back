# Request on our API thpimmo_back :
base URL : [https://thpimmo-back.herokuapp.com](https://thpimmo-back.herokuapp.com/)   

### SIgn up
Method: POST   
`/api/signup`   
- params :
```json
{  
"user":
  {"email":"test@test.test",   
  "password":"password",   
  "password_confirmation":"password"   
  }   
}
``` 
---------

### Login
method: POST   
`/api/login`   
- params :
```json
{  
"user":
  {"email":"test@test.test",   
  "password":"password"  
  }   
}
``` 
---------

### Logout
Method: DELETE   
`/api/logout`   
```json
{
  "Header" : 
    { 
    "Authorization" : "Bearer <TOKEN>"
    }
 }
 ```  
-------
### User (Show)
Method: GET   
`/api/v1/users/:id`   
```json
{
  "Header" : 
    { 
    "Authorization" : "Bearer <TOKEN>"
    }
 }
 ```  
-------

### Category (Index)
Method: GET   
`/api/v1/categories`   
```json
{
  "Header" : 
    { 
    "Authorization" : "Bearer <TOKEN>"
    }
 }
 ```  
-------

### Location (Index)
Method: GET    
`/api/v1/locations`   
```json
{
  "Header" : 
    { 
    "Authorization" : "Bearer <TOKEN>"
    }
 }
 ```  
-------

### Properties (Index,show,create,update,delete)
Method: GET,POST,PUT,DELETE   
`/api/v1/properties`  ⇒ for Index   
`/api/v1/properties/:id` ⇒for Show, create, update, delete (must be creator for update & delete)   
```json
{
  "Header" : 
    { 
    "Authorization" : "Bearer <TOKEN>"
    }
 }
 ```  
-------
