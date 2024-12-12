# frozen_string_literal: true

module Metronome
  module Models
    class UsageIngestParams < Metronome::BaseModel
      # @!attribute [rw] usage
      #   @return [Array<Metronome::Models::UsageIngestParams::Usage>]
      required :usage, Metronome::ArrayOf.new(-> { Metronome::Models::UsageIngestParams::Usage })

      class Usage < Metronome::BaseModel
        # @!attribute [rw] customer_id
        #   @return [String]
        required :customer_id, String

        # @!attribute [rw] event_type
        #   @return [String]
        required :event_type, String

        # @!attribute [rw] timestamp
        #   RFC 3339 formatted
        #   @return [String]
        required :timestamp, String

        # @!attribute [rw] transaction_id
        #   @return [String]
        required :transaction_id, String

        # @!attribute [rw] properties
        #   @return [Hash]
        optional :properties, Hash

        # @!parse
        #   # Create a new instance of Usage from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :customer_id
        #   #   @option data [String] :event_type
        #   #   @option data [String] :timestamp RFC 3339 formatted
        #   #   @option data [String] :transaction_id
        #   #   @option data [Hash, nil] :properties
        #   def initialize(data = {}) = super
      end
    end
  end
end
