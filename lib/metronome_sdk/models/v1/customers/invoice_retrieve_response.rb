# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Invoices#retrieve
        class InvoiceRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [MetronomeSDK::V1::Customers::Invoice]
          required :data, -> { MetronomeSDK::V1::Customers::Invoice }

          # @!method initialize(data:)
          #   @param data [MetronomeSDK::V1::Customers::Invoice]
        end
      end
    end
  end
end
