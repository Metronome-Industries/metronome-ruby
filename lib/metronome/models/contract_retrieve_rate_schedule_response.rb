# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # contract_retrieve_rate_schedule_response => {
    #   data: -> { Metronome::ArrayOf[Metronome::Models::ContractRetrieveRateScheduleResponse::Data] === _1 },
    #   next_page: String
    # }
    # ```
    class ContractRetrieveRateScheduleResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Array<Metronome::Models::ContractRetrieveRateScheduleResponse::Data>]
      required :data, -> { Metronome::ArrayOf[Metronome::Models::ContractRetrieveRateScheduleResponse::Data] }

      # @!attribute next_page
      #
      #   @return [String, nil]
      optional :next_page, String, nil?: true

      # @!parse
      #   # @param data [Array<Metronome::Models::ContractRetrieveRateScheduleResponse::Data>]
      #   # @param next_page [String, nil]
      #   #
      #   def initialize(data:, next_page: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   entitled: Metronome::BooleanModel,
      #   list_rate: Metronome::Models::Rate,
      #   product_custom_fields: -> { Metronome::HashOf[String] === _1 },
      #   product_id: String,
      #   product_name: String,
      #   **_
      # }
      # ```
      class Data < Metronome::BaseModel
        # @!attribute entitled
        #
        #   @return [Boolean]
        required :entitled, Metronome::BooleanModel

        # @!attribute list_rate
        #
        #   @return [Metronome::Models::Rate]
        required :list_rate, -> { Metronome::Models::Rate }

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

        # @!attribute rate_card_id
        #
        #   @return [String]
        required :rate_card_id, String

        # @!attribute starting_at
        #
        #   @return [Time]
        required :starting_at, Time

        # @!attribute [r] commit_rate
        #   A distinct rate on the rate card. You can choose to use this rate rather than
        #     list rate when consuming a credit or commit.
        #
        #   @return [Metronome::Models::ContractRetrieveRateScheduleResponse::Data::CommitRate, nil]
        optional :commit_rate,
                 -> {
                   Metronome::Models::ContractRetrieveRateScheduleResponse::Data::CommitRate
                 }

        # @!parse
        #   # @return [Metronome::Models::ContractRetrieveRateScheduleResponse::Data::CommitRate]
        #   attr_writer :commit_rate

        # @!attribute [r] ending_before
        #
        #   @return [Time, nil]
        optional :ending_before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :ending_before

        # @!attribute [r] override_rate
        #
        #   @return [Metronome::Models::Rate, nil]
        optional :override_rate, -> { Metronome::Models::Rate }

        # @!parse
        #   # @return [Metronome::Models::Rate]
        #   attr_writer :override_rate

        # @!attribute [r] pricing_group_values
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :pricing_group_values, Metronome::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :pricing_group_values

        # @!parse
        #   # @param entitled [Boolean]
        #   # @param list_rate [Metronome::Models::Rate]
        #   # @param product_custom_fields [Hash{Symbol=>String}]
        #   # @param product_id [String]
        #   # @param product_name [String]
        #   # @param product_tags [Array<String>]
        #   # @param rate_card_id [String]
        #   # @param starting_at [Time]
        #   # @param commit_rate [Metronome::Models::ContractRetrieveRateScheduleResponse::Data::CommitRate]
        #   # @param ending_before [Time]
        #   # @param override_rate [Metronome::Models::Rate]
        #   # @param pricing_group_values [Hash{Symbol=>String}]
        #   #
        #   def initialize(
        #     entitled:,
        #     list_rate:,
        #     product_custom_fields:,
        #     product_id:,
        #     product_name:,
        #     product_tags:,
        #     rate_card_id:,
        #     starting_at:,
        #     commit_rate: nil,
        #     ending_before: nil,
        #     override_rate: nil,
        #     pricing_group_values: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # commit_rate => {
        #   rate_type: Metronome::Models::ContractRetrieveRateScheduleResponse::Data::CommitRate::RateType,
        #   price: Float,
        #   tiers: -> { Metronome::ArrayOf[Metronome::Models::Tier] === _1 }
        # }
        # ```
        class CommitRate < Metronome::BaseModel
          # @!attribute rate_type
          #
          #   @return [Symbol, Metronome::Models::ContractRetrieveRateScheduleResponse::Data::CommitRate::RateType]
          required :rate_type,
                   enum: -> {
                     Metronome::Models::ContractRetrieveRateScheduleResponse::Data::CommitRate::RateType
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
          #   @return [Array<Metronome::Models::Tier>, nil]
          optional :tiers, -> { Metronome::ArrayOf[Metronome::Models::Tier] }

          # @!parse
          #   # @return [Array<Metronome::Models::Tier>]
          #   attr_writer :tiers

          # @!parse
          #   # A distinct rate on the rate card. You can choose to use this rate rather than
          #   #   list rate when consuming a credit or commit.
          #   #
          #   # @param rate_type [Symbol, Metronome::Models::ContractRetrieveRateScheduleResponse::Data::CommitRate::RateType]
          #   # @param price [Float]
          #   # @param tiers [Array<Metronome::Models::Tier>]
          #   #
          #   def initialize(rate_type:, price: nil, tiers: nil, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case rate_type
          # in :FLAT
          #   # ...
          # in :PERCENTAGE
          #   # ...
          # in :SUBSCRIPTION
          #   # ...
          # in :TIERED
          #   # ...
          # in :CUSTOM
          #   # ...
          # end
          # ```
          class RateType < Metronome::Enum
            FLAT = :FLAT
            PERCENTAGE = :PERCENTAGE
            SUBSCRIPTION = :SUBSCRIPTION
            TIERED = :TIERED
            CUSTOM = :CUSTOM

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end
      end
    end
  end
end
