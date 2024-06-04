# frozen_string_literal: true

module Metronome
  module Models
    class DashboardGetEmbeddableURLResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::DashboardGetEmbeddableURLResponse::Data]
      required :data, -> { Metronome::Models::DashboardGetEmbeddableURLResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] url
        #   @return [String]
        optional :url, String
      end
    end
  end
end
