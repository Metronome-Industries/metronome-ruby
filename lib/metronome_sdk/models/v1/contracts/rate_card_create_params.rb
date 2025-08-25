# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        # @see MetronomeSDK::Resources::V1::Contracts::RateCards#create
        class RateCardCreateParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute name
          #   Used only in UI/API. It is not exposed to end customers.
          #
          #   @return [String]
          required :name, String

          # @!attribute aliases
          #   Reference this alias when creating a contract. If the same alias is assigned to
          #   multiple rate cards, it will reference the rate card to which it was most
          #   recently assigned. It is not exposed to end customers.
          #
          #   @return [Array<MetronomeSDK::Models::V1::Contracts::RateCardCreateParams::Alias>, nil]
          optional :aliases,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Contracts::RateCardCreateParams::Alias] }

          # @!attribute credit_type_conversions
          #   Required when using custom pricing units in rates.
          #
          #   @return [Array<MetronomeSDK::Models::V1::Contracts::RateCardCreateParams::CreditTypeConversion>, nil]
          optional :credit_type_conversions,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Contracts::RateCardCreateParams::CreditTypeConversion] }

          # @!attribute custom_fields
          #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute fiat_credit_type_id
          #   The Metronome ID of the credit type to associate with the rate card, defaults to
          #   USD (cents) if not passed.
          #
          #   @return [String, nil]
          optional :fiat_credit_type_id, String

          # @!method initialize(name:, aliases: nil, credit_type_conversions: nil, custom_fields: nil, description: nil, fiat_credit_type_id: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Contracts::RateCardCreateParams} for more details.
          #
          #   @param name [String] Used only in UI/API. It is not exposed to end customers.
          #
          #   @param aliases [Array<MetronomeSDK::Models::V1::Contracts::RateCardCreateParams::Alias>] Reference this alias when creating a contract. If the same alias is assigned to
          #
          #   @param credit_type_conversions [Array<MetronomeSDK::Models::V1::Contracts::RateCardCreateParams::CreditTypeConversion>] Required when using custom pricing units in rates.
          #
          #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @param description [String]
          #
          #   @param fiat_credit_type_id [String] The Metronome ID of the credit type to associate with the rate card, defaults to
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

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
            # @!attribute custom_credit_type_id
            #
            #   @return [String]
            required :custom_credit_type_id, String

            # @!attribute fiat_per_custom_credit
            #
            #   @return [Float]
            required :fiat_per_custom_credit, Float

            # @!method initialize(custom_credit_type_id:, fiat_per_custom_credit:)
            #   @param custom_credit_type_id [String]
            #   @param fiat_per_custom_credit [Float]
          end
        end
      end
    end
  end
end
