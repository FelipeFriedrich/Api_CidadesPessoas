const Cidade = require('../models/CidadeModel');

module.exports = {

    store(request, response){
        const cidade = request.body
        Cidade.store(cidade).then( () => {
            response.status(201).send('Cidade cadastrada com sucesso');
        }, (err) => response.status(400).send(err));

    }


}