# frozen_string_literal: true

module Metronome
  module Resources
    class Invoices
      # Regenerate a voided contract invoice
      #
      # @param params [Metronome::Models::InvoiceRegenerateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :id The invoice id to regenerate
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Metronome::Models::InvoiceRegenerateResponse]
      #
      def regenerate(params)
        parsed, options = Metronome::Models::InvoiceRegenerateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "invoices/regenerate",
          body: parsed,
          model: Metronome::Models::InvoiceRegenerateResponse,
          options: options
        )
      end

      # Void an invoice
      #
      # @param params [Metronome::Models::InvoiceVoidParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :id The invoice id to void
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Metronome::Models::InvoiceVoidResponse]
      #
      def void(params)
        parsed, options = Metronome::Models::InvoiceVoidParams.dump_request(params)
        @client.request(
          method: :post,
          path: "invoices/void",
          body: parsed,
          model: Metronome::Models::InvoiceVoidResponse,
          options: options
        )
      end

      # @param client [Metronome::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
