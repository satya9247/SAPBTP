
const cds = require('@sap/cds');

module.exports = cds.service.impl(async function(srv) {

    srv.on ('addNumber', async(req) => {
        let sum = req.data.a + req.data.b;
        return sum
    })

    srv.on ('subractAction', async(req) => {
        let subract = req.data.a - req.data.b;
        return subract
    })
})
