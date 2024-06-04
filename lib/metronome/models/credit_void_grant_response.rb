# frozen_string_literal: true

module Metronome
  module Models
    class CreditVoidGrantResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::CreditVoidGrantResponse::Data]
      required :data, -> { Metronome::Models::CreditVoidGrantResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String
      end
    end
  end
end
