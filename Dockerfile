# Usa uma imagem oficial do runtime do Ruby como base
FROM ruby:alpine

# Instala as dependências do sistema
RUN apk add --no-cache build-base

# Define o diretório de trabalho no contêiner
WORKDIR /app

# Copia o Gemfile e o Gemfile.lock do diretório do aplicativo para o contêiner
COPY Gemfile Gemfile.lock ./

# Instala as dependências do Ruby
RUN bundle install

# Copia o restante do aplicativo para o contêiner
COPY . .

# Exporta uma porta remota no contêiner
EXPOSE 3000

# Define o comando para executar o aplicativo
CMD ["ruby", "lib/bot.rb"]