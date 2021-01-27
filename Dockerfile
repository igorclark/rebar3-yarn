FROM erlang:23.1.5.0
RUN apt-get update -y
RUN apt-get install -y software-properties-common jq
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -y
RUN apt-get install -y zip nodejs yarn
ENTRYPOINT [ "/bin/bash" ]
