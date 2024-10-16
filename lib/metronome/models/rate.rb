# frozen_string_literal: true

module Metronome
  module Models
    class Rate < BaseModel
      # @!attribute [rw] rate_type
      #   @return [Symbol, Metronome::Models::Rate::RateType]
      required :rate_type, enum: -> { Metronome::Models::Rate::RateType }

      # @!attribute [rw] credit_type
      #   @return [Metronome::Models::CreditTypeData]
      optional :credit_type, -> { Metronome::Models::CreditTypeData }

      # @!attribute [rw] custom_rate
      #   Only set for CUSTOM rate_type. This field is interpreted by custom rate processors.
      #   @return [Hash]
      optional :custom_rate, Hash

      # @!attribute [rw] is_prorated
      #   Default proration configuration. Only valid for SUBSCRIPTION rate_type.
      #   @return [Boolean]
      optional :is_prorated, Metronome::BooleanModel

      # @!attribute [rw] price
      #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
      #   @return [Float]
      optional :price, Float

      # @!attribute [rw] pricing_group_values
      #   if pricing groups are used, this will contain the values used to calculate the price
      #   @return [Hash]
      optional :pricing_group_values, Hash

      # @!attribute [rw] quantity
      #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
      #   @return [Float]
      optional :quantity, Float

      # @!attribute [rw] tiers
      #   Only set for TIERED rate_type.
      #   @return [Array<Metronome::Models::Tier>]
      optional :tiers, Metronome::ArrayOf.new(-> { Metronome::Models::Tier })

      # @!attribute [rw] use_list_prices
      #   Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed using list prices rather than the standard rates for this product on the contract.
      #   @return [Boolean]
      optional :use_list_prices, Metronome::BooleanModel

      class RateType < Metronome::Enum
        FLAT = :FLAT
        PERCENTAGE = :PERCENTAGE
        SUBSCRIPTION = :SUBSCRIPTION
        CUSTOM = :CUSTOM
        TIERED = :TIERED
      end

      # Create a new instance of Rate from a Hash of raw data.
      #
      # @overload initialize(rate_type: nil, credit_type: nil, custom_rate: nil, is_prorated: nil, price: nil, pricing_group_values: nil, quantity: nil, tiers: nil, use_list_prices: nil)
      # @param rate_type [String]
      # @param credit_type [Object]
      # @param custom_rate [Hash] Only set for CUSTOM rate_type. This field is interpreted by custom rate
      #   processors.
      # @param is_prorated [Hash] Default proration configuration. Only valid for SUBSCRIPTION rate_type.
      # @param price [Float] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
      #   this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
      # @param pricing_group_values [Hash] if pricing groups are used, this will contain the values used to calculate the
      #   price
      # @param quantity [Float] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
      # @param tiers [Array<Object>] Only set for TIERED rate_type.
      # @param use_list_prices [Hash] Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed
      #   using list prices rather than the standard rates for this product on the
      #   contract.
      def initialize(data = {})
        super
      end
    end
  end
end
