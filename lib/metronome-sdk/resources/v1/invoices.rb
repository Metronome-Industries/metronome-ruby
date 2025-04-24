# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Invoices
        # Regenerate a voided contract invoice
        #
        # @param params [MetronomeSDK::Models::V1::InvoiceRegenerateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :id The invoice id to regenerate
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::InvoiceRegenerateResponse]
        #
        def regenerate(params)
          parsed, options = MetronomeSDK::Models::V1::InvoiceRegenerateParams.dump_request(params)
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
        # @param params [MetronomeSDK::Models::V1::InvoiceVoidParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :id The invoice id to void
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::InvoiceVoidResponse]
        #
        def void(params)
          parsed, options = MetronomeSDK::Models::V1::InvoiceVoidParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/invoices/void",
            body: parsed,
            model: MetronomeSDK::Models::V1::InvoiceVoidResponse,
            options: options
          )
        end

        # @param client [MetronomeSDK::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
