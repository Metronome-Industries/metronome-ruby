# frozen_string_literal: true

module Metronome
  module Models
    class CustomerSetNameResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::Customer]
      required :data, -> { Metronome::Models::Customer }

      # Create a new instance of CustomerSetNameResponse from a Hash of raw data.
      #
      # @overload initialize(data: nil)
      # @param data [Object]
      def initialize(data = {})
        super
      end
    end
  end
end
