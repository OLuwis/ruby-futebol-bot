<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/7/73/Ruby_logo.svg" style="display:block; width: 50%;">
  <h3 align="center">
    Ruby Futebol Bot
  </h3>
</p>

## BR

### Introdução

Este é um bot do telegram feito para checar futuras partidas de futebol de diferentes ligas e competições.

Este projeto foi feito usando Ruby 3+, e a API de bots do Telegram.

Esta aplicação é conteinerizada com Docker, através de um Dockerfile.

### Feito com
![Ruby Badge](https://img.shields.io/badge/Ruby-CC342D?logo=ruby&logoColor=fff&style=for-the-badge)
![Telegram Badge](https://img.shields.io/badge/Telegram-26A5E4?logo=telegram&logoColor=fff&style=for-the-badge)

### Desenvolvimento Local

1. Obtenha um token do bot com o ["BotFather"](https://core.telegram.org/bots#6-botfather), e passe por uma variável de ambiente.
```sh
  BOT_TOKEN = token_do_bot
```
2. Obtenha uma chave para api de [futebol](https://www.football-data.org/client/register).
3. Clone este repositório
```sh
git clone https://github.com/OLuwis/ruby-futebol-bot.git
```
4. Inicie o bot
```sh
ruby lib/Bot.rb
```
5. Converse com o bot pelo telegram.

## EN

### Introduction

This is a Telegram bot made to check upcoming football matches from different leagues and competitions.

This project was built using Ruby 3+ and the Telegram Bot API.

This application is containerized with Docker, using a Dockerfile.

### Built with
![Ruby Badge](https://img.shields.io/badge/Ruby-CC342D?logo=ruby&logoColor=fff&style=for-the-badge)
![Telegram Badge](https://img.shields.io/badge/Telegram-26A5E4?logo=telegram&logoColor=fff&style=for-the-badge)

### Local Development

1. Obtain a bot token from the ["BotFather"](https://core.telegram.org/bots#6-botfather) and set it as an environment variable.
```sh
  BOT_TOKEN = bot_token
```
2. Get an API key for [football](https://www.football-data.org/client/register).
3. Clone this repository
```sh
git clone https://github.com/OLuwis/ruby-futebol-bot.git
```
4. Start the bot
```sh
ruby lib/Bot.rb
```
5. Chat with the bot on Telegram.