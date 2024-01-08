
const cds = require('@sap/cds')

module.exports = function () {

    const { Orders, OrderItems } = cds.entities("OrderManagement")

    this.on("purchaseOrder", async req => {
        const ID = req.data.order
        let order = await SELECT (Orders, ID)
        if (!order) return req.error (404,`Order ${ID} doesn't exist`)
        await UPDATE (Orders, ID) .with ({ purchased: true, date: new Date() })
        return await SELECT (Orders, ID)
    })

    this.on("purchaseOrderItems", async req => {
        const ID = req.data.order
        const ItemID = req.data.item
        let items = await SELECT (Orders, ID)
        if (!items) return req.error (404,`Items ${ID} doesn't exist`)
        return await SELECT(OrderItems, ID, ItemID)
    })
}