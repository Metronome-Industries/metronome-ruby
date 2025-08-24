# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#retrieve
      class ContractRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::Contract]
        required :data, -> { MetronomeSDK::Contract }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::Contract]
      end
    end
  end
end
