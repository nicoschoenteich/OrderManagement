
const cds = require('@sap/cds')

module.exports = function () {
    const { Orders } = cds.entities("OrderManagement")

    this.on("purchaseOrder", async req => {
        const ID = req.data.order
        let order = await SELECT (Orders, ID)
        if (!order) return req.error (404,`Order ${ID} doesn't exist`)
        await UPDATE (Orders, ID) .with ({ purchased: true, date: new Date() })
        return await SELECT (Orders, ID)
    })
}