# typed: strong

module Metronome
  module Resources
    class Invoices
      sig do
        params(
          id: String,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::InvoiceRegenerateResponse)
      end
      def regenerate(id:, request_options: {}); end

      sig do
        params(
          id: String,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::InvoiceVoidResponse)
      end
      def void(id:, request_options: {}); end

      sig { params(client: Metronome::Client).void }
      def initialize(client:); end
    end
  end
end
