# frozen_string_literal: true

module Metronome
  module Models
    class CreditCreateGrantResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::CreditCreateGrantResponse::Data]
      required :data, -> { Metronome::Models::CreditCreateGrantResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String
      end
    end
  end
end
