# frozen_string_literal: true

module Metronome
  module Models
    class DashboardGetEmbeddableURLResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Metronome::Models::DashboardGetEmbeddableURLResponse::Data]
      required :data, -> { Metronome::Models::DashboardGetEmbeddableURLResponse::Data }

      # @!parse
      #   # @param data [Object]
      #   #
      #   def initialize(data:) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      class Data < Metronome::BaseModel
        # @!attribute url
        #
        #   @return [String]
        optional :url, String

        # @!parse
        #   # @param url [String, nil]
        #   #
        #   def initialize(url: nil) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
