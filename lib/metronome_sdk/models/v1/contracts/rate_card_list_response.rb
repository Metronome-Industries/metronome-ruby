# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        # @see MetronomeSDK::Resources::V1::Contracts::RateCards#list
        class RateCardListResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute created_by
          #
          #   @return [String]
          required :created_by, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute aliases
          #
          #   @return [Array<MetronomeSDK::Models::V1::Contracts::RateCardListResponse::Alias>, nil]
          optional :aliases,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Contracts::RateCardListResponse::Alias] }

          # @!attribute credit_type_conversions
          #
          #   @return [Array<MetronomeSDK::Models::V1::Contracts::RateCardListResponse::CreditTypeConversion>, nil]
          optional :credit_type_conversions,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Contracts::RateCardListResponse::CreditTypeConversion] }

          # @!attribute custom_fields
          #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute fiat_credit_type
          #
          #   @return [MetronomeSDK::Models::V1::Contracts::RateCardListResponse::FiatCreditType, nil]
          optional :fiat_credit_type,
                   -> { MetronomeSDK::Models::V1::Contracts::RateCardListResponse::FiatCreditType }

          # @!method initialize(id:, created_at:, created_by:, name:, aliases: nil, credit_type_conversions: nil, custom_fields: nil, description: nil, fiat_credit_type: nil)
          #   @param id [String]
          #
          #   @param created_at [Time]
          #
          #   @param created_by [String]
          #
          #   @param name [String]
          #
          #   @param aliases [Array<MetronomeSDK::Models::V1::Contracts::RateCardListResponse::Alias>]
          #
          #   @param credit_type_conversions [Array<MetronomeSDK::Models::V1::Contracts::RateCardListResponse::CreditTypeConversion>]
          #
          #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @param description [String]
          #
          #   @param fiat_credit_type [MetronomeSDK::Models::V1::Contracts::RateCardListResponse::FiatCreditType]

          class Alias < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute ending_before
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!attribute starting_at
            #
            #   @return [Time, nil]
            optional :starting_at, Time

            # @!method initialize(name:, ending_before: nil, starting_at: nil)
            #   @param name [String]
            #   @param ending_before [Time]
            #   @param starting_at [Time]
          end

          class CreditTypeConversion < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute custom_credit_type
            #
            #   @return [MetronomeSDK::Models::V1::Contracts::RateCardListResponse::CreditTypeConversion::CustomCreditType]
            required :custom_credit_type,
                     -> { MetronomeSDK::Models::V1::Contracts::RateCardListResponse::CreditTypeConversion::CustomCreditType }

            # @!attribute fiat_per_custom_credit
            #
            #   @return [String]
            required :fiat_per_custom_credit, String

            # @!method initialize(custom_credit_type:, fiat_per_custom_credit:)
            #   @param custom_credit_type [MetronomeSDK::Models::V1::Contracts::RateCardListResponse::CreditTypeConversion::CustomCreditType]
            #   @param fiat_per_custom_credit [String]

            # @see MetronomeSDK::Models::V1::Contracts::RateCardListResponse::CreditTypeConversion#custom_credit_type
            class CustomCreditType < MetronomeSDK::Internal::Type::BaseModel
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
          end

          # @see MetronomeSDK::Models::V1::Contracts::RateCardListResponse#fiat_credit_type
          class FiatCreditType < MetronomeSDK::Internal::Type::BaseModel
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
        end
      end
    end
  end
end
