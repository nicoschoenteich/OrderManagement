namespace OrderManagement;

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity Orders
{
    key ID : UUID;
    customer_id : String(100);
    date : Date;
    status : String(100);
    total : String(100);
    orderItems : Association to one OrderItems;
}

entity OrderItems
{
    key ID : UUID;
    key order_id : String(100);
    item_id : String(100);
    quantity : Integer;
    price : Double;
    orders : Composition of many Orders on orders.orderItems = $self;
    items : Association to one Items;
}

entity Items
{
    key ID : UUID;
    item_name : String(100);
    price : String(100);
    vendor : String(100);
    orderItems : Composition of many OrderItems on orderItems.items = $self;
}
