FROM elixir

# Inspired in: http://davidanguita.name/articles/dockerizing-a-phoenix-project/

ARG CONTAINER_USER='elixir'

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install \
        apt-utils \
        locales \
        curl \
        git \
        zsh && \
    apt install -f && \
    locale-gen en_GB.UTF-8 && \
    dpkg-reconfigure locales && \

    # Intall Oh My Zsh for root user
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && \

    useradd -m -u 1000 -s /usr/bin/zsh "${CONTAINER_USER}" && \
    su "${CONTAINER_USER}" -c 'bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"' && \

    # Install NodeJS 6.x and the NPM
    curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get install -y -q nodejs

USER "${CONTAINER_USER}"

# This commands will run under user defined above
RUN mix local.hex --force && \
    mix local.rebar --force

# Set the workdir for the container user defined above
WORKDIR /app
