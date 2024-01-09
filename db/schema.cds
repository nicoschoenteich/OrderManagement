namespace OrderManagement;

using
{
    Currency,
    cuid
}
from '@sap/cds/common';

entity Orders : cuid
{
    customer : String(100);
    date : Date;
    status : String(100);
    price : Decimal;
    currency : Currency;
    orderItems : Composition of many OrderItems on orderItems.order = $self;
}

entity OrderItems : cuid
{
    product : String(100);
    quantity : Integer;
    total: Decimal;
    price : Decimal;
    currency: Currency;
    order : Association to one Orders;
}