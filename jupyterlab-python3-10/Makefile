include .env

.PHONY: bash
bash:
	docker-compose exec ${CONTAINER_NAME} /bin/bash


.PHONY: clear
clear:
	docker-compose down --rmi all --volumes


.PHONY: scan_image
scan_image:
	docker scan --json ${IMAGE_NAME} --severity=high > docker-scan-result.json


.PHONY: tag
tag:
	docker tag ${IMAGE_ID} ${DOCKER_HUB_USERNAME}/${IMAGE_NAME}

.PHONY: push_image
push_image:
	docker push ${DOCKER_HUB_USERNAME}/${IMAGE_NAME}
