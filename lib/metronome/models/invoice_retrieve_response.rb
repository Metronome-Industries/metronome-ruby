# frozen_string_literal: true

module Metronome
  module Models
    class InvoiceRetrieveResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::Invoice]
      required :data, -> { Metronome::Models::Invoice }

      # @!parse
      #   # Create a new instance of InvoiceRetrieveResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Object] :data
      #   def initialize(data = {}) = super
    end
  end
end
