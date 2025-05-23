# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      # @see MetronomeSDK::Resources::V2::Contracts#edit_credit
      class ContractEditCreditResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V2::ContractEditCreditResponse::Data]
        required :data, -> { MetronomeSDK::Models::V2::ContractEditCreditResponse::Data }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::V2::ContractEditCreditResponse::Data]

        # @see MetronomeSDK::Models::V2::ContractEditCreditResponse#data
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
