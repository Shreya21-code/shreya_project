using {Northwind as external} from './external/Northwind';
 
service NorthwindService
{
    entity Customers as projection on external.Customers;
    entity Products as select ProductID as ID,
                              ProductName  from external.Products;
}