include .env

.PHONY: lint
lint:
	docker-compose exec ${CONTAINER_NAME} pflake8 ${PROJECT_NAME} .
	docker-compose exec ${CONTAINER_NAME} mypy ${PROJECT_NAME} .


.PHONY: format
format:
	docker-compose exec ${CONTAINER_NAME} black --exclude=.venv ${PROJECT_NAME} .
	docker-compose exec ${CONTAINER_NAME} autoflake -ri --remove-all-unused-imports --ignore-init-module-imports --remove-unused-variables ${PROJECT_NAME} .
	docker-compose exec ${CONTAINER_NAME} isort --profile=black ${PROJECT_NAME} .
