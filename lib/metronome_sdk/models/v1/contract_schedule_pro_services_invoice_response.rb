# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#schedule_pro_services_invoice
      class ContractScheduleProServicesInvoiceResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V1::Customers::Invoice>]
        required :data, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V1::Customers::Invoice] }

        # @!method initialize(data:)
        #   @param data [Array<MetronomeSDK::Models::V1::Customers::Invoice>]
      end
    end
  end
end
