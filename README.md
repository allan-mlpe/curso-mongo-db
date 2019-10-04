# curso-mongo-db

## Rodando o MongoDB
Para subir uma instância do MongoDB utilizando o Docker, utilize um dos comandos a seguir:

- Se você dispõe do [Docker Compose](https://docs.docker.com/compose/) instalado, apenas rode `docker-compose up -d` na raiz do projeto.

- Caso não tenha o Docker Compose, rode o script `runMongoDB.sh` na raiz do do projeto utilizando `./runMongoDB.sh` ou `sh runMongoDB.sh`.

Se optar por instalar uma instância local do Mongo ao invés de usar o Docker, você pode obter informações [aqui](https://docs.mongodb.com/manual/installation/).


## Comandos Úteis
- Listar bancos de dados:
    
    `show databases`

- Criar/usar um banco de dados:
    
    `use <DB_NAME>`

- Listar collections de um banco de dados:

    `show collections`

- Criar uma nova collection:

    `db.<COLLECTION_NAME>.insert({ prop1: 'value', prop2: true, ... })`

- Atualizar uma collection:

    `db.<COLLECTION_NAME>.save({ prop1: 'value', prop2: true, ... })`**\***

    ou

    `db.<COLLECTION_NAME>.update(<QUERY>, { prop1: 'new_value', ... }, <options>)`

    **\*** se, no comando `save`,  passarmos um valor de `_id` já existente no banco, o respectivo documento será atualizado. Caso contrário, o MongoDB criará um novo documento, semelhante ao comando `insert`. 

- Excluir um registro:

    `db.<COLLECTION_NAME>.remove(<QUERY>, <DELETE_JUST_ONE: boolean>)`

- Consultar todos os documentos:

    `db.collection.find(<QUERY>, <ATTRIBUTES_TO_SHOW>)`

- Buscar único documento:

    `db.collection.findOne(<QUERY>, <ATTRIBUTES_TO_SHOW>)` 

## Clientes para o MongoDB
- [MongoDB Compass](https://www.mongodb.com/products/compass).
- [Robo 3T](https://robomongo.org/).