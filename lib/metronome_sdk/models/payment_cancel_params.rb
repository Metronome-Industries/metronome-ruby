# frozen_string_literal: true

module MetronomeSDK
  module Models
    # @see MetronomeSDK::Resources::Payments#cancel
    class PaymentCancelParams < MetronomeSDK::Internal::Type::BaseModel
      extend MetronomeSDK::Internal::Type::RequestParameters::Converter
      include MetronomeSDK::Internal::Type::RequestParameters

      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute invoice_id
      #
      #   @return [String]
      required :invoice_id, String

      # @!method initialize(customer_id:, invoice_id:, request_options: {})
      #   @param customer_id [String]
      #   @param invoice_id [String]
      #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
