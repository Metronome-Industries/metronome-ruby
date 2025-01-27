# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      # @example
      # ```ruby
      # rate_card_retrieve_rate_schedule_response => {
      #   data: -> { Metronome::ArrayOf[Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data] === _1 },
      #   next_page: String
      # }
      # ```
      class RateCardRetrieveRateScheduleResponse < Metronome::BaseModel
        # @!attribute data
        #
        #   @return [Array<Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data>]
        required :data,
                 -> {
                   Metronome::ArrayOf[Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data]
                 }

        # @!attribute next_page
        #
        #   @return [String, nil]
        optional :next_page, String, nil?: true

        # @!parse
        #   # @param data [Array<Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data>]
        #   # @param next_page [String, nil]
        #   #
        #   def initialize(data:, next_page: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # data => {
        #   entitled: Metronome::BooleanModel,
        #   product_custom_fields: -> { Metronome::HashOf[String] === _1 },
        #   product_id: String,
        #   product_name: String,
        #   product_tags: -> { Metronome::ArrayOf[String] === _1 },
        #   **_
        # }
        # ```
        class Data < Metronome::BaseModel
          # @!attribute entitled
          #
          #   @return [Boolean]
          required :entitled, Metronome::BooleanModel

          # @!attribute product_custom_fields
          #
          #   @return [Hash{Symbol=>String}]
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

          # @!attribute [r] commit_rate
          #   A distinct rate on the rate card. You can choose to use this rate rather than
          #     list rate when consuming a credit or commit.
          #
          #   @return [Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate, nil]
          optional :commit_rate,
                   -> { Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate }

          # @!parse
          #   # @return [Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate]
          #   attr_writer :commit_rate

          # @!attribute [r] ending_before
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :ending_before

          # @!attribute [r] pricing_group_values
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :pricing_group_values, Metronome::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :pricing_group_values

          # @!parse
          #   # @param entitled [Boolean]
          #   # @param product_custom_fields [Hash{Symbol=>String}]
          #   # @param product_id [String]
          #   # @param product_name [String]
          #   # @param product_tags [Array<String>]
          #   # @param rate [Metronome::Models::Rate]
          #   # @param starting_at [Time]
          #   # @param commit_rate [Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate]
          #   # @param ending_before [Time]
          #   # @param pricing_group_values [Hash{Symbol=>String}]
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

          # @example
          # ```ruby
          # commit_rate => {
          #   rate_type: Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate::RateType,
          #   price: Float,
          #   tiers: -> { Metronome::ArrayOf[Metronome::Models::Tier] === _1 }
          # }
          # ```
          class CommitRate < Metronome::BaseModel
            # @!attribute rate_type
            #
            #   @return [Symbol, Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate::RateType]
            required :rate_type,
                     enum: -> {
                       Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate::RateType
                     }

            # @!attribute [r] price
            #   Commit rate price. For FLAT rate_type, this must be >=0.
            #
            #   @return [Float, nil]
            optional :price, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :price

            # @!attribute [r] tiers
            #   Only set for TIERED rate_type.
            #
            #   @return [Array<Metronome::Models::Tier>]
            optional :tiers, -> { Metronome::ArrayOf[Metronome::Models::Tier] }

            # @!parse
            #   # @return [Array<Metronome::Models::Tier>]
            #   attr_writer :tiers

            # @!parse
            #   # A distinct rate on the rate card. You can choose to use this rate rather than
            #   #   list rate when consuming a credit or commit.
            #   #
            #   # @param rate_type [Symbol, Metronome::Models::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate::RateType]
            #   # @param price [Float]
            #   # @param tiers [Array<Metronome::Models::Tier>]
            #   #
            #   def initialize(rate_type:, price: nil, tiers: nil, **) = super

            # def initialize: (Hash | Metronome::BaseModel) -> void

            # @example
            # ```ruby
            # case rate_type
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
