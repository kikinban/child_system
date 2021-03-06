FROM ruby:2.6.6

# Dockerにyarnを入れる(debian)
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# RailsのインストールやMySQLへの接続に必要なパッケージをインストール
RUN apt-get update -qq && apt-get install -y  nodejs default-mysql-client yarn
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp

RUN bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java
RUN bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

# 追加 webpacker

RUN rails webpacker:install

# 追加 jquery
RUN yarn add jquery

# 追加 slick
RUN yarn add slick-carousel

ENTRYPOINT ["sh","entrypoint.sh"]
EXPOSE 3000
