# frozen_string_literal: true

module Metronome
  module Resources
    class Invoices
      def initialize(client:)
        @client = client
      end

      # Regenerate a voided contract invoice
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :id The invoice id to regenerate
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::InvoiceRegenerateResponse]
      def regenerate(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/invoices/regenerate"
        req[:body] = params
        req[:model] = Metronome::Models::InvoiceRegenerateResponse
        @client.request(req, opts)
      end

      # Void an invoice
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :id The invoice id to void
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::InvoiceVoidResponse]
      def void(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/invoices/void"
        req[:body] = params
        req[:model] = Metronome::Models::InvoiceVoidResponse
        @client.request(req, opts)
      end
    end
  end
end
