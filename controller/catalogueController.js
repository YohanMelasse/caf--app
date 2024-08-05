
const dataMapper = require('../App/dataMapper');
const notFound = require('../middleware/404');
const catalogue = {
    async getAll(req, res) {
        try {
            const coffees = await dataMapper.getAll();
            const categories = await dataMapper.category();
            res.render('catalogue', { coffees: coffees, categories: categories });
        } catch (error) {
            console.error(error);
            throw error;
        }
    }
}


module.exports = catalogue;