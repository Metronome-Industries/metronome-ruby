# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      # @see MetronomeSDK::Resources::V2::Contracts#retrieve
      class ContractRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::ContractV2]
        required :data, -> { MetronomeSDK::ContractV2 }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::ContractV2]
      end
    end
  end
end
