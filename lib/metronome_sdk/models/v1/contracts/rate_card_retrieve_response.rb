# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        # @see MetronomeSDK::Resources::V1::Contracts::RateCards#retrieve
        class RateCardRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data]
          required :data, -> { MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data }

          # @!method initialize(data:)
          #   @param data [MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data]

          # @see MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse#data
          class Data < MetronomeSDK::Internal::Type::BaseModel
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
            #   @return [Array<MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::Alias>, nil]
            optional :aliases,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::Alias] }

            # @!attribute credit_type_conversions
            #
            #   @return [Array<MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::CreditTypeConversion>, nil]
            optional :credit_type_conversions,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::CreditTypeConversion] }

            # @!attribute custom_fields
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute fiat_credit_type
            #
            #   @return [MetronomeSDK::CreditTypeData, nil]
            optional :fiat_credit_type, -> { MetronomeSDK::CreditTypeData }

            # @!method initialize(id:, created_at:, created_by:, name:, aliases: nil, credit_type_conversions: nil, custom_fields: nil, description: nil, fiat_credit_type: nil)
            #   @param id [String]
            #   @param created_at [Time]
            #   @param created_by [String]
            #   @param name [String]
            #   @param aliases [Array<MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::Alias>]
            #   @param credit_type_conversions [Array<MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::CreditTypeConversion>]
            #   @param custom_fields [Hash{Symbol=>String}]
            #   @param description [String]
            #   @param fiat_credit_type [MetronomeSDK::CreditTypeData]

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
              #   @return [MetronomeSDK::CreditTypeData]
              required :custom_credit_type, -> { MetronomeSDK::CreditTypeData }

              # @!attribute fiat_per_custom_credit
              #
              #   @return [String]
              required :fiat_per_custom_credit, String

              # @!method initialize(custom_credit_type:, fiat_per_custom_credit:)
              #   @param custom_credit_type [MetronomeSDK::CreditTypeData]
              #   @param fiat_per_custom_credit [String]
            end
          end
        end
      end
    end
  end
end
