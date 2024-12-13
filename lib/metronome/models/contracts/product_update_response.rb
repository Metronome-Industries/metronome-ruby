# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class ProductUpdateResponse < Metronome::BaseModel
        # @!attribute data
        #   @return [Metronome::Models::ID]
        required :data, -> { Metronome::Models::ID }

        # @!parse
        #   # Create a new instance of ProductUpdateResponse from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Object] :data
        #   def initialize(data = {}) = super
      end
    end
  end
end
