using { OrderManagement as my } from '../db/schema';

@path: '/service/OrderManagement'
service OrderManagementService {
    entity Orders as projection on my.Orders;
    entity OrderItems as projection on my.OrderItems;

    action purchaseOrder ( order: Orders:ID ) returns Orders;
    action purchaseOrderItems (order: Orders:ID, orderItems:OrderItems:ID) returns OrderItems;
}
