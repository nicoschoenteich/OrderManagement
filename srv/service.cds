using { OrderManagement as my } from '../db/schema';

@path: '/service/OrderManagement'
service OrderManagementService {
    entity Orders as projection on my.Orders;

    action purchaseOrder ( order: Orders:ID ) returns Orders;
}
