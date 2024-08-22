# frozen_string_literal: true

module Metronome
  module Models
    class CreditListResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::Credit>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::Credit })

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String
    end
  end
end
