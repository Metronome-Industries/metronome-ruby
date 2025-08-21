# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#list
      class ContractListResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::Contract>]
        required :data, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Contract] }

        # @!method initialize(data:)
        #   @param data [Array<MetronomeSDK::Models::Contract>]
      end
    end
  end
end
