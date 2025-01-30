# typed: strong

module Metronome
  module Resources
    class Invoices
      sig do
        params(
          params: T.any(Metronome::Models::InvoiceRegenerateParams, T::Hash[Symbol, T.anything]),
          id: String,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::InvoiceRegenerateResponse)
      end
      def regenerate(params, id:, request_options: {}); end

      sig do
        params(
          params: T.any(Metronome::Models::InvoiceVoidParams, T::Hash[Symbol, T.anything]),
          id: String,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::InvoiceVoidResponse)
      end
      def void(params, id:, request_options: {}); end

      sig { params(client: Metronome::Client).void }
      def initialize(client:); end
    end
  end
end
