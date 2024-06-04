# frozen_string_literal: true

module Metronome
  module Models
    class CreditEditGrantResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::CreditEditGrantResponse::Data]
      required :data, -> { Metronome::Models::CreditEditGrantResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String
      end
    end
  end
end
