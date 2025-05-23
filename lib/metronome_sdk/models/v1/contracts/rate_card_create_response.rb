# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        # @see MetronomeSDK::Resources::V1::Contracts::RateCards#create
        class RateCardCreateResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [MetronomeSDK::Models::V1::Contracts::RateCardCreateResponse::Data]
          required :data, -> { MetronomeSDK::Models::V1::Contracts::RateCardCreateResponse::Data }

          # @!method initialize(data:)
          #   @param data [MetronomeSDK::Models::V1::Contracts::RateCardCreateResponse::Data]

          # @see MetronomeSDK::Models::V1::Contracts::RateCardCreateResponse#data
          class Data < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!method initialize(id:)
            #   @param id [String]
          end
        end
      end
    end
  end
end
