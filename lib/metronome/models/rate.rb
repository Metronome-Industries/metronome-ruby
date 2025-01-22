# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # rate => {
    #   rate_type: Metronome::Models::Rate::RateType,
    #   credit_type: Metronome::Models::CreditTypeData,
    #   custom_rate: -> { Metronome::HashOf[Metronome::Unknown] === _1 },
    #   is_prorated: Metronome::BooleanModel,
    #   price: Float,
    #   **_
    # }
    # ```
    class Rate < Metronome::BaseModel
      # @!attribute rate_type
      #
      #   @return [Symbol, Metronome::Models::Rate::RateType]
      required :rate_type, enum: -> { Metronome::Models::Rate::RateType }

      # @!attribute [r] credit_type
      #
      #   @return [Metronome::Models::CreditTypeData, nil]
      optional :credit_type, -> { Metronome::Models::CreditTypeData }

      # @!parse
      #   # @return [Metronome::Models::CreditTypeData]
      #   attr_writer :credit_type

      # @!attribute [r] custom_rate
      #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
      #     processors.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :custom_rate, Metronome::HashOf[Metronome::Unknown]

      # @!parse
      #   # @return [Hash{Symbol=>Object}]
      #   attr_writer :custom_rate

      # @!attribute [r] is_prorated
      #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
      #     set to true.
      #
      #   @return [Boolean, nil]
      optional :is_prorated, Metronome::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :is_prorated

      # @!attribute [r] price
      #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
      #     this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
      #
      #   @return [Float, nil]
      optional :price, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :price

      # @!attribute [r] pricing_group_values
      #   if pricing groups are used, this will contain the values used to calculate the
      #     price
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :pricing_group_values, Metronome::HashOf[String]

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
      #   @return [Array<Metronome::Models::Tier>]
      optional :tiers, -> { Metronome::ArrayOf[Metronome::Models::Tier] }

      # @!parse
      #   # @return [Array<Metronome::Models::Tier>]
      #   attr_writer :tiers

      # @!attribute [r] use_list_prices
      #   Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed
      #     using list prices rather than the standard rates for this product on the
      #     contract.
      #
      #   @return [Boolean, nil]
      optional :use_list_prices, Metronome::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :use_list_prices

      # @!parse
      #   # @param rate_type [String]
      #   # @param credit_type [Metronome::Models::CreditTypeData]
      #   # @param custom_rate [Hash{Symbol=>Object}]
      #   # @param is_prorated [Boolean]
      #   # @param price [Float]
      #   # @param pricing_group_values [Hash{Symbol=>String}]
      #   # @param quantity [Float]
      #   # @param tiers [Array<Metronome::Models::Tier>]
      #   # @param use_list_prices [Boolean]
      #   #
      #   def initialize(
      #     rate_type:,
      #     credit_type: nil,
      #     custom_rate: nil,
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

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      # ```ruby
      # case rate_type
      # in :FLAT
      #   # ...
      # in :PERCENTAGE
      #   # ...
      # in :SUBSCRIPTION
      #   # ...
      # in :CUSTOM
      #   # ...
      # in :TIERED
      #   # ...
      # end
      # ```
      class RateType < Metronome::Enum
        FLAT = :FLAT
        PERCENTAGE = :PERCENTAGE
        SUBSCRIPTION = :SUBSCRIPTION
        CUSTOM = :CUSTOM
        TIERED = :TIERED

        finalize!
      end
    end
  end
end
