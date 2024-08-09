# frozen_string_literal: true

module Metronome
  module Models
    class ContractAmendResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::ID]
      required :data, -> { Metronome::Models::ID }
    end
  end
end
