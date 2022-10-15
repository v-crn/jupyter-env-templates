FROM vcrn/jupyterlab-python3-8 AS builder
WORKDIR $WORK_DIR
COPY pyproject.toml $WORK_DIR
RUN pip install --no-cache-dir poetry \
    && poetry export --dev --without-hashes -f requirements.txt -o requirements.txt


FROM vcrn/jupyterlab-python3-8 AS runner
WORKDIR $WORK_DIR
USER $USER

# --- MeCab ---
RUN apt-get update && apt-get install -y --no-install-recommends \
    mecab \
    libmecab-dev \
    mecab-ipadic-utf8 \
    file

# --- mecab-ipadic-NEologd ---
RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git \
    && mecab-ipadic-neologd/bin/install-mecab-ipadic-neologd -n -y
# To install all dictionaries:
# && mecab-ipadic-neologd/bin/install-mecab-ipadic-neologd -n -a -y

ENV MECABRC /etc/mecabrc
RUN cp /etc/mecabrc /etc/mecabrc.default

# Set mecab-ipadic-neologd as the default dictionary
RUN cat /etc/mecabrc.default | sed -e "s/^dicdir/; dicdir/" \
    | sed -e "/; dicdir/a dicdir = $(find / -path */mecab/dic/mecab-ipadic-neologd 2> /dev/null | head -1)" \
    > $MECABRC
RUN rm -rf mecab-ipadic-neologd

# --- Install python packages ---
COPY --from=builder requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt

# --- Create the necessary links and cache ---
RUN ldconfig

# --- Delete unnecessary packages ---
RUN apt-get -y clean \
    && apt-get -y autoremove \
    && rm -rf /var/lib/apt/lists/*

COPY scripts/ $WORK_DIR/scripts/
ENTRYPOINT [ "scripts/run.sh" ]
