# Ankieta
google forms like project

#### Requirements / technologies
* make
* Go v1.17+
* Docker
* Kafka + grpc
* PostgreSQL
* Vue.js

#### Libs
* go-zero
* gorm

## Configuration
### Services credentials
#### Automatic
execute in the current directory
```bash
make generate_configs
```
#### Manual
run
```bash
make generate_empty_configs
```
and fill missed fields in next files:

* `config/pg/db.env`
