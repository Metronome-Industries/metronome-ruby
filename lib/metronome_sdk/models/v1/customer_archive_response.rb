# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#archive
      class CustomerArchiveResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V1::CustomerArchiveResponse::Data]
        required :data, -> { MetronomeSDK::Models::V1::CustomerArchiveResponse::Data }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::V1::CustomerArchiveResponse::Data]

        # @see MetronomeSDK::Models::V1::CustomerArchiveResponse#data
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
