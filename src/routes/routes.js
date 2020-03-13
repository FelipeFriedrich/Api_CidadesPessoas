const { Router } = require('express');

const routes = Router();


routes.get('/', (req,resp) => {
    resp.send(`Sistema funcionando!`);
});


//cidades
routes.get('/cidades', (req,resp) => {
    resp.send('Get Cidades por nome e estado');
});
routes.post('/cidades', (req,resp) => {
    resp.send('Post Cidades');
});


//Clientes
routes.get('/clientes', (req,resp) => {
    resp.send('Get clientes por nome');
});
routes.get('/clientes/:id', (req,resp) => {
    resp.send('Get Clientes por id');
});
routes.post('/clientes', (req,resp) => {
    resp.send('Post clientes');
});
routes.put('/clientes/:id', (req,resp) => {
    resp.send('Alterar clientes por id');
});
routes.delete('/clientes/:id', (req,resp) => {
    resp.send('Deletar clientes por id');
});


module.exports = routes;