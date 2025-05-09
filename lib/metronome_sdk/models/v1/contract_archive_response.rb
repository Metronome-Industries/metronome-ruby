# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#archive
      class ContractArchiveResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::ID]
        required :data, -> { MetronomeSDK::ID }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::ID]
      end
    end
  end
end
