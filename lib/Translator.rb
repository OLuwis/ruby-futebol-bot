#!/usr/bin/env ruby
# frozen_string_literal: true

module Translator

  class Translator
    DAYS_OF_WEEK = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    DIAS_DA_SEMANA = ["Domingo", "Segunda-Feira", "Terça-Feira", "Quarta-Feira", "Quinta-Feira", "Sexta-Feira", "Sábado"]
    STAGES = ["FINAL", "THIRD_PLACE", "SEMI_FINALS", "QUARTER_FINALS", "LAST_16", "LAST_32", "LAST_64", "ROUND_4", "ROUND_3", "ROUND_2", "ROUND_1", "GROUP_STAGE", "PRELIMINARY_ROUND", "QUALIFICATION", "QUALIFICATION_ROUND_1", "QUALIFICATION_ROUND_2", "QUALIFICATION_ROUND_3", "PLAYOFF_ROUND_1", "PLAYOFF_ROUND_2", "PLAYOFFS", "CLAUSURA", "APERTURA", "CHAMPIONSHIP", "RELEGATION", "RELEGATION_ROUND"]
    FASES = ["Final", "Terceiro Lugar", "Semifinais", "Quartas de Final", "Oitavas de Final", "Dezesseis Avos de Final", "Sessenta e Quatro Avos de Final", "4", "3", "2", "1", "Fase de Grupos", "Preliminar", "Qualificação", "Primeira Rodada de Qualificação", "Segunda Rodada de Qualificação", "Terceira Rodada de Qualificação", "Primeira Rodada de Mata-Mata", "Segunda Rodada de Mata-Mata", "Mata-Mata", "Clausura", "Abertura", "Campeonato", "Rebaixamento", "Rodada de Rebaixamento"]

    def translateDay(idx)
      return DIAS_DA_SEMANA[idx]
    end

    def translateStage(idx)
      return FASES[idx]
    end

  end

end
