# frozen_string_literal: true

module Metronome
  module Models
    class InvoiceRetrieveResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::Invoice]
      required :data, -> { Metronome::Models::Invoice }

      # Create a new instance of InvoiceRetrieveResponse from a Hash of raw data.
      #
      # @overload initialize(data: nil)
      # @param data [Object]
      def initialize(data = {})
        super
      end
    end
  end
end
