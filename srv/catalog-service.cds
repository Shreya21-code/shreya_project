using my1.salesorder as my from '../db/data-models.cds';

service CatalogService1 {
    //Direct Entities
    entity SalesOrders     as projection on my.SalesOrders;
    entity SalesOrderItems as projection on my.SalesOrderItems;
}
