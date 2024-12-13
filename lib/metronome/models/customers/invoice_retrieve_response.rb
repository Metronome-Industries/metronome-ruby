# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class InvoiceRetrieveResponse < Metronome::BaseModel
        # @!attribute data
        #   @return [Metronome::Models::Customers::Invoice]
        required :data, -> { Metronome::Models::Customers::Invoice }

        # @!parse
        #   # Create a new instance of InvoiceRetrieveResponse from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Object] :data
        #   def initialize(data = {}) = super
      end
    end
  end
end
