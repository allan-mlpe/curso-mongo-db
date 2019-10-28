# curso-mongo-db

## Rodando o MongoDB
Para subir uma instância do MongoDB utilizando o Docker, utilize um dos comandos a seguir:

- Se você dispõe do [Docker Compose](https://docs.docker.com/compose/) instalado, apenas rode `docker-compose up -d` na raiz do projeto.

- Caso não tenha o Docker Compose, rode o script `runMongoDB.sh` na raiz do do projeto utilizando `./runMongoDB.sh` ou `sh runMongoDB.sh`.

Se optar por instalar uma instância local do Mongo ao invés de usar o Docker, você pode obter informações [aqui](https://docs.mongodb.com/manual/installation/).


## Comandos Úteis

- Listar usuários do banco de dados:
    
    `db.getUsers()`

- Criar um novo usuário no banco de dados:

    `db.createUser({user: "<USERNAME>", pwd: "<PASSWORD>", roles: [{role: "<ROLE_VALUE>", db: <DATABASE>}, {...}]})`

    Para verificar os possíveis _roles_ do MongoDB, clique [aqui](https://docs.mongodb.com/manual/reference/built-in-roles/).

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

    `db.<COLLECTION_NAME>.find(<QUERY>, <ATTRIBUTES_TO_SHOW>)`

- Buscar único documento:

    `db.<COLLECTION_NAME>.findOne(<QUERY>, <ATTRIBUTES_TO_SHOW>)` 

- Contar o número de registros de uma collection/consulta:

    `db.<COLLECTION_NAME>.count()`

    ou

    `db.<COLLECTION_NAME>.find(<QUERY>).count()`


## Backup e Restore

- Realizar um backup de um banco de dados:

    - Para um diretório utilizando a estrutura de backup padrão do Mongo: `mongodump --db <DATABASE_NAME> --out <PATH/TO/DUMP>`.
    
    - Para um arquivo json (devemos especificar a collection): `mongoexport --db <DATABASE_NAME> --collection <COLLECTION_NAME> --out <FILE_NAME>.json`.

- Restaurar um banco de dados a partir de um arquivo:
    
    - `mongorestore <PATH/TO/DUMP>`.

    - `mongoimport --drop --db <DATABASE_NAME> <DUMP_FILE>.json`.

Caso a instância do MongoDB necessite de autenticação, devemos incluir, nos comandos acima os, parâmetros de autentificação: `-u <DB_USER> -p <DB_USER_PASSWORD> --authenticationDatabase <DB_USER>`.

Para mais informações sobre backup/restore, verifique a [documentação](https://docs.mongodb.com/manual/tutorial/backup-and-restore-tools/).

## Clientes para o MongoDB
- [MongoDB Compass](https://www.mongodb.com/products/compass).
- [Robo 3T](https://robomongo.org/).