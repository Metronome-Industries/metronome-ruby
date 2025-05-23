# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        # @see MetronomeSDK::Resources::V1::Contracts::RateCards#update
        class RateCardUpdateParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute rate_card_id
          #   ID of the rate card to update
          #
          #   @return [String]
          required :rate_card_id, String

          # @!attribute aliases
          #   Reference this alias when creating a contract. If the same alias is assigned to
          #   multiple rate cards, it will reference the rate card to which it was most
          #   recently assigned. It is not exposed to end customers.
          #
          #   @return [Array<MetronomeSDK::Models::V1::Contracts::RateCardUpdateParams::Alias>, nil]
          optional :aliases,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Contracts::RateCardUpdateParams::Alias]
                   }

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute name
          #   Used only in UI/API. It is not exposed to end customers.
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(rate_card_id:, aliases: nil, description: nil, name: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Contracts::RateCardUpdateParams} for more details.
          #
          #   @param rate_card_id [String] ID of the rate card to update
          #
          #   @param aliases [Array<MetronomeSDK::Models::V1::Contracts::RateCardUpdateParams::Alias>] Reference this alias when creating a contract. If the same alias is assigned to
          #
          #   @param description [String]
          #
          #   @param name [String] Used only in UI/API. It is not exposed to end customers.
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
        end
      end
    end
  end
end
