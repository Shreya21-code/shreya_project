namespace demo;

type Addresstype{
    city : String;
    street : String;
    streetNumber : Integer;
};

entity Users
{
    key id : Integer;
    name : String(100);
    email: String(100);
    phone : String(100);
    gender: String(100);
    address : Addresstype;      
}

entity Projects
{
    key id : Integer;
    name : String(100);
    description : String(100);
    
}