# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class RateCardRetrieveRateScheduleResponse < Metronome::BaseModel
        # @!attribute data
        #   @return [Array<Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data>]
        required :data,
                 Metronome::ArrayOf.new(
                   -> {
                     Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data
                   }
                 )

        # @!attribute next_page
        #   @return [String]
        optional :next_page, String

        class Data < Metronome::BaseModel
          # @!attribute entitled
          #   @return [Boolean]
          required :entitled, Metronome::BooleanModel

          # @!attribute product_id
          #   @return [String]
          required :product_id, String

          # @!attribute product_name
          #   @return [String]
          required :product_name, String

          # @!attribute product_tags
          #   @return [Array<String>]
          required :product_tags, Metronome::ArrayOf.new(String)

          # @!attribute rate
          #   @return [Metronome::Models::Rate]
          required :rate, -> { Metronome::Models::Rate }

          # @!attribute starting_at
          #   @return [Time]
          required :starting_at, Time

          # @!attribute commit_rate
          #   A distinct rate on the rate card. You can choose to use this rate rather than list rate when consuming a credit or commit.
          #   @return [Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate]
          optional :commit_rate,
                   -> { Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate }

          # @!attribute ending_before
          #   @return [Time]
          optional :ending_before, Time

          # @!attribute pricing_group_values
          #   @return [Hash]
          optional :pricing_group_values, Hash

          class CommitRate < Metronome::BaseModel
            # @!attribute rate_type
            #   @return [Symbol, Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate::RateType]
            required :rate_type,
                     enum: -> {
                       Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate::RateType
                     }

            # @!attribute price
            #   Commit rate price. For FLAT rate_type, this must be >=0.
            #   @return [Float]
            optional :price, Float

            # @!attribute tiers
            #   Only set for TIERED rate_type.
            #   @return [Array<Metronome::Models::Tier>]
            optional :tiers, Metronome::ArrayOf.new(-> { Metronome::Models::Tier })

            class RateType < Metronome::Enum
              FLAT = :FLAT
              FLAT = :flat
              PERCENTAGE = :PERCENTAGE
              PERCENTAGE = :percentage
              SUBSCRIPTION = :SUBSCRIPTION
              SUBSCRIPTION = :subscription
              TIERED = :TIERED
              TIERED = :tiered
              CUSTOM = :CUSTOM
              CUSTOM = :custom
            end

            # @!parse
            #   # Create a new instance of CommitRate from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :rate_type
            #   #   @option data [Float, nil] :price Commit rate price. For FLAT rate_type, this must be >=0.
            #   #   @option data [Array<Object>, nil] :tiers Only set for TIERED rate_type.
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of Data from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Hash] :entitled
          #   #   @option data [String] :product_id
          #   #   @option data [String] :product_name
          #   #   @option data [Array<String>] :product_tags
          #   #   @option data [Object] :rate
          #   #   @option data [String] :starting_at
          #   #   @option data [Object, nil] :commit_rate A distinct rate on the rate card. You can choose to use this rate rather than
          #   #     list rate when consuming a credit or commit.
          #   #   @option data [String, nil] :ending_before
          #   #   @option data [Hash, nil] :pricing_group_values
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of RateCardRetrieveRateScheduleResponse from a Hash of raw
        #   #   data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Array<Object>] :data
        #   #   @option data [String, nil] :next_page
        #   def initialize(data = {}) = super
      end
    end
  end
end
