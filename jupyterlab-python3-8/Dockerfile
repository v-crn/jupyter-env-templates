FROM python:3.8-slim AS builder
WORKDIR $WORK_DIR
RUN apt-get update && apt-get install -y --no-install-recommends python3-pip \
    && update-alternatives --install /usr/bin/python python /usr/bin/python3 1 \
    && update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1 \
    && pip install --upgrade setuptools \
    && pip install --upgrade pip
COPY pyproject.toml $WORK_DIR
RUN pip install --no-cache-dir poetry \
    && poetry export --dev --without-hashes -f requirements.txt -o requirements.txt


FROM python:3.8-slim AS runner
WORKDIR $WORK_DIR
USER $USER

# --- Locale ---
RUN apt-get update && apt-get install -y locales
RUN localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9

# --- Device setting ---
ENV TERM xterm

# --- Fonts ---
RUN apt-get update && apt-get install -y --no-install-recommends \
    fontconfig \
    fonts-noto-cjk

# --- Basic dependencies ---
RUN apt-get update && apt-get install -y --no-install-recommends \
    sudo \
    vim \
    curl \
    wget \
    tzdata \
    git \
    build-essential \
    npm \
    ca-certificates

# --- Update nodejs & npm---
RUN npm install n -g \
    && n stable \
    && apt purge -y nodejs npm

# --- Python ---
RUN apt-get update && apt-get install -y --no-install-recommends python3-pip \
    && update-alternatives --install /usr/bin/python python /usr/bin/python3 1 \
    && update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1 \
    && pip install --upgrade setuptools \
    && pip install --upgrade pip
ENV PYTHONUNBUFFERED=true
ENV PYTHONPATH /root:$PYTHONPATH

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
