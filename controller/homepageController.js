
const dataMapper = require('../App/dataMapper');
const css = require('../Asset/css.json');

const homepage = {
    homepage: async (req, res) => {
        try {
            const homeIllustration = css.find(file => file.image === 'about.jpg')
            const displayLastProducts = await dataMapper.displayLastProducts();
            res.render('homepage', {
                homeIllustration: homeIllustration,
                displayLastProducts: displayLastProducts
            });
        } catch (error) {
            console.error(error);
            throw error;
        }

    }
}

module.exports = homepage;