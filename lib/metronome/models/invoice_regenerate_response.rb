# frozen_string_literal: true

module Metronome
  module Models
    class InvoiceRegenerateResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::InvoiceRegenerateResponse::Data]
      optional :data, -> { Metronome::Models::InvoiceRegenerateResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] id
        #   The new invoice id
        #   @return [String]
        required :id, String

        # @!parse
        #   # Create a new instance of Data from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id The new invoice id
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of InvoiceRegenerateResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Object, nil] :data
      #   def initialize(data = {}) = super
    end
  end
end
