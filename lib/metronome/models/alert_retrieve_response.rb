# frozen_string_literal: true

module Metronome
  module Models
    class AlertRetrieveResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::CustomerAlert]
      required :data, -> { Metronome::Models::CustomerAlert }

      # Create a new instance of AlertRetrieveResponse from a Hash of raw data.
      #
      # @overload initialize(data: nil)
      # @param data [Object]
      def initialize(data = {})
        super
      end
    end
  end
end
