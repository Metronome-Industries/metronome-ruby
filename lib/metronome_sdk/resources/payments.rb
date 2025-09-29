# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class Payments
      # Fetch all payment attempts for the given invoice.
      #
      # @overload list(customer_id:, invoice_id:, limit: nil, next_page: nil, statuses: nil, request_options: {})
      #
      # @param customer_id [String]
      #
      # @param invoice_id [String]
      #
      # @param limit [Integer] The maximum number of payments to return. Defaults to 25.
      #
      # @param next_page [String] The next page token from a previous response.
      #
      # @param statuses [Array<Symbol, MetronomeSDK::Models::PaymentListParams::Status>]
      #
      # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [MetronomeSDK::Internal::BodyCursorPage<MetronomeSDK::Models::PaymentListResponse>]
      #
      # @see MetronomeSDK::Models::PaymentListParams
      def list(params)
        parsed, options = MetronomeSDK::PaymentListParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/payments/list",
          body: parsed,
          page: MetronomeSDK::Internal::BodyCursorPage,
          model: MetronomeSDK::Models::PaymentListResponse,
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
