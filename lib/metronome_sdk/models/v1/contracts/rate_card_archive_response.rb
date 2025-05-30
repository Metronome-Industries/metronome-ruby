# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        # @see MetronomeSDK::Resources::V1::Contracts::RateCards#archive
        class RateCardArchiveResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [MetronomeSDK::Models::V1::Contracts::RateCardArchiveResponse::Data]
          required :data, -> { MetronomeSDK::Models::V1::Contracts::RateCardArchiveResponse::Data }

          # @!method initialize(data:)
          #   @param data [MetronomeSDK::Models::V1::Contracts::RateCardArchiveResponse::Data]

          # @see MetronomeSDK::Models::V1::Contracts::RateCardArchiveResponse#data
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
