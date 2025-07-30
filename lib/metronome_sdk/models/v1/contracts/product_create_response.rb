# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        # @see MetronomeSDK::Resources::V1::Contracts::Products#create
        class ProductCreateResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [MetronomeSDK::Models::V1::Contracts::ProductCreateResponse::Data]
          required :data, -> { MetronomeSDK::Models::V1::Contracts::ProductCreateResponse::Data }

          # @!method initialize(data:)
          #   @param data [MetronomeSDK::Models::V1::Contracts::ProductCreateResponse::Data]

          # @see MetronomeSDK::Models::V1::Contracts::ProductCreateResponse#data
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
