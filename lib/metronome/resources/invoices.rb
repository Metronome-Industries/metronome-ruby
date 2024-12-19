# frozen_string_literal: true

module Metronome
  module Resources
    class Invoices
      # @param client [Metronome::Client]
      def initialize(client:)
        @client = client
      end

      # Regenerate a voided contract invoice
      #
      # @param params [Hash{Symbol => Object}, Metronome::Models::InvoiceRegenerateParams] Attributes to send in this request.
      #
      #   @option params [String] :id The invoice id to regenerate
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::InvoiceRegenerateResponse]
      def regenerate(params = {}, opts = {})
        parsed = Metronome::Models::InvoiceRegenerateParams.dump(params)
        req = {
          method: :post,
          path: "invoices/regenerate",
          body: parsed,
          model: Metronome::Models::InvoiceRegenerateResponse
        }
        @client.request(req, opts)
      end

      # Void an invoice
      #
      # @param params [Hash{Symbol => Object}, Metronome::Models::InvoiceVoidParams] Attributes to send in this request.
      #
      #   @option params [String] :id The invoice id to void
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::InvoiceVoidResponse]
      def void(params = {}, opts = {})
        parsed = Metronome::Models::InvoiceVoidParams.dump(params)
        req = {
          method: :post,
          path: "invoices/void",
          body: parsed,
          model: Metronome::Models::InvoiceVoidResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
