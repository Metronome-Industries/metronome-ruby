# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          # @see MetronomeSDK::Resources::V1::Contracts::RateCards::Rates#list
          class RateListResponse < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute entitled
            #
            #   @return [Boolean]
            required :entitled, MetronomeSDK::Internal::Type::Boolean

            # @!attribute product_custom_fields
            #
            #   @return [Hash{Symbol=>String}]
            required :product_custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute product_id
            #
            #   @return [String]
            required :product_id, String

            # @!attribute product_name
            #
            #   @return [String]
            required :product_name, String

            # @!attribute product_tags
            #
            #   @return [Array<String>]
            required :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute rate
            #
            #   @return [MetronomeSDK::Models::Rate]
            required :rate, -> { MetronomeSDK::Rate }

            # @!attribute starting_at
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute commit_rate
            #   A distinct rate on the rate card. You can choose to use this rate rather than
            #   list rate when consuming a credit or commit.
            #
            #   @return [MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate, nil]
            optional :commit_rate, -> { MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate }

            # @!attribute ending_before
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!attribute pricing_group_values
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

            # @!method initialize(entitled:, product_custom_fields:, product_id:, product_name:, product_tags:, rate:, starting_at:, commit_rate: nil, ending_before: nil, pricing_group_values: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse} for more
            #   details.
            #
            #   @param entitled [Boolean]
            #
            #   @param product_custom_fields [Hash{Symbol=>String}]
            #
            #   @param product_id [String]
            #
            #   @param product_name [String]
            #
            #   @param product_tags [Array<String>]
            #
            #   @param rate [MetronomeSDK::Models::Rate]
            #
            #   @param starting_at [Time]
            #
            #   @param commit_rate [MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate] A distinct rate on the rate card. You can choose to use this rate rather than li
            #
            #   @param ending_before [Time]
            #
            #   @param pricing_group_values [Hash{Symbol=>String}]

            # @see MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse#commit_rate
            class CommitRate < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::RateType]
              required :rate_type,
                       enum: -> { MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::RateType }

              # @!attribute price
              #   Commit rate price. For FLAT rate_type, this must be >=0.
              #
              #   @return [Float, nil]
              optional :price, Float

              # @!attribute tiers
              #   Only set for TIERED rate_type.
              #
              #   @return [Array<MetronomeSDK::Models::Tier>, nil]
              optional :tiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Tier] }

              # @!method initialize(rate_type:, price: nil, tiers: nil)
              #   A distinct rate on the rate card. You can choose to use this rate rather than
              #   list rate when consuming a credit or commit.
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::RateType]
              #
              #   @param price [Float] Commit rate price. For FLAT rate_type, this must be >=0.
              #
              #   @param tiers [Array<MetronomeSDK::Models::Tier>] Only set for TIERED rate_type.

              # @see MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                FLAT = :FLAT
                PERCENTAGE = :PERCENTAGE
                SUBSCRIPTION = :SUBSCRIPTION
                TIERED = :TIERED
                CUSTOM = :CUSTOM

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
