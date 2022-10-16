FROM vcrn/jupyterlab-nlp-ja AS builder
WORKDIR $WORK_DIR
COPY pyproject.toml ./
RUN pip install --no-cache-dir poetry \
    && poetry export --dev --without-hashes -f requirements.txt -o requirements.txt


FROM vcrn/jupyterlab-nlp-ja AS runner
WORKDIR $WORK_DIR
USER $USER

# --- Install python packages ---
COPY --from=builder requirements.txt /tmp
RUN pip install -r --no-cache-dir /tmp/requirements.txt

# --- Create the necessary links and cache ---
# --- Delete unnecessary packages ---
RUN ldconfig \
    && apt-get -y clean \
    && apt-get -y autoremove \
    && rm -rf /var/lib/apt/lists/*

COPY scripts/ $WORK_DIR/scripts/
ENTRYPOINT [ "scripts/run.sh" ]
