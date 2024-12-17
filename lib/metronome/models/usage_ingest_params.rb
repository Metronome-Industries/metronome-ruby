# frozen_string_literal: true

module Metronome
  module Models
    class UsageIngestParams < Metronome::BaseModel
      # @!attribute usage
      #
      #   @return [Array<Metronome::Models::UsageIngestParams::Usage>]
      required :usage, Metronome::ArrayOf[-> { Metronome::Models::UsageIngestParams::Usage }]

      # @!parse
      #   # @param usage [Array<Metronome::Models::UsageIngestParams::Usage>]
      #   #
      #   def initialize(usage:) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      class Usage < Metronome::BaseModel
        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute event_type
        #
        #   @return [String]
        required :event_type, String

        # @!attribute timestamp
        #   RFC 3339 formatted
        #
        #   @return [String]
        required :timestamp, String

        # @!attribute transaction_id
        #
        #   @return [String]
        required :transaction_id, String

        # @!attribute properties
        #
        #   @return [Hash]
        optional :properties, Hash

        # @!parse
        #   # @param customer_id [String]
        #   #
        #   # @param event_type [String]
        #   #
        #   # @param timestamp [String] RFC 3339 formatted
        #   #
        #   # @param transaction_id [String]
        #   #
        #   # @param properties [Hash, nil]
        #   #
        #   def initialize(customer_id:, event_type:, timestamp:, transaction_id:, properties: nil) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
