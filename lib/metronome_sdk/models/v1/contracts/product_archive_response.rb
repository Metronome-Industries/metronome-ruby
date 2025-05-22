# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        # @see MetronomeSDK::Resources::V1::Contracts::Products#archive
        class ProductArchiveResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [MetronomeSDK::Models::ID]
          required :data, -> { MetronomeSDK::ID }

          # @!method initialize(data:)
          #   @param data [MetronomeSDK::Models::ID]
        end
      end
    end
  end
end
