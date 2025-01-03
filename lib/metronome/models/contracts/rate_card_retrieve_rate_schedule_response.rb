# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class RateCardRetrieveRateScheduleResponse < Metronome::BaseModel
        # @!attribute data
        #
        #   @return [Array<Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data>]
        required :data,
                 Metronome::ArrayOf[-> {
                   Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data
                 }]

        # @!attribute next_page
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!parse
        #   # @param data [Array<Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data>]
        #   # @param next_page [String, nil]
        #   #
        #   def initialize(data:, next_page: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        class Data < Metronome::BaseModel
          # @!attribute entitled
          #
          #   @return [Boolean]
          required :entitled, Metronome::BooleanModel

          # @!attribute product_custom_fields
          #
          #   @return [Hash{Symbol => String}]
          required :product_custom_fields, Metronome::HashOf[String]

          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute product_name
          #
          #   @return [String]
          required :product_name, String

          # @!attribute product_tags
          #
          #   @return [Array<String>]
          required :product_tags, Metronome::ArrayOf[String]

          # @!attribute rate
          #
          #   @return [Metronome::Models::Rate]
          required :rate, -> { Metronome::Models::Rate }

          # @!attribute starting_at
          #
          #   @return [Time]
          required :starting_at, Time

          # @!attribute commit_rate
          #   A distinct rate on the rate card. You can choose to use this rate rather than list rate when consuming a credit or commit.
          #
          #   @return [Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate]
          optional :commit_rate,
                   -> { Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate }

          # @!attribute ending_before
          #
          #   @return [Time]
          optional :ending_before, Time

          # @!attribute pricing_group_values
          #
          #   @return [Hash{Symbol => String}]
          optional :pricing_group_values, Metronome::HashOf[String]

          # @!parse
          #   # @param entitled [Boolean]
          #   #
          #   # @param product_custom_fields [Hash{Symbol => String}]
          #   #
          #   # @param product_id [String]
          #   #
          #   # @param product_name [String]
          #   #
          #   # @param product_tags [Array<String>]
          #   #
          #   # @param rate [Metronome::Models::Rate]
          #   #
          #   # @param starting_at [String]
          #   #
          #   # @param commit_rate [Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate] A distinct rate on the rate card. You can choose to use this rate rather than
          #   #   list rate when consuming a credit or commit.
          #   #
          #   # @param ending_before [String]
          #   #
          #   # @param pricing_group_values [Hash{Symbol => String}]
          #   #
          #   def initialize(
          #     entitled:,
          #     product_custom_fields:,
          #     product_id:,
          #     product_name:,
          #     product_tags:,
          #     rate:,
          #     starting_at:,
          #     commit_rate: nil,
          #     ending_before: nil,
          #     pricing_group_values: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Metronome::BaseModel) -> void

          class CommitRate < Metronome::BaseModel
            # @!attribute rate_type
            #
            #   @return [Symbol, Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate::RateType]
            required :rate_type,
                     enum: -> {
                       Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate::RateType
                     }

            # @!attribute price
            #   Commit rate price. For FLAT rate_type, this must be >=0.
            #
            #   @return [Float]
            optional :price, Float

            # @!attribute tiers
            #   Only set for TIERED rate_type.
            #
            #   @return [Array<Metronome::Models::Tier>]
            optional :tiers, Metronome::ArrayOf[-> { Metronome::Models::Tier }]

            # @!parse
            #   # A distinct rate on the rate card. You can choose to use this rate rather than
            #   #   list rate when consuming a credit or commit.
            #   #
            #   # @param rate_type [String]
            #   #
            #   # @param price [Float] Commit rate price. For FLAT rate_type, this must be >=0.
            #   #
            #   # @param tiers [Array<Metronome::Models::Tier>] Only set for TIERED rate_type.
            #   #
            #   def initialize(rate_type:, price: nil, tiers: nil, **) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void

            # @example
            #
            # ```ruby
            # case enum
            # in :FLAT
            #   # ...
            # in :flat
            #   # ...
            # in :PERCENTAGE
            #   # ...
            # in :percentage
            #   # ...
            # in :SUBSCRIPTION
            #   # ...
            # in ...
            #   #...
            # end
            # ```
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

              finalize!
            end
          end
        end
      end
    end
  end
end
