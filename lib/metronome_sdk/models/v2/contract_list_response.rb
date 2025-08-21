# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      # @see MetronomeSDK::Resources::V2::Contracts#list
      class ContractListResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::ContractV2>]
        required :data, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ContractV2] }

        # @!method initialize(data:)
        #   @param data [Array<MetronomeSDK::Models::ContractV2>]
      end
    end
  end
end
