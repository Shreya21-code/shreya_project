const cds = require('@sap/cds');
module.exports = class NorthwindService extends cds.ApplicationService {
    init() {
        this.on('READ', ['Customers','Products'], async (req) => {
            try {
                const service = await cds.connect.to('Northwind');
                let result = await service.tx(req).run(req.query);
                return result;
            }
            catch (error) {
                req.error('500', error);
            }
        })
        return super.init();
    }
}