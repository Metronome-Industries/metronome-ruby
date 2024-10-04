# frozen_string_literal: true

module Metronome
  module Models
    class RateCardRetrieveRateScheduleResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::RateCardRetrieveRateScheduleResponse::Data>]
      required :data,
               Metronome::ArrayOf.new(-> { Metronome::Models::RateCardRetrieveRateScheduleResponse::Data })

      # @!attribute [rw] next_page
      #   @return [String]
      optional :next_page, String

      class Data < BaseModel
        # @!attribute [rw] entitled
        #   @return [Boolean]
        required :entitled, Metronome::BooleanModel

        # @!attribute [rw] product_id
        #   @return [String]
        required :product_id, String

        # @!attribute [rw] product_name
        #   @return [String]
        required :product_name, String

        # @!attribute [rw] product_tags
        #   @return [Array<String>]
        required :product_tags, Metronome::ArrayOf.new(String)

        # @!attribute [rw] rate
        #   @return [Metronome::Models::Rate]
        required :rate, -> { Metronome::Models::Rate }

        # @!attribute [rw] starting_at
        #   @return [Time]
        required :starting_at, Time

        # @!attribute [rw] commit_rate
        #   The rate that will be used to rate a product when it is paid for by a commit. This feature requires opt-in before it can be used. Please contact Metronome support to enable this feature.
        #   @return [Metronome::Models::RateCardRetrieveRateScheduleResponse::Data::CommitRate]
        optional :commit_rate,
                 lambda {
                   Metronome::Models::RateCardRetrieveRateScheduleResponse::Data::CommitRate
                 }

        # @!attribute [rw] ending_before
        #   @return [Time]
        optional :ending_before, Time

        # @!attribute [rw] pricing_group_values
        #   @return [Hash]
        optional :pricing_group_values, Hash

        class CommitRate < BaseModel
          # @!attribute [rw] rate_type
          #   @return [Symbol, Metronome::Models::RateCardRetrieveRateScheduleResponse::Data::CommitRate::RateType]
          required :rate_type,
                   enum: lambda {
                     Metronome::Models::RateCardRetrieveRateScheduleResponse::Data::CommitRate::RateType
                   }

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
