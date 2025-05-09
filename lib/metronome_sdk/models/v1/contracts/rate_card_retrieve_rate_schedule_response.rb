# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        # @see MetronomeSDK::Resources::V1::Contracts::RateCards#retrieve_rate_schedule
        class RateCardRetrieveRateScheduleResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse::Data>]
          required :data,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse::Data] }

          # @!attribute next_page
          #
          #   @return [String, nil]
          optional :next_page, String, nil?: true

          # @!method initialize(data:, next_page: nil)
          #   @param data [Array<MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse::Data>]
          #   @param next_page [String, nil]

          class Data < MetronomeSDK::Internal::Type::BaseModel
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
            #   @return [MetronomeSDK::Rate]
            required :rate, -> { MetronomeSDK::Rate }

            # @!attribute starting_at
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute commit_rate
            #   A distinct rate on the rate card. You can choose to use this rate rather than
            #   list rate when consuming a credit or commit.
            #
            #   @return [MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate, nil]
            optional :commit_rate,
                     -> { MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate }

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
            #   {MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse::Data}
            #   for more details.
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
            #   @param rate [MetronomeSDK::Rate]
            #
            #   @param starting_at [Time]
            #
            #   @param commit_rate [MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate] A distinct rate on the rate card. You can choose to use this rate rather than li
            #
            #   @param ending_before [Time]
            #
            #   @param pricing_group_values [Hash{Symbol=>String}]

            # @see MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse::Data#commit_rate
            class CommitRate < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate::RateType]
              required :rate_type,
                       enum: -> { MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate::RateType }

              # @!attribute price
              #   Commit rate price. For FLAT rate_type, this must be >=0.
              #
              #   @return [Float, nil]
              optional :price, Float

              # @!attribute tiers
              #   Only set for TIERED rate_type.
              #
              #   @return [Array<MetronomeSDK::Tier>, nil]
              optional :tiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Tier] }

              # @!method initialize(rate_type:, price: nil, tiers: nil)
              #   A distinct rate on the rate card. You can choose to use this rate rather than
              #   list rate when consuming a credit or commit.
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate::RateType]
              #
              #   @param price [Float] Commit rate price. For FLAT rate_type, this must be >=0.
              #
              #   @param tiers [Array<MetronomeSDK::Tier>] Only set for TIERED rate_type.

              # @see MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse::Data::CommitRate#rate_type
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
