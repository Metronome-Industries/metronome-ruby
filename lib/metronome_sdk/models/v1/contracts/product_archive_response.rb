# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        # @see MetronomeSDK::Resources::V1::Contracts::Products#archive
        class ProductArchiveResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [MetronomeSDK::Models::V1::Contracts::ProductArchiveResponse::Data]
          required :data, -> { MetronomeSDK::Models::V1::Contracts::ProductArchiveResponse::Data }

          # @!method initialize(data:)
          #   @param data [MetronomeSDK::Models::V1::Contracts::ProductArchiveResponse::Data]

          # @see MetronomeSDK::Models::V1::Contracts::ProductArchiveResponse#data
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
