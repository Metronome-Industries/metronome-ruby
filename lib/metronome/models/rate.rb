# frozen_string_literal: true

module Metronome
  module Models
    class Rate < BaseModel
      # @!attribute [rw] rate_type
      #   @return [Symbol]
      required :rate_type,
               Metronome::Enum.new(
                 :FLAT,
                 :flat,
                 :PERCENTAGE,
                 :percentage,
                 :SUBSCRIPTION,
                 :subscription,
                 :CUSTOM,
                 :custom,
                 :TIERED,
                 :tiered
               )

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
      #   @return [Array<Metronome::Models::Rate::Tier>]
      optional :tiers, Metronome::ArrayOf.new(-> { Metronome::Models::Rate::Tier })

      # @!attribute [rw] use_list_prices
      #   Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed using list prices rather than the standard rates for this product on the contract.
      #   @return [Boolean]
      optional :use_list_prices, Metronome::BooleanModel

      class Tier < BaseModel
        # @!attribute [rw] price
        #   @return [Float]
        required :price, Float

        # @!attribute [rw] size
        #   @return [Float]
        optional :size, Float
      end
    end
  end
end
