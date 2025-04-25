# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      # @see MetronomeSDK::Resources::V2::Contracts#edit_commit
      class ContractEditCommitResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::ID]
        required :data, -> { MetronomeSDK::Models::ID }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::ID]
      end
    end
  end
end
