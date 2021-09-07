# Request on our API thpimmo_back :

base URL : [https://thpimmo-back.herokuapp.com](https://thpimmo-back.herokuapp.com/)   

### SIgn up

Method: POST   

`/api/signup`   

- params :

{  
"user":
  {"email":"xaafgfgab@yopmaill.com",   
  "password":"xabi123",   
  "password_confirmation":"xabi123"   
  }   
}   

### Login

method: POST   

`/api/login`   

- params :

{  
"user":
  {"email":"xaafgfgab@yopmaill.com",   
  "password":"xabi123"     
  }   
}   

### Logout

Method: DELETE   

`/api/logout`   

Header : {Authorization : Bearer <TOKEN>}   

### User (Show)

Method: GET   

`/api/v1/users/:id`   

Header : {Authorization : Bearer <TOKEN>}   

### Category (Index)

Method: GET   

`/api/v1/categories`   

Header : {Authorization : Bearer <TOKEN>}   

### Location (Index)

Method: GET    

`/api/v1/locations`   

Header : {Authorization : Bearer <TOKEN>}   

### Properties (Index,show,create,update,delete)

Method: GET,POST,PUT,DELETE   

`/api/v1/properties`  ⇒ for Index   

`/api/v1/properties/:id` ⇒for Show, create, update, delete (must be creator for update & delete)   

Header : {Authorization : Bearer <TOKEN>}    