# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          # @see MetronomeSDK::Resources::V1::Contracts::RateCards::Rates#add
          class RateAddResponse < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data]
            required :data, -> { MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data }

            # @!method initialize(data:)
            #   @param data [MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data]

            # @see MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse#data
            class Data < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::RateType]
              required :rate_type,
                       enum: -> { MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::RateType }

              # @!attribute commit_rate
              #   A distinct rate on the rate card. You can choose to use this rate rather than
              #   list rate when consuming a credit or commit.
              #
              #   @return [MetronomeSDK::Models::CommitRate, nil]
              optional :commit_rate, -> { MetronomeSDK::CommitRate }

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

              # @!method initialize(rate_type:, commit_rate: nil, credit_type: nil, custom_rate: nil, is_prorated: nil, price: nil, pricing_group_values: nil, quantity: nil, tiers: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data} for more
              #   details.
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data::RateType]
              #
              #   @param commit_rate [MetronomeSDK::Models::CommitRate] A distinct rate on the rate card. You can choose to use this rate rather than li
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

              # @see MetronomeSDK::Models::V1::Contracts::RateCards::RateAddResponse::Data#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                FLAT = :FLAT
                PERCENTAGE = :PERCENTAGE
                SUBSCRIPTION = :SUBSCRIPTION
                CUSTOM = :CUSTOM
                TIERED = :TIERED
                TIERED_PERCENTAGE = :TIERED_PERCENTAGE

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
