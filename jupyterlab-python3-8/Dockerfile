FROM python:3.8-slim
WORKDIR $WORK_DIR
USER $USER

# --- Locale ---
RUN apt-get update \
    && apt-get install -y --no-install-recommends locales \
    && localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ Asia/Tokyo

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
    && apt-get purge -y nodejs npm

# --- Python ---
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3-pip \
    && update-alternatives --install /usr/bin/python python /usr/bin/python3 1 \
    && update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1 \
    && pip install --no-cache-dir --upgrade setuptools \
    && pip install --no-cache-dir --upgrade pip
ENV PYTHONUNBUFFERED=true
ENV PYTHONPATH $WORK_DIR:$PYTHONPATH

# --- Install python package manager ---
RUN pip install --no-cache-dir poetry \
    && poetry config virtualenvs.create false

# --- Install python packages ---
COPY pyproject.toml $WORK_DIR
RUN poetry install

# --- Create the necessary links and cache ---
# --- Delete unnecessary packages ---
RUN ldconfig \
    && apt-get -y clean \
    && apt-get -y autoremove \
    && rm -rf /var/lib/apt/lists/*

COPY scripts/ $WORK_DIR/scripts/
CMD [ "sh", "scripts/run.sh" ]
