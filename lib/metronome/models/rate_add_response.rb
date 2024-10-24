# frozen_string_literal: true

module Metronome
  module Models
    class RateAddResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::RateAddResponse::Data]
      required :data, -> { Metronome::Models::RateAddResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] rate_type
        #   @return [Symbol, Metronome::Models::RateAddResponse::Data::RateType]
        required :rate_type, enum: -> { Metronome::Models::RateAddResponse::Data::RateType }

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
          FLAT = :flat
          PERCENTAGE = :PERCENTAGE
          PERCENTAGE = :percentage
          SUBSCRIPTION = :SUBSCRIPTION
          SUBSCRIPTION = :subscription
          CUSTOM = :CUSTOM
          CUSTOM = :custom
          TIERED = :TIERED
          TIERED = :tiered
        end

        # @!parse
        #   # Create a new instance of Data from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :rate_type
        #   #   @option data [Object, nil] :credit_type
        #   #   @option data [Hash, nil] :custom_rate Only set for CUSTOM rate_type. This field is interpreted by custom rate
        #   #     processors.
        #   #   @option data [Hash, nil] :is_prorated Default proration configuration. Only valid for SUBSCRIPTION rate_type.
        #   #   @option data [Float, nil] :price Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
        #   #     this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
        #   #   @option data [Hash, nil] :pricing_group_values if pricing groups are used, this will contain the values used to calculate the
        #   #     price
        #   #   @option data [Float, nil] :quantity Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
        #   #   @option data [Array<Object>, nil] :tiers Only set for TIERED rate_type.
        #   #   @option data [Hash, nil] :use_list_prices Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed
        #   #     using list prices rather than the standard rates for this product on the
        #   #     contract.
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of RateAddResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Object] :data
      #   def initialize(data = {}) = super
    end
  end
end
