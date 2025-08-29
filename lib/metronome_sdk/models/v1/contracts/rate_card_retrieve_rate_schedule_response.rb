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
            #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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

            # @!attribute billing_frequency
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse::Data::BillingFrequency, nil]
            optional :billing_frequency,
                     enum: -> { MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse::Data::BillingFrequency }

            # @!attribute commit_rate
            #   A distinct rate on the rate card. You can choose to use this rate rather than
            #   list rate when consuming a credit or commit.
            #
            #   @return [MetronomeSDK::Models::CommitRate, nil]
            optional :commit_rate, -> { MetronomeSDK::CommitRate }

            # @!attribute ending_before
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!attribute pricing_group_values
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

            # @!method initialize(entitled:, product_custom_fields:, product_id:, product_name:, product_tags:, rate:, starting_at:, billing_frequency: nil, commit_rate: nil, ending_before: nil, pricing_group_values: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse::Data}
            #   for more details.
            #
            #   @param entitled [Boolean]
            #
            #   @param product_custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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
            #   @param billing_frequency [Symbol, MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse::Data::BillingFrequency]
            #
            #   @param commit_rate [MetronomeSDK::Models::CommitRate] A distinct rate on the rate card. You can choose to use this rate rather than li
            #
            #   @param ending_before [Time]
            #
            #   @param pricing_group_values [Hash{Symbol=>String}]

            # @see MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse::Data#billing_frequency
            module BillingFrequency
              extend MetronomeSDK::Internal::Type::Enum

              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              ANNUAL = :ANNUAL
              WEEKLY = :WEEKLY

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
