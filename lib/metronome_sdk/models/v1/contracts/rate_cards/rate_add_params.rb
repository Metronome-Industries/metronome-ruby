# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          # @see MetronomeSDK::Resources::V1::Contracts::RateCards::Rates#add
          class RateAddParams < MetronomeSDK::Internal::Type::BaseModel
            extend MetronomeSDK::Internal::Type::RequestParameters::Converter
            include MetronomeSDK::Internal::Type::RequestParameters

            # @!attribute entitled
            #
            #   @return [Boolean]
            required :entitled, MetronomeSDK::Internal::Type::Boolean

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
            #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateAddParams::RateType]
            required :rate_type, enum: -> { MetronomeSDK::V1::Contracts::RateCards::RateAddParams::RateType }

            # @!attribute starting_at
            #   inclusive effective date
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute billing_frequency
            #   Optional. Frequency to bill subscriptions with. Required for subscription type
            #   products with Flat rate.
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateAddParams::BillingFrequency, nil]
            optional :billing_frequency,
                     enum: -> { MetronomeSDK::V1::Contracts::RateCards::RateAddParams::BillingFrequency }

            # @!attribute commit_rate
            #   A distinct rate on the rate card. You can choose to use this rate rather than
            #   list rate when consuming a credit or commit.
            #
            #   @return [MetronomeSDK::Models::CommitRate, nil]
            optional :commit_rate, -> { MetronomeSDK::CommitRate }

            # @!attribute credit_type_id
            #   The Metronome ID of the credit type to associate with price, defaults to USD
            #   (cents) if not passed. Used by all rate_types except type PERCENTAGE. PERCENTAGE
            #   rates use the credit type of associated rates.
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!attribute custom_rate
            #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
            #   processors.
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :custom_rate, MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

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
            #   @return [Array<MetronomeSDK::Models::Tier>, nil]
            optional :tiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Tier] }

            # @!method initialize(entitled:, product_id:, rate_card_id:, rate_type:, starting_at:, billing_frequency: nil, commit_rate: nil, credit_type_id: nil, custom_rate: nil, ending_before: nil, is_prorated: nil, price: nil, pricing_group_values: nil, quantity: nil, tiers: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::Contracts::RateCards::RateAddParams} for more
            #   details.
            #
            #   @param entitled [Boolean]
            #
            #   @param product_id [String] ID of the product to add a rate for
            #
            #   @param rate_card_id [String] ID of the rate card to update
            #
            #   @param rate_type [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateAddParams::RateType]
            #
            #   @param starting_at [Time] inclusive effective date
            #
            #   @param billing_frequency [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateAddParams::BillingFrequency] Optional. Frequency to bill subscriptions with. Required for subscription type p
            #
            #   @param commit_rate [MetronomeSDK::Models::CommitRate] A distinct rate on the rate card. You can choose to use this rate rather than li
            #
            #   @param credit_type_id [String] The Metronome ID of the credit type to associate with price, defaults to USD (ce
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
            #   @param tiers [Array<MetronomeSDK::Models::Tier>] Only set for TIERED rate_type.
            #
            #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              FLAT = :FLAT
              PERCENTAGE = :PERCENTAGE
              SUBSCRIPTION = :SUBSCRIPTION
              TIERED = :TIERED
              TIERED_PERCENTAGE = :TIERED_PERCENTAGE
              CUSTOM = :CUSTOM

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Optional. Frequency to bill subscriptions with. Required for subscription type
            # products with Flat rate.
            module BillingFrequency
              extend MetronomeSDK::Internal::Type::Enum

              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              ANNUAL = :ANNUAL
              WEEKLY = :WEEKLY

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
