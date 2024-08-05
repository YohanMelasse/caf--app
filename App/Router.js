const express = require('express');
const app = express();
const router = express.Router();

const homepage = require('../controller/homepageController');
const catalogue = require('../controller/catalogueController');
const shop = require('../controller/shopController');
const Oneproduct = require('../controller/oneProductController');






router.get('/', homepage.homepage);
router.get('/catalogue', catalogue.getAll);
router.get('/boutique', shop.ourshop);
router.get('/:produtId', Oneproduct.product);





module.exports = router;