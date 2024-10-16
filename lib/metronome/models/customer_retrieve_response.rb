# frozen_string_literal: true

module Metronome
  module Models
    class CustomerRetrieveResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::CustomerDetail]
      required :data, -> { Metronome::Models::CustomerDetail }

      # Create a new instance of CustomerRetrieveResponse from a Hash of raw data.
      #
      # @overload initialize(data: nil)
      # @param data [Object]
      def initialize(data = {})
        super
      end
    end
  end
end
