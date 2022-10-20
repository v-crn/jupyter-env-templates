FROM vcrn/jupyterlab:python3.8
WORKDIR $WORK_DIR
USER $USER

# --- MeCab ---
RUN apt-get update && apt-get install -y --no-install-recommends \
    mecab \
    libmecab-dev \
    mecab-ipadic-utf8 \
    file

# --- mecab-ipadic-NEologd ---
ENV MECABRC /etc/mecabrc
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git \
    && mecab-ipadic-neologd/bin/install-mecab-ipadic-neologd -n -y \
    # To install all dictionaries:
    # && mecab-ipadic-neologd/bin/install-mecab-ipadic-neologd -n -a -y
    && cp /etc/mecabrc /etc/mecabrc.default \
    # Set mecab-ipadic-neologd as the default dictionary
    && cat /etc/mecabrc.default | sed -e "s/^dicdir/; dicdir/" \
    | sed -e "/; dicdir/a dicdir = $(find / -path */mecab/dic/mecab-ipadic-neologd 2> /dev/null | head -1)" \
    > $MECABRC \
    && rm -rf mecab-ipadic-neologd

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
