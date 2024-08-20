# frozen_string_literal: true

module Metronome
  module Models
    class CustomerRetrieveResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::CustomerDetail]
      required :data, -> { Metronome::Models::CustomerDetail }
    end
  end
end
