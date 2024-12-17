# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      module RateCards
        class RateAddParams < Metronome::BaseModel
          # @!attribute entitled
          #
          #   @return [Boolean]
          required :entitled, Metronome::BooleanModel

          # @!attribute product_id
          #   ID of the product to add a rate for
          #
          #   @return [String]
          required :product_id, String

          # @!attribute rate_card_id
          #   ID of the rate card to update
          #
          #   @return [String]
          required :rate_card_id, String

          # @!attribute rate_type
          #
          #   @return [Symbol, Metronome::Models::Contracts::RateCards::RateAddParams::RateType]
          required :rate_type, enum: -> { Metronome::Models::Contracts::RateCards::RateAddParams::RateType }

          # @!attribute starting_at
          #   inclusive effective date
          #
          #   @return [Time]
          required :starting_at, Time

          # @!attribute commit_rate
          #   A distinct rate on the rate card. You can choose to use this rate rather than list rate when consuming a credit or commit.
          #
          #   @return [Metronome::Models::Contracts::RateCards::RateAddParams::CommitRate]
          optional :commit_rate, -> { Metronome::Models::Contracts::RateCards::RateAddParams::CommitRate }

          # @!attribute credit_type_id
          #   The Metronome ID of the credit type to associate with price, defaults to USD (cents) if not passed. Used by all rate_types except type PERCENTAGE. PERCENTAGE rates use the credit type of associated rates.
          #
          #   @return [String]
          optional :credit_type_id, String

          # @!attribute custom_rate
          #   Only set for CUSTOM rate_type. This field is interpreted by custom rate processors.
          #
          #   @return [Hash]
          optional :custom_rate, Hash

          # @!attribute ending_before
          #   exclusive end date
          #
          #   @return [Time]
          optional :ending_before, Time

          # @!attribute is_prorated
          #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be set to true.
          #
          #   @return [Boolean]
          optional :is_prorated, Metronome::BooleanModel

          # @!attribute price
          #   Default price. For FLAT and SUBSCRIPTION rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
          #
          #   @return [Float]
          optional :price, Float

          # @!attribute pricing_group_values
          #   Optional. List of pricing group key value pairs which will be used to calculate the price.
          #
          #   @return [Hash]
          optional :pricing_group_values, Hash

          # @!attribute quantity
          #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
          #
          #   @return [Float]
          optional :quantity, Float

          # @!attribute tiers
          #   Only set for TIERED rate_type.
          #
          #   @return [Array<Metronome::Models::Tier>]
          optional :tiers, Metronome::ArrayOf.new(-> { Metronome::Models::Tier })

          # @!attribute use_list_prices
          #   Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed using list prices rather than the standard rates for this product on the contract.
          #
          #   @return [Boolean]
          optional :use_list_prices, Metronome::BooleanModel

          # @!parse
          #   # @param entitled [Boolean]
          #   #
          #   # @param product_id [String] ID of the product to add a rate for
          #   #
          #   # @param rate_card_id [String] ID of the rate card to update
          #   #
          #   # @param rate_type [String]
          #   #
          #   # @param starting_at [String] inclusive effective date
          #   #
          #   # @param commit_rate [Metronome::Models::Contracts::RateCards::RateAddParams::CommitRate, nil] A distinct rate on the rate card. You can choose to use this rate rather than
          #   #   list rate when consuming a credit or commit.
          #   #
          #   # @param credit_type_id [String, nil] The Metronome ID of the credit type to associate with price, defaults to USD
          #   #   (cents) if not passed. Used by all rate_types except type PERCENTAGE. PERCENTAGE
          #   #   rates use the credit type of associated rates.
          #   #
          #   # @param custom_rate [Hash, nil] Only set for CUSTOM rate_type. This field is interpreted by custom rate
          #   #   processors.
          #   #
          #   # @param ending_before [String, nil] exclusive end date
          #   #
          #   # @param is_prorated [Boolean, nil] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
          #   #   set to true.
          #   #
          #   # @param price [Float, nil] Default price. For FLAT and SUBSCRIPTION rate_type, this must be >=0. For
          #   #   PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this
          #   #   must be >=0 and <=1.
          #   #
          #   # @param pricing_group_values [Hash, nil] Optional. List of pricing group key value pairs which will be used to calculate
          #   #   the price.
          #   #
          #   # @param quantity [Float, nil] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
          #   #
          #   # @param tiers [Array<Metronome::Models::Tier>, nil] Only set for TIERED rate_type.
          #   #
          #   # @param use_list_prices [Boolean, nil] Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed
          #   #   using list prices rather than the standard rates for this product on the
          #   #   contract.
          #   #
          #   def initialize(
          #     entitled:,
          #     product_id:,
          #     rate_card_id:,
          #     rate_type:,
          #     starting_at:,
          #     commit_rate: nil,
          #     credit_type_id: nil,
          #     custom_rate: nil,
          #     ending_before: nil,
          #     is_prorated: nil,
          #     price: nil,
          #     pricing_group_values: nil,
          #     quantity: nil,
          #     tiers: nil,
          #     use_list_prices: nil
          #   )
          #     super
          #   end

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
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
          end

          class CommitRate < Metronome::BaseModel
            # @!attribute rate_type
            #
            #   @return [Symbol, Metronome::Models::Contracts::RateCards::RateAddParams::CommitRate::RateType]
            required :rate_type,
                     enum: -> { Metronome::Models::Contracts::RateCards::RateAddParams::CommitRate::RateType }

            # @!attribute price
            #   Commit rate price. For FLAT rate_type, this must be >=0.
            #
            #   @return [Float]
            optional :price, Float

            # @!attribute tiers
            #   Only set for TIERED rate_type.
            #
            #   @return [Array<Metronome::Models::Tier>]
            optional :tiers, Metronome::ArrayOf.new(-> { Metronome::Models::Tier })

            # @!parse
            #   # A distinct rate on the rate card. You can choose to use this rate rather than
            #   #   list rate when consuming a credit or commit.
            #   #
            #   # @param rate_type [String]
            #   #
            #   # @param price [Float, nil] Commit rate price. For FLAT rate_type, this must be >=0.
            #   #
            #   # @param tiers [Array<Metronome::Models::Tier>, nil] Only set for TIERED rate_type.
            #   #
            #   def initialize(rate_type:, price: nil, tiers: nil) = super

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
            end
          end
        end
      end
    end
  end
end
