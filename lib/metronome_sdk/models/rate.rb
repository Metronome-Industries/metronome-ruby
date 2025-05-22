# frozen_string_literal: true

module MetronomeSDK
  module Models
    class Rate < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute rate_type
      #
      #   @return [Symbol, MetronomeSDK::Models::Rate::RateType]
      required :rate_type, enum: -> { MetronomeSDK::Rate::RateType }

      # @!attribute credit_type
      #
      #   @return [MetronomeSDK::Models::CreditTypeData, nil]
      optional :credit_type, -> { MetronomeSDK::CreditTypeData }

      # @!attribute custom_rate
      #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
      #   processors.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :custom_rate, MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

      # @!attribute is_prorated
      #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
      #   set to true.
      #
      #   @return [Boolean, nil]
      optional :is_prorated, MetronomeSDK::Internal::Type::Boolean

      # @!attribute price
      #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
      #   this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
      #
      #   @return [Float, nil]
      optional :price, Float

      # @!attribute pricing_group_values
      #   if pricing groups are used, this will contain the values used to calculate the
      #   price
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

      # @!attribute use_list_prices
      #   Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed
      #   using list prices rather than the standard rates for this product on the
      #   contract.
      #
      #   @return [Boolean, nil]
      optional :use_list_prices, MetronomeSDK::Internal::Type::Boolean

      # @!method initialize(rate_type:, credit_type: nil, custom_rate: nil, is_prorated: nil, price: nil, pricing_group_values: nil, quantity: nil, tiers: nil, use_list_prices: nil)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::Rate} for more details.
      #
      #   @param rate_type [Symbol, MetronomeSDK::Models::Rate::RateType]
      #
      #   @param credit_type [MetronomeSDK::Models::CreditTypeData]
      #
      #   @param custom_rate [Hash{Symbol=>Object}] Only set for CUSTOM rate_type. This field is interpreted by custom rate processo
      #
      #   @param is_prorated [Boolean] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
      #
      #   @param price [Float] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, t
      #
      #   @param pricing_group_values [Hash{Symbol=>String}] if pricing groups are used, this will contain the values used to calculate the p
      #
      #   @param quantity [Float] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
      #
      #   @param tiers [Array<MetronomeSDK::Models::Tier>] Only set for TIERED rate_type.
      #
      #   @param use_list_prices [Boolean] Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed

      # @see MetronomeSDK::Models::Rate#rate_type
      module RateType
        extend MetronomeSDK::Internal::Type::Enum

        FLAT = :FLAT
        PERCENTAGE = :PERCENTAGE
        SUBSCRIPTION = :SUBSCRIPTION
        CUSTOM = :CUSTOM
        TIERED = :TIERED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
