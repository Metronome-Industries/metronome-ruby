# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      # @see MetronomeSDK::Resources::V2::Contracts#edit_commit
      class ContractEditCommitResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V2::ContractEditCommitResponse::Data]
        required :data, -> { MetronomeSDK::Models::V2::ContractEditCommitResponse::Data }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::V2::ContractEditCommitResponse::Data]

        # @see MetronomeSDK::Models::V2::ContractEditCommitResponse#data
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
