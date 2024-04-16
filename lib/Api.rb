#!/usr/bin/env ruby
# frozen_string_literal: true

require "time"
require "date"
require "json"
require "tzinfo"
require "faraday"
require "dotenv/load"
require_relative "Translator"

module Api
  class Error < StandardError; end

  class Api
    IDS = [2001, 2002, 2003, 2013, 2014, 2015, 2017, 2019, 2021, 2152]

    def initialize(key)
      @key = key
    end

    # Competition ID Index
    def getMatches(id_index)
      conn = Faraday.new(
        url: "http://api.football-data.org",
        params: { status: "SCHEDULED", dateFrom: Date.today, dateTo: Date.today + 7 },
        headers: { "X-Auth-Token" => @key }
      )

      response = conn.get("/v4/competitions/#{IDS[id_index]}/matches")

      data = JSON.parse(response.body)

      hashes = []

      if data["matches"].length() == 0
        return ["\n\nNenhum jogo nesta semana"]
      end

      data["matches"].each { |match|
        time = Time.parse(match["utcDate"])
        time_zoned = TZInfo::Timezone.get("America/Sao_Paulo").utc_to_local(time)

        dayOfWeek = Translator::Translator.new.translateDay(Translator::Translator::DAYS_OF_WEEK.find_index(time.strftime("%A")))

        stage = nil

        if Translator::Translator::STAGES.include? match["stage"]
          stage = Translator::Translator.new.translateStage(Translator::Translator::STAGES.find_index(match["stage"]))
        else
          stage = match["matchday"]
        end

        hashes << "\n\n⚽ #{match["homeTeam"]["name"]} X #{match["awayTeam"]["name"]} \n📅 #{time.strftime("%d/%m - #{dayOfWeek}")} \n🕕 #{time_zoned.strftime("%kh%M")} \n🏆 Rodada - #{stage}"
      }

      return hashes
    end

  end

end
