FROM vcrn/jupyterlab-nlp-ja:python3.8
WORKDIR $WORK_DIR
USER $USER

# --- Install python packages ---
COPY pyproject.toml $WORK_DIR
RUN poetry update

# --- Create the necessary links and cache ---
# --- Delete unnecessary packages ---
RUN ldconfig \
    && apt-get -y clean \
    && apt-get -y autoremove \
    && rm -rf /var/lib/apt/lists/*

COPY scripts/ $WORK_DIR/scripts/
CMD [ "sh", "scripts/run.sh" ]
