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
            #   @return [MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate]
            required :rate, -> { MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate }

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
            #   @param rate [MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate]
            #
            #   @param starting_at [Time]
            #
            #   @param commit_rate [MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate] A distinct rate on the rate card. You can choose to use this rate rather than li
            #
            #   @param ending_before [Time]
            #
            #   @param pricing_group_values [Hash{Symbol=>String}]

            # @see MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse#rate
            class Rate < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::RateType]
              required :rate_type,
                       enum: -> { MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::RateType }

              # @!attribute credit_type
              #
              #   @return [MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::CreditType, nil]
              optional :credit_type,
                       -> { MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::CreditType }

              # @!attribute custom_rate
              #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
              #   processors.
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :custom_rate,
                       MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

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
              #   @return [Array<MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::Tier>, nil]
              optional :tiers,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::Tier] }

              # @!attribute use_list_prices
              #   Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed
              #   using list prices rather than the standard rates for this product on the
              #   contract.
              #
              #   @return [Boolean, nil]
              optional :use_list_prices, MetronomeSDK::Internal::Type::Boolean

              # @!method initialize(rate_type:, credit_type: nil, custom_rate: nil, is_prorated: nil, price: nil, pricing_group_values: nil, quantity: nil, tiers: nil, use_list_prices: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate} for
              #   more details.
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::RateType]
              #
              #   @param credit_type [MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::CreditType]
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
              #   @param tiers [Array<MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate::Tier>] Only set for TIERED rate_type.
              #
              #   @param use_list_prices [Boolean] Only set for PERCENTAGE rate_type. Defaults to false. If true, rate is computed

              # @see MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate#rate_type
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

              # @see MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::Rate#credit_type
              class CreditType < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!method initialize(id:, name:)
                #   @param id [String]
                #   @param name [String]
              end

              class Tier < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute price
                #
                #   @return [Float]
                required :price, Float

                # @!attribute size
                #
                #   @return [Float, nil]
                optional :size, Float

                # @!method initialize(price:, size: nil)
                #   @param price [Float]
                #   @param size [Float]
              end
            end

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
              #   @return [Array<MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::Tier>, nil]
              optional :tiers,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::Tier] }

              # @!method initialize(rate_type:, price: nil, tiers: nil)
              #   A distinct rate on the rate card. You can choose to use this rate rather than
              #   list rate when consuming a credit or commit.
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::RateType]
              #
              #   @param price [Float] Commit rate price. For FLAT rate_type, this must be >=0.
              #
              #   @param tiers [Array<MetronomeSDK::Models::V1::Contracts::RateCards::RateListResponse::CommitRate::Tier>] Only set for TIERED rate_type.

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

              class Tier < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute price
                #
                #   @return [Float]
                required :price, Float

                # @!attribute size
                #
                #   @return [Float, nil]
                optional :size, Float

                # @!method initialize(price:, size: nil)
                #   @param price [Float]
                #   @param size [Float]
              end
            end
          end
        end
      end
    end
  end
end
