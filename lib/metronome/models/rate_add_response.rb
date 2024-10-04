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

        # @!attribute [rw] commit_rate
        #   The rate that will be used to rate a product when it is paid for by a commit. This feature requires opt-in before it can be used. Please contact Metronome support to enable this feature.
        #   @return [Metronome::Models::RateAddResponse::Data::CommitRate]
        optional :commit_rate, -> { Metronome::Models::RateAddResponse::Data::CommitRate }

        # @!attribute [rw] credit_type
        #   @return [Metronome::Models::CreditType]
        optional :credit_type, -> { Metronome::Models::CreditType }

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

        class CommitRate < BaseModel
          # @!attribute [rw] rate_type
          #   @return [Symbol, Metronome::Models::RateAddResponse::Data::CommitRate::RateType]
          required :rate_type, enum: -> { Metronome::Models::RateAddResponse::Data::CommitRate::RateType }

          # @!attribute [rw] credit_type
          #   @return [Metronome::Models::CreditType]
          optional :credit_type, -> { Metronome::Models::CreditType }

          # @!attribute [rw] is_prorated
          #   Commit rate proration configuration. Only valid for SUBSCRIPTION rate_type.
          #   @return [Boolean]
          optional :is_prorated, Metronome::BooleanModel

          # @!attribute [rw] price
          #   Commit rate price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
          #   @return [Float]
          optional :price, Float

          # @!attribute [rw] quantity
          #   Commit rate quantity. For SUBSCRIPTION rate_type, this must be >=0.
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
