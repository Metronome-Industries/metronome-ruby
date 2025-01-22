# frozen_string_literal: true

module Metronome
  module Models
    class UsageIngestParams < Metronome::BaseModel
      # @!attribute usage
      #
      #   @return [Array<Metronome::Models::UsageIngestParams::Usage>]
      required :usage, -> { Metronome::ArrayOf[Metronome::Models::UsageIngestParams::Usage] }

      # @!parse
      #   # @param usage [Array<Metronome::Models::UsageIngestParams::Usage>]
      #   #
      #   def initialize(usage:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      # ```ruby
      # usage => {
      #   customer_id: String,
      #   event_type: String,
      #   timestamp: String,
      #   transaction_id: String,
      #   properties: -> { Metronome::HashOf[Metronome::Unknown] === _1 }
      # }
      # ```
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

        # @!attribute [r] properties
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :properties, Metronome::HashOf[Metronome::Unknown]

        # @!parse
        #   # @return [Hash{Symbol=>Object}]
        #   attr_writer :properties

        # @!parse
        #   # @param customer_id [String]
        #   # @param event_type [String]
        #   # @param timestamp [String]
        #   # @param transaction_id [String]
        #   # @param properties [Hash{Symbol=>Object}]
        #   #
        #   def initialize(customer_id:, event_type:, timestamp:, transaction_id:, properties: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
