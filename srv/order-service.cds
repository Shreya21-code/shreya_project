using my.salesorder as my from '../db/order-data-model';

service SalesOrderService @(path: '/SalesOrderService',requires:'authenticated-user') {
    @(restrict:[{grant:'READ',to:'Viewer'},
                {grant:['READ','CREATE','UPDATE','DELETE'],to:'Admin', where:'salesOrg = $user.SalesOrgAttr'}])
    entity SalesOrders     as projection on my.SalesOrders;
    entity SalesOrderItems as projection on my.SalesOrderItems;
    entity Customers       as projection on my.Customers;
    entity Addresses       as projection on my.Addresses;
 
    @cds.persistence.exists
    entity testHandler {
        key ID          : Integer;
            description : String(10);
    }
}