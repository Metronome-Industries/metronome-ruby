# frozen_string_literal: true

module Metronome
  module Models
    class InvoiceVoidResponse < Metronome::BaseModel
      # @!attribute data
      #   @return [Metronome::Models::InvoiceVoidResponse::Data]
      optional :data, -> { Metronome::Models::InvoiceVoidResponse::Data }

      class Data < Metronome::BaseModel
        # @!attribute id
        #   @return [String]
        required :id, String

        # @!parse
        #   # Create a new instance of Data from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of InvoiceVoidResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Object, nil] :data
      #   def initialize(data = {}) = super
    end
  end
end
