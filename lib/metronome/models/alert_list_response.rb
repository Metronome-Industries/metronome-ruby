# frozen_string_literal: true

module Metronome
  module Models
    class AlertListResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::CustomerAlert>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::CustomerAlert })

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String
    end
  end
end
