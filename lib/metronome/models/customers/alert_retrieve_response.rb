# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class AlertRetrieveResponse < Metronome::BaseModel
        # @!attribute data
        #   @return [Metronome::Models::Customers::CustomerAlert]
        required :data, -> { Metronome::Models::Customers::CustomerAlert }

        # @!parse
        #   # Create a new instance of AlertRetrieveResponse from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Object] :data
        #   def initialize(data = {}) = super
      end
    end
  end
end
