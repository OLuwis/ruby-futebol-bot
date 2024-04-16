#!/usr/bin/env ruby
# frozen_string_literal: true

require "rubygems"
require "dotenv/load"
require "telegram/bot"
require_relative "api"

module Bot
  class Error < StandardError; end

  class Bot
    NAMES = ["UEFA Champions League 🇪🇺", "Bundesliga 1 🇩🇪", "Eredivisie 🇳🇱", "Brasileirão Série A 🇧🇷", "La Liga 🇪🇸", "Ligue 1 🇫🇷", "Liga Portugal 🇵🇹", "Serie A 🇮🇹", "Premier League 🏴󠁧󠁢󠁥󠁮󠁧󠁿", "Copa Libertadores 🇦🇷 🇧🇷"]
    COMMANDS = ["/ucl", "/bl1", "/edv", "/bsa", "/lla", "/fl1", "/lpf", "/sa", "/epl", "/cl"]

    def initialize(token)
      @token = token
    end

    def run
      Telegram::Bot::Client.run(@token) do |bot|
        bot.listen do |message|
          if message.text == "/start"
            bot.api.send_message(chat_id: message.chat.id, text: "Bem-vindo ao FutMatch, seu guia de jogos da semana. \n\nUse um dos comandos abaixo para checar os jogos da respectiva liga de futebol: \n\n#{COMMANDS[0]} - #{NAMES[0]} \n#{COMMANDS[1]} - #{NAMES[1]} \n#{COMMANDS[2]} - #{NAMES[2]} \n#{COMMANDS[3]} - #{NAMES[3]} \n#{COMMANDS[4]} - #{NAMES[4]} \n#{COMMANDS[5]} - #{NAMES[5]} \n#{COMMANDS[6]} - #{NAMES[6]} \n#{COMMANDS[7]} - #{NAMES[7]} \n#{COMMANDS[8]} - #{NAMES[8]} \n#{COMMANDS[9]} - #{NAMES[9]}")
          elsif COMMANDS.include? message.text
            idx = COMMANDS.find_index(message.text)
            data = Api::Api.new(ENV["API_KEY"]).getMatches(idx)
            bot.api.send_message(chat_id: message.chat.id, text: "Jogos da semana - #{NAMES[idx]} #{data.join("")}")
          else
            bot.api.send_message(chat_id: message.chat.id, text: "Comando desconhecido, por favor insira um comando válido.")
          end
        end
      end
    end

  end

  Bot.new(ENV["BOT_TOKEN"]).run

end
