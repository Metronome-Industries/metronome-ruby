# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class RateAddManyParams < MetronomeSDK::BaseModel
            # @!parse
            #   extend MetronomeSDK::RequestParameters::Converter
            include MetronomeSDK::RequestParameters

            # @!attribute rate_card_id
            #
            #   @return [String]
            required :rate_card_id, String

            # @!attribute rates
            #
            #   @return [Array<MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate>]
            required :rates,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate] }

            # @!parse
            #   # @param rate_card_id [String]
            #   # @param rates [Array<MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate>]
            #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
            #   #
            #   def initialize(rate_card_id:, rates:, request_options: {}, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class Rate < MetronomeSDK::BaseModel
              # @!attribute entitled
              #
              #   @return [Boolean]
              required :entitled, MetronomeSDK::BooleanModel

              # @!attribute product_id
              #   ID of the product to add a rate for
              #
              #   @return [String]
              required :product_id, String

              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate::RateType]
              required :rate_type,
                       enum: -> { MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate::RateType }

              # @!attribute starting_at
              #   inclusive effective date
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute [r] commit_rate
              #   A distinct rate on the rate card. You can choose to use this rate rather than
              #     list rate when consuming a credit or commit.
              #
              #   @return [MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate::CommitRate, nil]
              optional :commit_rate,
                       -> { MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate::CommitRate }

              # @!parse
              #   # @return [MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate::CommitRate]
              #   attr_writer :commit_rate

              # @!attribute [r] credit_type_id
              #   "The Metronome ID of the credit type to associate with price, defaults to USD
              #     (cents) if not passed. Used by all rate_types except type PERCENTAGE. PERCENTAGE
              #     rates use the credit type of associated rates."
              #
              #   @return [String, nil]
              optional :credit_type_id, String

              # @!parse
              #   # @return [String]
              #   attr_writer :credit_type_id

              # @!attribute [r] custom_rate
              #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
              #     processors.
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :custom_rate, MetronomeSDK::HashOf[MetronomeSDK::Unknown]

              # @!parse
              #   # @return [Hash{Symbol=>Object}]
              #   attr_writer :custom_rate

              # @!attribute [r] ending_before
              #   exclusive end date
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!parse
              #   # @return [Time]
              #   attr_writer :ending_before

              # @!attribute [r] is_prorated
              #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              #     set to true.
              #
              #   @return [Boolean, nil]
              optional :is_prorated, MetronomeSDK::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :is_prorated

              # @!attribute [r] price
              #   Default price. For FLAT and SUBSCRIPTION rate_type, this must be >=0. For
              #     PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this
              #     must be >=0 and <=1.
              #
              #   @return [Float, nil]
              optional :price, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :price

              # @!attribute [r] pricing_group_values
              #   Optional. List of pricing group key value pairs which will be used to calculate
              #     the price.
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :pricing_group_values, MetronomeSDK::HashOf[String]

              # @!parse
              #   # @return [Hash{Symbol=>String}]
              #   attr_writer :pricing_group_values

              # @!attribute [r] quantity
              #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!attribute [r] tiers
              #   Only set for TIERED rate_type.
              #
              #   @return [Array<MetronomeSDK::Models::Tier>, nil]
              optional :tiers, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Tier] }

              # @!parse
              #   # @return [Array<MetronomeSDK::Models::Tier>]
              #   attr_writer :tiers

              # @!attribute [r] use_list_prices
              #   Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed
              #     using list prices rather than the standard rates for this product on the
              #     contract.
              #
              #   @return [Boolean, nil]
              optional :use_list_prices, MetronomeSDK::BooleanModel

              # @!parse
              #   # @return [Boolean]
              #   attr_writer :use_list_prices

              # @!parse
              #   # @param entitled [Boolean]
              #   # @param product_id [String]
              #   # @param rate_type [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate::RateType]
              #   # @param starting_at [Time]
              #   # @param commit_rate [MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate::CommitRate]
              #   # @param credit_type_id [String]
              #   # @param custom_rate [Hash{Symbol=>Object}]
              #   # @param ending_before [Time]
              #   # @param is_prorated [Boolean]
              #   # @param price [Float]
              #   # @param pricing_group_values [Hash{Symbol=>String}]
              #   # @param quantity [Float]
              #   # @param tiers [Array<MetronomeSDK::Models::Tier>]
              #   # @param use_list_prices [Boolean]
              #   #
              #   def initialize(
              #     entitled:,
              #     product_id:,
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
              #     use_list_prices: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

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
              class RateType < MetronomeSDK::Enum
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

              class CommitRate < MetronomeSDK::BaseModel
                # @!attribute rate_type
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate::CommitRate::RateType]
                required :rate_type,
                         enum: -> { MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate::CommitRate::RateType }

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
                #   @return [Array<MetronomeSDK::Models::Tier>, nil]
                optional :tiers, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Tier] }

                # @!parse
                #   # @return [Array<MetronomeSDK::Models::Tier>]
                #   attr_writer :tiers

                # @!parse
                #   # A distinct rate on the rate card. You can choose to use this rate rather than
                #   #   list rate when consuming a credit or commit.
                #   #
                #   # @param rate_type [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateAddManyParams::Rate::CommitRate::RateType]
                #   # @param price [Float]
                #   # @param tiers [Array<MetronomeSDK::Models::Tier>]
                #   #
                #   def initialize(rate_type:, price: nil, tiers: nil, **) = super

                # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

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
                class RateType < MetronomeSDK::Enum
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
    end
  end
end
