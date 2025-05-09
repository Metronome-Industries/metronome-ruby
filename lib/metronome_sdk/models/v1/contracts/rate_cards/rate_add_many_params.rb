# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          # @see MetronomeSDK::Resources::V1::Contracts::RateCards::Rates#add_many
          class RateAddManyParams < MetronomeSDK::Internal::Type::BaseModel
            extend MetronomeSDK::Internal::Type::RequestParameters::Converter
            include MetronomeSDK::Internal::Type::RequestParameters

            # @!attribute rate_card_id
            #
            #   @return [String]
            required :rate_card_id, String

            # @!attribute rates
            #
            #   @return [Array<MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate>]
            required :rates,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate]
                     }

            # @!method initialize(rate_card_id:, rates:, request_options: {})
            #   @param rate_card_id [String]
            #   @param rates [Array<MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate>]
            #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

            class Rate < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute entitled
              #
              #   @return [Boolean]
              required :entitled, MetronomeSDK::Internal::Type::Boolean

              # @!attribute product_id
              #   ID of the product to add a rate for
              #
              #   @return [String]
              required :product_id, String

              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::RateType]
              required :rate_type,
                       enum: -> { MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::RateType }

              # @!attribute starting_at
              #   inclusive effective date
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute commit_rate
              #   A distinct rate on the rate card. You can choose to use this rate rather than
              #   list rate when consuming a credit or commit.
              #
              #   @return [MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::CommitRate, nil]
              optional :commit_rate,
                       -> {
                         MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::CommitRate
                       }

              # @!attribute credit_type_id
              #   "The Metronome ID of the credit type to associate with price, defaults to USD
              #   (cents) if not passed. Used by all rate_types except type PERCENTAGE. PERCENTAGE
              #   rates use the credit type of associated rates."
              #
              #   @return [String, nil]
              optional :credit_type_id, String

              # @!attribute custom_rate
              #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
              #   processors.
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :custom_rate,
                       MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

              # @!attribute ending_before
              #   exclusive end date
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!attribute is_prorated
              #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              #   set to true.
              #
              #   @return [Boolean, nil]
              optional :is_prorated, MetronomeSDK::Internal::Type::Boolean

              # @!attribute price
              #   Default price. For FLAT and SUBSCRIPTION rate_type, this must be >=0. For
              #   PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this
              #   must be >=0 and <=1.
              #
              #   @return [Float, nil]
              optional :price, Float

              # @!attribute pricing_group_values
              #   Optional. List of pricing group key value pairs which will be used to calculate
              #   the price.
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute quantity
              #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!attribute tiers
              #   Only set for TIERED rate_type.
              #
              #   @return [Array<MetronomeSDK::Tier>, nil]
              optional :tiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Tier] }

              # @!attribute use_list_prices
              #   Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed
              #   using list prices rather than the standard rates for this product on the
              #   contract.
              #
              #   @return [Boolean, nil]
              optional :use_list_prices, MetronomeSDK::Internal::Type::Boolean

              # @!method initialize(entitled:, product_id:, rate_type:, starting_at:, commit_rate: nil, credit_type_id: nil, custom_rate: nil, ending_before: nil, is_prorated: nil, price: nil, pricing_group_values: nil, quantity: nil, tiers: nil, use_list_prices: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate} for more
              #   details.
              #
              #   @param entitled [Boolean]
              #
              #   @param product_id [String] ID of the product to add a rate for
              #
              #   @param rate_type [Symbol, MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::RateType]
              #
              #   @param starting_at [Time] inclusive effective date
              #
              #   @param commit_rate [MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::CommitRate] A distinct rate on the rate card. You can choose to use this rate rather than li
              #
              #   @param credit_type_id [String] "The Metronome ID of the credit type to associate with price, defaults to USD (c
              #
              #   @param custom_rate [Hash{Symbol=>Object}] Only set for CUSTOM rate_type. This field is interpreted by custom rate processo
              #
              #   @param ending_before [Time] exclusive end date
              #
              #   @param is_prorated [Boolean] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              #
              #   @param price [Float] Default price. For FLAT and SUBSCRIPTION rate_type, this must be >=0. For PERCEN
              #
              #   @param pricing_group_values [Hash{Symbol=>String}] Optional. List of pricing group key value pairs which will be used to calculate
              #
              #   @param quantity [Float] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              #
              #   @param tiers [Array<MetronomeSDK::Tier>] Only set for TIERED rate_type.
              #
              #   @param use_list_prices [Boolean] Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed

              # @see MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                FLAT = :FLAT
                PERCENTAGE = :PERCENTAGE
                SUBSCRIPTION = :SUBSCRIPTION
                TIERED = :TIERED
                CUSTOM = :CUSTOM

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate#commit_rate
              class CommitRate < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute rate_type
                #
                #   @return [Symbol, MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::CommitRate::RateType]
                required :rate_type,
                         enum: -> {
                           MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::CommitRate::RateType
                         }

                # @!attribute price
                #   Commit rate price. For FLAT rate_type, this must be >=0.
                #
                #   @return [Float, nil]
                optional :price, Float

                # @!attribute tiers
                #   Only set for TIERED rate_type.
                #
                #   @return [Array<MetronomeSDK::Tier>, nil]
                optional :tiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Tier] }

                # @!method initialize(rate_type:, price: nil, tiers: nil)
                #   A distinct rate on the rate card. You can choose to use this rate rather than
                #   list rate when consuming a credit or commit.
                #
                #   @param rate_type [Symbol, MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::CommitRate::RateType]
                #
                #   @param price [Float] Commit rate price. For FLAT rate_type, this must be >=0.
                #
                #   @param tiers [Array<MetronomeSDK::Tier>] Only set for TIERED rate_type.

                # @see MetronomeSDK::V1::Contracts::RateCards::RateAddManyParams::Rate::CommitRate#rate_type
                module RateType
                  extend MetronomeSDK::Internal::Type::Enum

                  FLAT = :FLAT
                  PERCENTAGE = :PERCENTAGE
                  SUBSCRIPTION = :SUBSCRIPTION
                  TIERED = :TIERED
                  CUSTOM = :CUSTOM

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end
          end
        end
      end
    end
  end
end
