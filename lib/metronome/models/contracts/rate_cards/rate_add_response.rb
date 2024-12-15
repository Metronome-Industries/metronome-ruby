# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      module RateCards
        class RateAddResponse < Metronome::BaseModel
          # @!attribute data
          #
          #   @return [Metronome::Models::Contracts::RateCards::RateAddResponse::Data]
          required :data, -> { Metronome::Models::Contracts::RateCards::RateAddResponse::Data }

          # @!parse
          #   # @param data [Object]
          #   #
          #   def initialize(data:) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          class Data < Metronome::BaseModel
            # @!attribute rate_type
            #
            #   @return [Symbol, Metronome::Models::Contracts::RateCards::RateAddResponse::Data::RateType]
            required :rate_type,
                     enum: -> {
                       Metronome::Models::Contracts::RateCards::RateAddResponse::Data::RateType
                     }

            # @!attribute commit_rate
            #   A distinct rate on the rate card. You can choose to use this rate rather than list rate when consuming a credit or commit.
            #
            #   @return [Metronome::Models::Contracts::RateCards::RateAddResponse::Data::CommitRate]
            optional :commit_rate,
                     -> {
                       Metronome::Models::Contracts::RateCards::RateAddResponse::Data::CommitRate
                     }

            # @!attribute credit_type
            #
            #   @return [Metronome::Models::CreditTypeData]
            optional :credit_type, -> { Metronome::Models::CreditTypeData }

            # @!attribute custom_rate
            #   Only set for CUSTOM rate_type. This field is interpreted by custom rate processors.
            #
            #   @return [Hash]
            optional :custom_rate, Hash

            # @!attribute is_prorated
            #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be set to true.
            #
            #   @return [Boolean]
            optional :is_prorated, Metronome::BooleanModel

            # @!attribute price
            #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
            #
            #   @return [Float]
            optional :price, Float

            # @!attribute pricing_group_values
            #   if pricing groups are used, this will contain the values used to calculate the price
            #
            #   @return [Hash]
            optional :pricing_group_values, Hash

            # @!attribute quantity
            #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
            #
            #   @return [Float]
            optional :quantity, Float

            # @!attribute tiers
            #   Only set for TIERED rate_type.
            #
            #   @return [Array<Metronome::Models::Tier>]
            optional :tiers, Metronome::ArrayOf.new(-> { Metronome::Models::Tier })

            # @!attribute use_list_prices
            #   Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed using list prices rather than the standard rates for this product on the contract.
            #
            #   @return [Boolean]
            optional :use_list_prices, Metronome::BooleanModel

            # @!parse
            #   # @param rate_type [String]
            #   #
            #   # @param commit_rate [Object, nil] A distinct rate on the rate card. You can choose to use this rate rather than
            #   #   list rate when consuming a credit or commit.
            #   #
            #   # @param credit_type [Object, nil]
            #   #
            #   # @param custom_rate [Hash, nil] Only set for CUSTOM rate_type. This field is interpreted by custom rate
            #   #   processors.
            #   #
            #   # @param is_prorated [Boolean, nil] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
            #   #   set to true.
            #   #
            #   # @param price [Float, nil] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
            #   #   this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
            #   #
            #   # @param pricing_group_values [Hash, nil] if pricing groups are used, this will contain the values used to calculate the
            #   #   price
            #   #
            #   # @param quantity [Float, nil] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
            #   #
            #   # @param tiers [Array<Object>, nil] Only set for TIERED rate_type.
            #   #
            #   # @param use_list_prices [Boolean, nil] Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed
            #   #   using list prices rather than the standard rates for this product on the
            #   #   contract.
            #   #
            #   def initialize(
            #     rate_type:,
            #     commit_rate: nil,
            #     credit_type: nil,
            #     custom_rate: nil,
            #     is_prorated: nil,
            #     price: nil,
            #     pricing_group_values: nil,
            #     quantity: nil,
            #     tiers: nil,
            #     use_list_prices: nil
            #   )
            #     super
            #   end

            # def initialize: (Hash | Metronome::BaseModel) -> void

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

            class CommitRate < Metronome::BaseModel
              # @!attribute rate_type
              #
              #   @return [Symbol, Metronome::Models::Contracts::RateCards::RateAddResponse::Data::CommitRate::RateType]
              required :rate_type,
                       enum: -> {
                         Metronome::Models::Contracts::RateCards::RateAddResponse::Data::CommitRate::RateType
                       }

              # @!attribute price
              #   Commit rate price. For FLAT rate_type, this must be >=0.
              #
              #   @return [Float]
              optional :price, Float

              # @!attribute tiers
              #   Only set for TIERED rate_type.
              #
              #   @return [Array<Metronome::Models::Tier>]
              optional :tiers, Metronome::ArrayOf.new(-> { Metronome::Models::Tier })

              # @!parse
              #   # A distinct rate on the rate card. You can choose to use this rate rather than
              #   #   list rate when consuming a credit or commit.
              #   #
              #   # @param rate_type [String]
              #   #
              #   # @param price [Float, nil] Commit rate price. For FLAT rate_type, this must be >=0.
              #   #
              #   # @param tiers [Array<Object>, nil] Only set for TIERED rate_type.
              #   #
              #   def initialize(rate_type:, price: nil, tiers: nil) = super

              # def initialize: (Hash | Metronome::BaseModel) -> void

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
  end
end
