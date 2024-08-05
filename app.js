require('dotenv').config();
const express = require('express');
const path = require('path');
const router = require('./App/Router');

const app = express();
module.exports = app




const securedPath = path.join(__dirname, 'views');
app.set('views', securedPath);
app.set('view engine', 'ejs');
app.use(express.static('public'));

app.use(router);

//require('./db/database');
const css = require('./Asset/css.json');
app.locals.css = css;

const port = process.env.PORT || 8000;
app.listen(port, () => {
    console.log(`server is running on ${process.env.BASE_URL}${port}`)
})