# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#update_end_date
      class ContractUpdateEndDateResponse < MetronomeSDK::Internal::Type::BaseModel
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
