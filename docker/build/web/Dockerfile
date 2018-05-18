FROM elixir:1.3.4

# Inspired in: http://davidanguita.name/articles/dockerizing-a-phoenix-project/

ARG CONTAINER_USER='elixir'
ARG PHOENIX_VERSION=1.3.0

ENV DEBIAN_FRONTEND=noninteractive
ENV TERM=xterm

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install \
        apt-utils \
        locales \
        inotify-tools \
        curl \
        less \
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

RUN ls -al && mkdir /home/elixir/app

# Set the workdir for the container user defined above
WORKDIR /home/elixir/app

# Install the Phoenix Mix archive
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new-$PHOENIX_VERSION.ez

# Allow to read ENV vars for mix configs
#ENV REPLACE_OS_VARS=true

# This commands will run under user defined above
RUN mix local.hex --force && \
    mix local.rebar --force

#RUN mix deps.get

RUN mix phoenix.new hello && \
    cd hello && \
    mix deps.get && \
    mix ecto.create

# install node dependencies
# RUN npm install && \
#    node node_modules/brunch/bin/brunch build

CMD mix phoenix.server
