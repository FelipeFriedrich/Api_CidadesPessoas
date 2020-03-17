const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const routes = require('./routes/routes');

app.use(express.json());
app.use(routes);
app.use(
    bodyParser.urlencoded({
      extended: true
    }));


app.listen(3000);