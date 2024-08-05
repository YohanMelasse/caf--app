const dataMapper = require('../App/dataMapper');

const OneProduct = {
    product: async (req, res) => {
        try {
            const id = req.params.produtId;
            const Oneproduct = await dataMapper.getOneProduct(id);
            res.render('Oneproduct', { Oneproduct: Oneproduct });
        } catch (error) {
            console.error(error);
            throw error;
        }

    }
}
module.exports = OneProduct;
