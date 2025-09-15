# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#list_balances
      module ContractListBalancesResponse
        extend MetronomeSDK::Internal::Type::Union

        variant -> { MetronomeSDK::Commit }

        variant -> { MetronomeSDK::Credit }

        # @!method self.variants
        #   @return [Array(MetronomeSDK::Models::Commit, MetronomeSDK::Models::Credit)]
      end
    end
  end
end
