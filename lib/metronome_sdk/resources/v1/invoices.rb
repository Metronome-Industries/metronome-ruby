# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Invoices
        # Regenerate a voided contract invoice
        #
        # @overload regenerate(id:, request_options: {})
        #
        # @param id [String] The invoice id to regenerate
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::InvoiceRegenerateResponse]
        #
        # @see MetronomeSDK::Models::V1::InvoiceRegenerateParams
        def regenerate(params)
          parsed, options = MetronomeSDK::V1::InvoiceRegenerateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/invoices/regenerate",
            body: parsed,
            model: MetronomeSDK::Models::V1::InvoiceRegenerateResponse,
            options: options
          )
        end

        # Void an invoice
        #
        # @overload void(id:, request_options: {})
        #
        # @param id [String] The invoice id to void
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Models::V1::InvoiceVoidResponse]
        #
        # @see MetronomeSDK::Models::V1::InvoiceVoidParams
        def void(params)
          parsed, options = MetronomeSDK::V1::InvoiceVoidParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/invoices/void",
            body: parsed,
            model: MetronomeSDK::Models::V1::InvoiceVoidResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [MetronomeSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
