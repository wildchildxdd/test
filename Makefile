build:
	docker compose build

generate_empty_configs: create_postges_env
	@echo Done!

generate_configs: generate_postgres_credentials
	@echo Done!

generate_postgres_credentials: create_postges_env
	@echo Fill postgres env file with random credentials...
	@sed -i"" 's/\(POSTGRES_USER=\).*/\1merlin/' config/pg/db.env
	@</dev/urandom tr -dc '123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz' \
		| head -c28 \
		| xargs -I{} sed -i"" 's/\(POSTGRES_PASSWORD=\).*/\1{}/' config/pg/db.env

create_postges_env:
	@echo Creating postges env file...
	@echo -e "POSTGRES_DB=ankieta\nPOSTGRES_USER=\nPOSTGRES_PASSWORD=" > config/pg/db.env
