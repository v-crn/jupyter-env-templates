BACKUP_DIR:=.backup
BASE:=jupyterlab

.PHONY: python3.8
python3.8:
	${eval CARGO:=python3-8}
	sh scripts/generate.sh ${BACKUP_DIR} ${BASE} assets/${CARGO} ${BASE}-${CARGO}


.PHONY: python3.10
python3.10:
	${eval CARGO:=python3-10}
	sh scripts/generate.sh ${BACKUP_DIR} ${BASE} assets/${CARGO} ${BASE}-${CARGO}


.PHONY: nlp-ja-python3.8
nlp-ja-python3.8:
	${eval CARGO:=nlp-ja-python3-8}
	sh scripts/generate.sh ${BACKUP_DIR} ${BASE} assets/${CARGO} ${BASE}-${CARGO}


.PHONY: nlp-ja-pytorch-python3.8
nlp-ja-pytorch-python3.8:
	${eval CARGO:=nlp-ja-pytorch-python3-8}
	sh scripts/generate.sh ${BACKUP_DIR} ${BASE} assets/${CARGO} ${BASE}-${CARGO}


.PHONY: all
all: python3.8 python3.10 nlp-ja-python3.8 nlp-ja-pytorch-python3.8

.PHONY: clear
clear:
	sudo rm -rf jupyterlab-python3-8
	sudo rm -rf jupyterlab-python3-10
	sudo rm -rf jupyterlab-nlp-ja-python3-8
	sudo rm -rf jupyterlab-nlp-ja-pytorch-python3-8
