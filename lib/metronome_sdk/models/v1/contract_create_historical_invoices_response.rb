# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#create_historical_invoices
      class ContractCreateHistoricalInvoicesResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V1::Customers::Invoice>]
        required :data, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Customers::Invoice] }

        # @!method initialize(data:)
        #   @param data [Array<MetronomeSDK::Models::V1::Customers::Invoice>]
      end
    end
  end
end
