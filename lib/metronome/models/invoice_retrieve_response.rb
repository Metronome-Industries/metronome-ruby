# frozen_string_literal: true

module Metronome
  module Models
    class InvoiceRetrieveResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::Invoice]
      required :data, -> { Metronome::Models::Invoice }
    end
  end
end
